#!/usr/bin/env python3
"""Пересобирает массив CATEGORIES в js/data.js из базы.

js/data.js — каталог, из которого главная, directory.html и compare.html
рисуют карточки (описание, плюсы, минусы, цену). Он был написан руками и
отстал от базы: после аудита 2026-10 там оставались Opus 4.8, «Grok 1T»,
снятые инструменты и старые названия. Теперь источник — английские
карточки из tools (published = true).

Метаданные категорий (id, title, icon, color) и всё, что идёт в файле после
массива (ALL_TOOLS, функции отрисовки), не трогаются. Порядок инструментов
внутри категории сохраняется; новые идут в конец категории.

Каждому инструменту добавляется slug — по нему строятся ссылки на страницы
/tools/<slug>.html. Раньше slug выводили из названия, и переименование
(«Devin Desktop (Windsurf)») ломало ссылку.

    python3 scripts/gen_data_js.py
"""
import json, os, re, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import run_sql

PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'js', 'data.js')


def to_slug(name):
    return re.sub(r'^-+|-+$', '', re.sub(r'[^a-z0-9]+', '-', name.lower()))


def aff(url):
    return url + ('&' if '?' in url else '?') + 'ref=aiportal'


def js(v):
    return json.dumps(v, ensure_ascii=False)


def main():
    src = open(PATH, encoding='utf-8').read()
    end = src.index('\n];\n') + len('\n];\n')
    head, rest = src[:end], src[end:]
    cats = re.findall(r"id: '([^']+)', title: '([^']+)', icon: '([^']+)', color: '([^']+)'", head)
    # Старый порядок внутри категории — по slug, выведенному из старого имени.
    old_order = {}
    for cid, block in zip([c[0] for c in cats], re.split(r"\n  \{\n    id: '", head)[1:]):
        old_order[cid] = [to_slug(n) for n in re.findall(r"name:'((?:[^'\\]|\\.)*)'", block)]

    run_sql.load_env()
    conn = run_sql.connect()
    cur = conn.cursor()
    cur.execute("SELECT slug, name, category, url, badge, users, best_for, description, pros, cons "
                "FROM tools WHERE lang = 'en' AND published ORDER BY slug")
    rows = [dict(zip(('slug', 'name', 'category', 'url', 'badge', 'users', 'best_for', 'description', 'pros', 'cons'), r))
            for r in cur.fetchall()]
    conn.close()

    known = {c[0] for c in cats}
    lost = [r['slug'] for r in rows if r['category'] not in known]
    if lost:
        sys.exit(f'Категории нет в data.js: {lost}')

    out = ['const CATEGORIES = [']
    for cid, title, icon, color in cats:
        tools = [r for r in rows if r['category'] == cid]
        order = old_order.get(cid, [])
        # старое имя могло давать другой slug (Recraft AI → recraft-ai): сверяем и по имени, и по slug
        def pos(r):
            for key in (r['slug'], to_slug(r['name'])):
                if key in order:
                    return order.index(key)
            return len(order) + 1
        tools.sort(key=lambda r: (pos(r), r['name'].lower()))
        out.append('  {')
        out.append(f"    id: '{cid}', title: '{title}', icon: '{icon}', color: '{color}',")
        out.append('    tools: [')
        for r in tools:
            out.append(
                f"      {{ name:{js(r['name'])}, slug:{js(r['slug'])}, desc:{js(r['description'] or '')}, "
                f"url:{js(r['url'])}, aff:{js(aff(r['url']))}, badge:{js(r['badge'] or 'freemium')}, "
                f"bestFor:{js(r['best_for'] or '')}, users:{js(r['users'] or '')},\n"
                f"        pros:{js((r['pros'] or [])[:4])},\n"
                f"        cons:{js((r['cons'] or [])[:3])} }},")
        out.append('    ]')
        out.append('  },')
    out.append('];\n')
    open(PATH, 'w', encoding='utf-8').write('\n'.join(out) + rest)
    print(f'js/data.js: {len(rows)} инструментов в {len(cats)} категориях')


if __name__ == '__main__':
    main()
