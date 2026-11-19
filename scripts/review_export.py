#!/usr/bin/env python3
"""Выгрузка карточек для сверки с сайтами вендоров (только чтение базы).

    python3 scripts/review_export.py <папка> --index
        → <папка>/tools.json: все опубликованные инструменты (EN): slug, name, url,
          badge, users, last_updated, description, description_long.

    python3 scripts/review_export.py <папка> slug1 slug2 …
        → <папка>/cards/src_<slug>.json       {lang: {поля карточки}}
          <папка>/cards/src_cmp_<slug>.json   {comparison_slug: {lang: {поля}}}
          <папка>/cards/src_seo_<slug>.json   [{file, lang, title, meta}] — записи
          из scripts/seo_*.json (на сайте берётся первый файл, где есть slug:
          seo_missing_tools.json → seo_all_languages.json → seo_fr_pt.json).

Правки потом пишутся в <папка>/patches/ (см. .claude/commands/review-cards.md)
и превращаются в SQL через scripts/card_patches_sql.py.
"""
import datetime, decimal, json, os, sys

sys.path.insert(0, os.path.dirname(__file__))
from run_sql import load_env, connect, ROOT  # noqa: E402

LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
TOOL_FIELDS = ['name', 'url', 'badge', 'users', 'best_for', 'description', 'description_long',
               'pros', 'cons', 'choose_if', 'faq', 'also_consider']
CMP_FIELDS = ['tool_a', 'tool_b', 'tool_a_slug', 'tool_b_slug', 'title', 'meta_desc', 'intro',
              'table_data', 'best_a', 'best_b', 'verdict_a', 'verdict_b', 'choose_a', 'choose_b', 'faq']
SEO_FILES = ['seo_missing_tools.json', 'seo_all_languages.json', 'seo_fr_pt.json']


def plain(v):
    if isinstance(v, (datetime.date, datetime.datetime)):
        return v.isoformat()
    if isinstance(v, decimal.Decimal):
        return float(v)
    return v


def rows(cur, sql, args=()):
    cur.execute(sql, args)
    cols = [c[0] for c in cur.description]
    return [{c: plain(v) for c, v in zip(cols, r)} for r in cur.fetchall()]


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    out, args = sys.argv[1], sys.argv[2:]
    os.makedirs(out, exist_ok=True)
    load_env()
    conn = connect()
    conn.set_session(readonly=True)
    cur = conn.cursor()

    if args == ['--index']:
        data = rows(cur, "SELECT slug, name, url, badge, users, last_updated, description, description_long "
                         "FROM tools WHERE lang = 'en' AND published ORDER BY slug")
        json.dump(data, open(os.path.join(out, 'tools.json'), 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
        print(f'{len(data)} инструментов → {out}/tools.json')
        return

    cards = os.path.join(out, 'cards')
    os.makedirs(cards, exist_ok=True)
    cur.execute("SELECT column_name FROM information_schema.columns WHERE table_name = 'comparisons'")
    cmp_cols = {r[0] for r in cur.fetchall()}
    cmp_fields = [f for f in CMP_FIELDS if f in cmp_cols]
    seo = {f: json.load(open(os.path.join(ROOT, 'scripts', f), encoding='utf-8')) for f in SEO_FILES}

    for slug in args:
        card = {r['lang']: {k: r[k] for k in TOOL_FIELDS}
                for r in rows(cur, f"SELECT lang, {', '.join(TOOL_FIELDS)} FROM tools WHERE slug = %s", (slug,))}
        if not card:
            print(f'  ! {slug}: нет в базе')
            continue
        json.dump(card, open(os.path.join(cards, f'src_{slug}.json'), 'w', encoding='utf-8'), ensure_ascii=False, indent=1)

        cmp = {}
        for r in rows(cur, f"SELECT slug, lang, {', '.join(cmp_fields)} FROM comparisons "
                           "WHERE tool_a_slug = %s OR tool_b_slug = %s ORDER BY slug, lang", (slug, slug)):
            cmp.setdefault(r.pop('slug'), {})[r.pop('lang')] = r
        json.dump(cmp, open(os.path.join(cards, f'src_cmp_{slug}.json'), 'w', encoding='utf-8'), ensure_ascii=False, indent=1)

        entries = []
        for lang in LANGS:
            for f in SEO_FILES:
                hit = next((e for e in seo[f].get(lang, []) if e.get('slug') == slug), None)
                if hit:
                    entries.append({'file': f, 'lang': lang, 'title': hit.get('title'), 'meta': hit.get('meta')})
                    break
        json.dump(entries, open(os.path.join(cards, f'src_seo_{slug}.json'), 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
        print(f'  {slug}: {len(card)} яз., сравнений {len(cmp)}, SEO {len(entries)}')


if __name__ == '__main__':
    main()
