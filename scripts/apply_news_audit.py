#!/usr/bin/env python3
"""Исправляет опубликованные новости по результатам проверки фактов.

Аудит (scripts/audit/news*.json) сверил каждую новость с первоисточниками и
записал неверные утверждения. Здесь:
  fabricated   — новость снимается с публикации на всех языках;
  minor_errors — английский текст переписывается по находкам, затем title,
                 summary и body заново переводятся на 7 языков;
  verified     — не трогаем;
  unverifiable — тоже не трогаем: аудитор не достал источник (403, кончилась
                 квота поиска), это не доказательство ошибки. Нужна перепроверка.

Тексты берутся прямо из базы (доступ из .env, как у run_sql.py).
Результат — SQL-файл; применять через run_sql.py.

    python3 scripts/apply_news_audit.py [--only=slug,slug] [--dry-run]
"""
import concurrent.futures, datetime, glob, json, os, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from llm import ask, cost_report, REWRITE, TRANSLATE
from translate_missing_news import LANG_NAME, PROMPT_FULL, q
import run_sql

ROOT = os.path.dirname(os.path.abspath(__file__))
LANGS = ['es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

EN_RULES = """You are correcting a published news article on AItoolFit, an AI tools site.

A fact-checker compared the article with primary sources and listed what is
wrong. Rewrite the article so every statement is true.

Hard rules:
1. Fix each wrong claim using the checker's correct value.
2. If the checker says a claim is unverified, unsourced or not found in the
   primary source, DELETE it. Do not soften it into "reportedly".
3. If the headline rests on a wrong or unverified claim, write a new headline
   from what is confirmed.
4. Invent nothing. Do not add facts that are not in the article or the checker
   notes. You may add a confirmed fact from the notes if the article is
   misleading without it.
5. Keep the HTML structure of the body: same kind of tags (<p>, <h2>, <strong>),
   no markdown. Remove any stray non-HTML leftovers.
6. Keep length roughly the same. Neutral news register.

Return ONLY a JSON object:
{"title": "...", "summary": "...", "body": "...",
 "changed": ["short description of each fix"]}"""


def load_audit(only):
    # Более поздний файл аудита перекрывает ранний по той же новости
    # (news5 — ручная перепроверка того, что news1 не смог проверить).
    by_slug = {}
    for f in sorted(glob.glob(os.path.join(ROOT, 'audit', 'news[0-9]*.json'))):
        for a in json.load(open(f)):
            by_slug[a['slug']] = a
    items = list(by_slug.values())
    if only:
        items = [a for a in items if a['slug'] in only]
    return items


def rows_for(cur, slug):
    cur.execute("SELECT lang, title, summary, body FROM news WHERE slug = %s AND published", (slug,))
    return {r[0]: {'title': r[1], 'summary': r[2], 'body': r[3]} for r in cur.fetchall()}


def fix_one(client, a, rows):
    en = rows['en']
    new = ask(client, REWRITE, EN_RULES,
              'ARTICLE:\n' + json.dumps(en, ensure_ascii=False)
              + '\n\nFACT-CHECK:\n' + json.dumps(a, ensure_ascii=False))
    stmts = [upd(a['slug'], 'en', new)]
    failed = []
    for lang in LANGS:
        if lang not in rows:
            continue
        try:
            tr = ask(client, TRANSLATE, None,
                     PROMPT_FULL.format(language=LANG_NAME[lang], title=new['title'],
                                        summary=new['summary'], body=new['body']),
                     think=False)
            stmts.append(upd(a['slug'], lang, tr))
        except Exception as e:
            failed.append(f'{lang}: {e}')
    return new, stmts, failed


def upd(slug, lang, d):
    return (f"UPDATE news SET title = {q(d['title'])}, summary = {q(d['summary'])}, body = {q(d['body'])}\n"
            f" WHERE slug = '{slug}' AND lang = '{lang}';\n")


def main():
    only = None
    for a in sys.argv[1:]:
        if a.startswith('--only='):
            only = set(a.split('=', 1)[1].split(','))
    audit = load_audit(only)
    fab = [a for a in audit if a['status'] == 'fabricated']
    fix = [a for a in audit if a['status'] == 'minor_errors']
    skip = [a for a in audit if a['status'] == 'unverifiable']
    print(f'снять: {len(fab)} | исправить: {len(fix)} | перепроверить вручную: {len(skip)}')
    if '--dry-run' in sys.argv:
        for a in fab + fix + skip:
            print(f"  {a['status']:13} {a['slug']}")
        return

    import anthropic
    client = anthropic.Anthropic()
    run_sql.load_env()
    conn = run_sql.connect()
    cur = conn.cursor()
    data = {a['slug']: rows_for(cur, a['slug']) for a in fix}
    conn.close()

    sql, review, failed = [], [], []
    with concurrent.futures.ThreadPoolExecutor(4) as pool:
        futs = {}
        for a in fix:
            if 'en' not in data[a['slug']]:
                failed.append((a['slug'], 'нет опубликованной английской строки'))
                continue
            futs[pool.submit(fix_one, client, a, data[a['slug']])] = a
        for i, fut in enumerate(concurrent.futures.as_completed(futs), 1):
            a = futs[fut]
            try:
                new, stmts, errs = fut.result()
            except Exception as e:
                failed.append((a['slug'], f'EN: {e}'))
                print(f'[{i}/{len(futs)}] {a["slug"]}: ✗ {e}', flush=True)
                continue
            sql.append(f"-- {a['slug']}: " + '; '.join(new.get('changed') or [])[:600] + '\n' + ''.join(stmts))
            failed += [(a['slug'], e) for e in errs]
            review.append({'slug': a['slug'], 'before': data[a['slug']]['en'], 'after': new})
            print(f'[{i}/{len(futs)}] {a["slug"]}: EN + {len(stmts) - 1} языков', flush=True)

    stamp = datetime.date.today().isoformat()
    head = f"-- Исправление новостей по проверке фактов (scripts/audit/news*.json), {stamp}.\n"
    head += "-- Было / стало: scripts/audit/news_fixes_" + stamp + "_review.json. Идемпотентно.\n"
    for a in fab:
        head += (f"\n-- {a['slug']}: {a['notes'][:300]}\n"
                 f"UPDATE news SET published = false WHERE slug = '{a['slug']}';\n")
    if skip:
        head += '\n-- Не тронуты, источник недоступен аудитору: ' + ', '.join(a['slug'] for a in skip) + '\n'
    out = os.path.join(ROOT, f'news_fixes_{stamp}.sql')
    open(out, 'w', encoding='utf-8').write(head + '\n' + '\n'.join(sorted(sql)))
    json.dump(review, open(os.path.join(ROOT, 'audit', f'news_fixes_{stamp}_review.json'), 'w'),
              ensure_ascii=False, indent=1)
    print(f'\nзаписано: {out}\nисправлено: {len(review)} | снято: {len(fab)} | ошибок: {len(failed)}')
    for f in failed:
        print('  ', f)
    print('\nрасход API:\n' + cost_report())


if __name__ == '__main__':
    main()
