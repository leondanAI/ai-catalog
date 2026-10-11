#!/usr/bin/env python3
"""Переписывает блоки «Выбирай X, если…» и FAQ на страницах сравнений.

На странице сравнения всё, кроме этих блоков, генератор берёт из карточек
инструментов. А choose_a / choose_b / faq лежат в таблице comparisons и были
написаны один раз — после аудита 2026-10 там остались старые версии моделей,
цены и даже чужой продукт (nano-banana). Источник фактов здесь — только две
текущие английские карточки. Затем перевод на 7 языков.

Тексты берутся из базы, результат — SQL-файл; применять через run_sql.py.

    python3 scripts/regen_comparisons.py [--only=slug,slug]
"""
import concurrent.futures, datetime, json, os, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from llm import ask, cost_report, REWRITE, TRANSLATE
import run_sql

ROOT = os.path.dirname(os.path.abspath(__file__))
LANGS = {'es': 'Spanish', 'de': 'German', 'ru': 'Russian', 'ua': 'Ukrainian',
         'he': 'Hebrew', 'fr': 'French', 'pt': 'Brazilian Portuguese'}
CARD = ('name', 'description', 'description_long', 'pros', 'cons', 'badge', 'users', 'best_for')

EN_RULES = """You write the verdict blocks for a comparison page on AItoolFit, a site that
helps people pick the right AI tool for a task.

You get two tool cards (verified against vendor sites this month) and the old
blocks. The old blocks may contain outdated versions, prices or even describe
the wrong product. Rewrite them.

Rules:
1. Facts ONLY from the two cards. No model versions, prices, limits, user
   counts or features that are not in the cards. Where the old blocks state a
   fact the cards do not support, drop it.
2. choose_a: 4 reasons to pick tool A over B; choose_b: 4 for B over A. Each
   starts with "✅ You " and is one concrete sentence about a situation or task.
3. faq: keep the number of questions of the old faq (4-6 if it is empty).
   Shape {"q": "...", "a": "..."}; answers 1-3 sentences, specific, honest.
   At least one question is "Which is better for ...?" for a real task.
4. Use the tool names exactly as in the cards.
5. Plain text, no markdown.

Return ONLY JSON: {"choose_a": [...], "choose_b": [...], "faq": [...]}"""

TR_RULES = """Translate this JSON from English into {lang}. Same keys and structure.
Keep product, model, plan and company names in Latin script. Keep every number
and price exactly. Keep the leading "✅". Natural, factual tone. Escape any
double quote inside a value as \\" (including Hebrew abbreviations).
Return ONLY the JSON."""


def q(s):
    tag = 'c'
    while f'${tag}$' in s:
        tag += 'c'
    return f'${tag}${s}${tag}$'


def upd(slug, lang, d):
    return (f"UPDATE comparisons SET choose_a = {q(json.dumps(d['choose_a'], ensure_ascii=False))},"
            f" choose_b = {q(json.dumps(d['choose_b'], ensure_ascii=False))},"
            f" faq = {q(json.dumps(d['faq'], ensure_ascii=False))}::jsonb\n"
            f" WHERE slug = '{slug}' AND lang = '{lang}';\n")


def valid(d):
    return (isinstance(d.get('choose_a'), list) and isinstance(d.get('choose_b'), list)
            and isinstance(d.get('faq'), list) and d['choose_a'] and d['choose_b']
            and all(isinstance(x, dict) and x.get('q') and x.get('a') for x in d['faq']))


def one(client, comp, a, b, langs):
    old = {'choose_a': comp['choose_a'], 'choose_b': comp['choose_b'], 'faq': comp['faq']}
    en = ask(client, REWRITE, EN_RULES,
             'TOOL A CARD:\n' + json.dumps(a, ensure_ascii=False, default=str)
             + '\n\nTOOL B CARD:\n' + json.dumps(b, ensure_ascii=False, default=str)
             + '\n\nOLD BLOCKS:\n' + json.dumps(old, ensure_ascii=False))
    if not valid(en):
        raise RuntimeError('EN: неверная структура ответа')
    out, errs = [upd(comp['slug'], 'en', en)], []
    for code in langs:
        try:
            tr = ask(client, TRANSLATE, TR_RULES.format(lang=LANGS[code]),
                     json.dumps(en, ensure_ascii=False), think=False)
            if not valid(tr):
                raise RuntimeError('неверная структура')
            out.append(upd(comp['slug'], code, tr))
        except Exception as e:
            errs.append(f'{code}: {e}')
    return en, out, errs


def main():
    only = None
    for a in sys.argv[1:]:
        if a.startswith('--only='):
            only = set(a.split('=', 1)[1].split(','))
    run_sql.load_env()
    conn = run_sql.connect()
    cur = conn.cursor()
    cur.execute(f"SELECT slug, {', '.join(CARD)} FROM tools WHERE lang = 'en' AND published")
    cards = {r[0]: dict(zip(CARD, r[1:])) for r in cur.fetchall()}
    cur.execute("SELECT slug, tool_a_slug, tool_b_slug, choose_a, choose_b, faq FROM comparisons WHERE lang = 'en'")
    comps = [dict(zip(('slug', 'a', 'b', 'choose_a', 'choose_b', 'faq'), r)) for r in cur.fetchall()]
    cur.execute("SELECT slug, lang FROM comparisons WHERE lang <> 'en'")
    have = {}
    for s, l in cur.fetchall():
        have.setdefault(s, []).append(l)
    conn.close()

    todo = [c for c in comps if c['a'] in cards and c['b'] in cards and (not only or c['slug'] in only)]
    skipped = [c['slug'] for c in comps if c not in todo and (not only or c['slug'] in only)]
    print(f'сравнений: {len(todo)} | пропущено (инструмент снят): {skipped}')

    import anthropic
    client = anthropic.Anthropic()
    sql, review, failed = [], [], []
    with concurrent.futures.ThreadPoolExecutor(4) as pool:
        futs = {pool.submit(one, client, c, cards[c['a']], cards[c['b']],
                            [l for l in LANGS if l in have.get(c['slug'], [])]): c for c in todo}
        for i, fut in enumerate(concurrent.futures.as_completed(futs), 1):
            c = futs[fut]
            try:
                en, stmts, errs = fut.result()
            except Exception as e:
                failed.append((c['slug'], str(e)[:120]))
                continue
            sql.append(f"-- {c['slug']}\n" + ''.join(stmts))
            failed += [(c['slug'], e) for e in errs]
            review.append({'slug': c['slug'], 'before': {k: c[k] for k in ('choose_a', 'choose_b', 'faq')}, 'after': en})
            if i % 10 == 0:
                print(f'  {i}/{len(todo)}', flush=True)

    stamp = datetime.date.today().isoformat()
    head = (f"-- Блоки «Выбирай X, если…» и FAQ сравнений, пересобраны из проверенных карточек, {stamp}.\n"
            f"-- Было / стало: scripts/audit/comparisons_{stamp}_review.json. Идемпотентно.\n\n")
    out = os.path.join(ROOT, f'comparisons_{stamp}.sql')
    open(out, 'w', encoding='utf-8').write(head + '\n'.join(sorted(sql)))
    json.dump(review, open(os.path.join(ROOT, 'audit', f'comparisons_{stamp}_review.json'), 'w'),
              ensure_ascii=False, indent=1)
    print(f'\nзаписано: {out}\nсравнений: {len(review)} | ошибок: {len(failed)}')
    for f in failed:
        print('  ✗', f)
    print('\nрасход API:\n' + cost_report())


if __name__ == '__main__':
    main()
