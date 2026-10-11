#!/usr/bin/env python3
"""Пересобирает <title> и meta description страниц инструментов на 8 языках.

Заголовки в seo_*.json писались один раз и с тех пор не обновлялись: после
аудита 2026-10 карточки исправлены, а в выдаче Google по-прежнему висели
SWE-1.5, «Le Chat Pro $14.99» и старые названия. Источник фактов здесь —
только текущая английская карточка из базы (name, description, best_for,
badge, users). Ничего сверх неё модель добавлять не должна.

Результат пишется в seo_all_languages.json — генераторы читают его первым.
Записи остальных инструментов не трогаются.

    python3 scripts/gen_seo_meta.py [--only=slug,slug]
"""
import concurrent.futures, json, os, re, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from llm import ask, cost_report, TRANSLATE
import run_sql

ROOT = os.path.dirname(os.path.abspath(__file__))
PATH = os.path.join(ROOT, 'seo_all_languages.json')
LANGS = {'en': 'English', 'es': 'Spanish', 'de': 'German', 'ru': 'Russian', 'ua': 'Ukrainian',
         'he': 'Hebrew', 'fr': 'French', 'pt': 'Brazilian Portuguese'}

RULES = """Write the SEO <title> and meta description for this AI tool's review page
on AItoolFit, in each of these languages: {langs}.

Facts: use ONLY the card below. Do not add versions, prices, user counts or
features that are not in it. If the card has no price, do not mention one.

title:
- 40-60 characters. Starts with the tool name exactly as given (Latin script).
- Includes "2026". No emojis. Do not add "AItoolFit".
- Natural for a searcher in that language (e.g. "review", "обзор", "avis").
meta:
- 120-150 characters, never more than 155 (count them). One or two factual sentences: what it is, the most
  distinctive capability, the pricing model (free / freemium / paid) and the
  price only if the card states it.
keyword: the main search phrase in that language, 2-4 words.

Keep product, model and company names in Latin script. Use the target
language's normal number format but never change a value.

Return ONLY JSON: {{"en": {{"title": "...", "meta": "...", "keyword": "..."}}, ...}}
with every language code from the list. Escape any double quote inside a value
as \\" (including Hebrew abbreviations such as ארה\\"ב)."""


def ok(e, card):
    t, m = (e or {}).get('title', ''), (e or {}).get('meta', '')
    return bool(t and m) and t.startswith(card['name'].split(' (')[0]) and len(t) <= 65 and len(m) <= 160


SHORTEN = """Shorten each text to at most {limit} characters. The current length is
given next to each one. Keep the facts, the language and the tool name; drop
the least important detail. Return ONLY JSON {{"<key>": "<shortened text>", ...}}.
Escape any double quote inside a value as \\"."""


def shorten(client, texts, limit):
    """Модель не считает символы сама; с указанной длиной сокращает точно."""
    payload = {k: f'[{len(v)} chars] {v}' for k, v in texts.items()}
    out = ask(client, TRANSLATE, SHORTEN.format(limit=limit), json.dumps(payload, ensure_ascii=False), think=False)
    return {k: re.sub(r'^\[\d+ chars\]\s*', '', v) for k, v in out.items() if k in texts}


def build(client, card):
    """Генерация, затем до трёх проходов сокращения для слишком длинных
    title/meta (генератор режет meta длиннее 160 символов многоточием)."""
    out = ask(client, TRANSLATE, RULES.format(langs=', '.join(f'{k} ({v})' for k, v in LANGS.items())),
              'CARD:\n' + json.dumps(card, ensure_ascii=False, default=str), think=False)
    out = {l: dict(out.get(l) or {}) for l in LANGS}
    for _ in range(3):
        long_m = {l: e['meta'] for l, e in out.items() if len(e.get('meta', '')) > 155}
        long_t = {l: e['title'] for l, e in out.items() if len(e.get('title', '')) > 62}
        if not long_m and not long_t:
            break
        if long_m:
            for l, v in shorten(client, long_m, 150).items():
                out[l]['meta'] = v
        if long_t:
            for l, v in shorten(client, long_t, 60).items():
                out[l]['title'] = v
    good = {l: e for l, e in out.items() if ok(e, card)}
    return good, [l for l in LANGS if l not in good]


def main():
    only = None
    for a in sys.argv[1:]:
        if a.startswith('--only='):
            only = set(a.split('=', 1)[1].split(','))
    run_sql.load_env()
    conn = run_sql.connect()
    cur = conn.cursor()
    cur.execute("SELECT slug, name, description, best_for, badge, users FROM tools "
                "WHERE lang = 'en' AND published ORDER BY slug")
    cards = [dict(zip(('slug', 'name', 'description', 'best_for', 'badge', 'users'), r)) for r in cur.fetchall()]
    conn.close()
    if only:
        cards = [c for c in cards if c['slug'] in only]
    print(f'инструментов: {len(cards)}')

    import anthropic
    client = anthropic.Anthropic()
    results, failed = {}, []
    with concurrent.futures.ThreadPoolExecutor(4) as pool:
        futs = {pool.submit(build, client, c): c for c in cards}
        for i, fut in enumerate(concurrent.futures.as_completed(futs), 1):
            c = futs[fut]
            try:
                out, bad = fut.result()
            except Exception as e:
                failed.append((c['slug'], str(e)[:100]))
                continue
            if bad:
                failed.append((c['slug'], f'не прошли проверку: {bad}'))
            results[c['slug']] = out
            if i % 10 == 0:
                print(f'  {i}/{len(cards)}', flush=True)

    data = json.load(open(PATH, encoding='utf-8'))
    changed = 0
    for lang in LANGS:
        entries = data.setdefault(lang, [])
        idx = {e['slug']: e for e in entries}
        for slug, per in results.items():
            if lang not in per:
                continue
            new = {'slug': slug, 'title': per[lang]['title'], 'meta': per[lang]['meta'],
                   'keyword': per[lang].get('keyword', '')}
            if slug in idx:
                idx[slug].update(new)
            else:
                entries.append(new)
            changed += 1
    # Формат файла — одна строка на запись, как он писался руками.
    with open(PATH, 'w', encoding='utf-8') as f:
        f.write('{\n' + ',\n'.join(
            f'  {json.dumps(lang)}: [\n' + ',\n'.join(
                '    { ' + ', '.join(f'{json.dumps(k)}: {json.dumps(v, ensure_ascii=False)}' for k, v in e.items()) + ' }'
                for e in entries) + '\n  ]'
            for lang, entries in data.items()) + '\n}\n')
    print(f'\nзаписей обновлено: {changed} в {os.path.relpath(PATH)}')
    for f in failed:
        print('  ✗', f)
    print('\nрасход API:\n' + cost_report())


if __name__ == '__main__':
    main()
