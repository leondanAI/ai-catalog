#!/usr/bin/env python3
"""Страницы категорий «Лучшие нейросети для …» (/best/<slug>.html): тексты → таблица categories.

Тексты лежат в scripts/drafts/categories/<lang>.json: {slug: {h1, meta_desc, intro}}.
Список инструментов, тарифы и вопросы на странице собираются из tools при каждой
сборке (generate-category-pages.py), поэтому в тексте категории нет цен, версий,
дат и чисел — проверка ниже это не пропустит.

    python3 scripts/categories.py sql   → scripts/categories_<дата>.sql для run_sql.py
"""
import datetime
import json
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
DRAFTS = os.path.join(HERE, 'drafts', 'categories')
STALE = re.compile(r'[$€£₪]|\b\d+[.,]\d+\b|\b20\d\d\b|\b\d+\s?(M|K|B)\+|\b\d+\s?%|\bv\d', re.I)
# порядок — как в каталоге (generate-static-content.py CATEGORIES)
ORDER = ['chat', 'agents', 'code', 'writing', 'marketing', 'image', 'video', 'design', 'voice',
         'productivity', 'research', 'data', 'nocode', 'education', 'presentations', 'business-investment']

CREATE = """CREATE TABLE IF NOT EXISTS categories (
  slug text NOT NULL,
  lang text NOT NULL,
  sort int NOT NULL DEFAULT 0,
  h1 text NOT NULL,
  meta_desc text NOT NULL,
  intro text NOT NULL,
  published boolean NOT NULL DEFAULT true,
  last_updated date NOT NULL DEFAULT current_date,
  PRIMARY KEY (slug, lang)
);
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "public read published categories" ON categories;
CREATE POLICY "public read published categories" ON categories FOR SELECT USING (published);
GRANT SELECT ON categories TO anon, authenticated;
NOTIFY pgrst, 'reload schema';
"""


def load(lang):
    return json.load(open(os.path.join(DRAFTS, f'{lang}.json'), encoding='utf-8'))


def check(d):
    errs = []
    for k in ('h1', 'meta_desc', 'intro'):
        if not d.get(k):
            errs.append(f'нет {k}')
        elif STALE.search(d[k]):
            errs.append(f'{k}: цена/версия/дата/число «{STALE.search(d[k]).group(0)}»')
    if d.get('meta_desc') and not 110 <= len(d['meta_desc']) <= 175:
        errs.append(f'meta_desc {len(d["meta_desc"])} символов')
    return errs


def sql():
    from translate_missing_news import q
    data = {l: load(l) for l in LANGS}
    out = ['-- Страницы категорий: таблица и тексты из scripts/drafts/categories. Идемпотентно.\n\n', CREATE, '\n',
           'DELETE FROM categories;\n']
    problems = []
    for i, slug in enumerate(ORDER):
        for lang in LANGS:
            d = data[lang].get(slug)
            if not d:
                problems.append(f'{lang}/{slug}: нет текста')
                continue
            problems += [f'{lang}/{slug}: {e}' for e in check(d)]
            out.append('INSERT INTO categories (slug, lang, sort, h1, meta_desc, intro)\n'
                       f"VALUES ({q(slug)}, {q(lang)}, {i}, {q(d['h1'])}, {q(d['meta_desc'])}, {q(d['intro'])});\n")
    if problems:
        sys.exit('Тексты категорий не прошли проверку:\n  ' + '\n  '.join(problems))
    p = os.path.join(HERE, f'categories_{datetime.date.today()}.sql')
    open(p, 'w', encoding='utf-8').write(''.join(out))
    print(f'  {os.path.relpath(p, os.path.join(HERE, ".."))}')


if __name__ == '__main__':
    if sys.argv[1:] == ['sql']:
        sql()
    else:
        sys.exit(__doc__)
