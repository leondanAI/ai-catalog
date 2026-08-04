#!/usr/bin/env python3
"""
Найти опубликованные новости, у которых title в языковой версии совпадает
с английским (то есть перевод не делался), перевести и выдать UPDATE-SQL.

В отличие от translate_news.py, который заточен под конкретный batch и делает
INSERT, этот скрипт работает с УЖЕ существующими строками и делает UPDATE —
строки на всех языках есть, но в них лежит английский текст.

Запуск:
    export ANTHROPIC_API_KEY=...
    python3 scripts/translate_missing_news.py            # найти и перевести всё
    python3 scripts/translate_missing_news.py --dry-run  # только показать список

Результат: scripts/news_translations_<дата>.sql — прогнать в Supabase SQL Editor.
"""
import json, os, re, sys, urllib.request, datetime

SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'   # read-only publishable
LANGS = ['es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

LANG_NAME = {
    'es': 'Spanish', 'de': 'German', 'ru': 'Russian', 'ua': 'Ukrainian',
    'he': 'Hebrew', 'fr': 'French', 'pt': 'Brazilian Portuguese',
}

PROMPT = """Translate this AI-industry news headline and summary into {language}.

Rules:
- Keep every number, version, date, price and percentage exactly as in the original.
- Do NOT translate product, company or model names (Claude Opus 4.7, GPT-5.5 Instant,
  Kling v3.5, Seedance 2.0, Figma, Notion, etc.) — leave them in Latin script.
- Natural, factual news register. No hype, no added claims, nothing invented.
- The headline must read like a news headline in {language}, not a literal word-by-word calque.

Return ONLY valid JSON: {{"title": "...", "summary": "..."}}

HEADLINE: {title}
SUMMARY: {summary}"""


def sb_get(path):
    req = urllib.request.Request(f'{SB_URL}/rest/v1/{path}',
                                 headers={'apikey': SB_KEY, 'Authorization': f'Bearer {SB_KEY}'})
    return json.load(urllib.request.urlopen(req))


def find_untranslated():
    rows = sb_get('news?published=eq.true&lang=in.(en,%s)&select=slug,lang,title,summary'
                  % ','.join(LANGS))
    by = {}
    for r in rows:
        by.setdefault(r['slug'], {})[r['lang']] = r
    out = []
    for slug, per in sorted(by.items()):
        en = per.get('en')
        if not en:
            continue
        langs = [l for l in LANGS
                 if l in per and (per[l]['title'] or '').strip() == (en['title'] or '').strip()]
        if langs:
            out.append((slug, en, langs))
    return out


def sql_quote(s):
    """Dollar-quoting — в текстах есть апострофы (l'IA, don't, тощо)."""
    tag = '$t$'
    while tag in (s or ''):
        tag = '$t%d$' % len(tag)
    return f"{tag}{s}{tag}"


def main():
    dry = '--dry-run' in sys.argv
    items = find_untranslated()
    total = sum(len(l) for _, _, l in items)
    print(f'Новостей без перевода: {len(items)}  |  строк к обновлению: {total}\n')
    for slug, _, langs in items:
        print(f'  {slug}  →  {", ".join(langs)}')
    if dry or not items:
        return

    try:
        import anthropic
    except ImportError:
        sys.exit('\nНужен пакет anthropic:  pip3 install anthropic')
    if not os.environ.get('ANTHROPIC_API_KEY'):
        sys.exit('\nНе задан ANTHROPIC_API_KEY')
    client = anthropic.Anthropic()

    stmts, done, failed = [], 0, []
    for slug, en, langs in items:
        print(f'\n{slug}')
        for lang in langs:
            try:
                msg = client.messages.create(
                    model='claude-sonnet-5',
                    max_tokens=1500,
                    messages=[{'role': 'user', 'content': PROMPT.format(
                        language=LANG_NAME[lang], title=en['title'], summary=en['summary'])}],
                )
                txt = msg.content[0].text.strip()
                txt = re.sub(r'^```(?:json)?|```$', '', txt, flags=re.M).strip()
                data = json.loads(txt)
                stmts.append(
                    'UPDATE news SET title = {t}, summary = {s}\n'
                    " WHERE slug = '{slug}' AND lang = '{lang}';".format(
                        t=sql_quote(data['title']), s=sql_quote(data['summary']),
                        slug=slug, lang=lang))
                done += 1
                print(f'  {lang} ✓')
            except Exception as e:
                failed.append((slug, lang, str(e)[:90]))
                print(f'  {lang} ✗ {e}')

    stamp = datetime.date.today().isoformat()
    out = os.path.join(os.path.dirname(__file__), f'news_translations_{stamp}.sql')
    header = (f'-- Переводы title/summary для новостей, у которых языковые строки\n'
              f'-- остались английскими. Сгенерировано {stamp}.\n'
              f'-- Строк: {done}. Идемпотентно — UPDATE по slug+lang.\n\n')
    with open(out, 'w', encoding='utf-8') as f:
        f.write(header + '\n\n'.join(stmts) + '\n')
    print(f'\nГотово — {done} UPDATE записано в {out}')
    if failed:
        print(f'Не переведено: {len(failed)}')
        for s, l, e in failed:
            print(f'  {s} [{l}]: {e}')


if __name__ == '__main__':
    main()
