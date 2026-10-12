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
import sbread

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

    rows = sbread.get('tools?lang=eq.en&published=eq.true&order=slug.asc'
                      '&select=slug,name,category,url,badge,users,best_for,description,pros,cons')

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
    write_translations({r['slug'] for r in rows})


TR_PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'js', 'translations.js')


def write_translations(slugs):
    """js/translations.js: описание и best_for инструментов на 7 языках из базы.

    Раньше файл писался руками, не обновлялся с весны и местами был перепутан
    (у Claude по-немецки стояло описание Uptrends.ai). Каталог, главная и
    сравнение на неанглийских версиях брали описания отсюда.
    """
    tr = {}
    for r in sbread.get('tools?published=eq.true&lang=neq.en&order=slug.asc,lang.asc&select=slug,lang,description,best_for'):
        if r['slug'] in slugs:
            tr.setdefault(r['slug'], {})[r['lang']] = {'desc': r['description'] or '', 'bestFor': r['best_for'] or ''}
    body = ',\n'.join(f'  {js(s)}: {js(v)}' for s, v in sorted(tr.items()))
    open(TR_PATH, 'w', encoding='utf-8').write(
        '// Описание и «лучше всего для» инструментов на 7 языках.\n'
        '// СГЕНЕРИРОВАНО scripts/gen_data_js.py из таблицы tools — руками не править.\n'
        '// Без перевода — английский текст из js/data.js.\n\n'
        f'const TOOL_I18N = {{\n{body}\n}};\n\n'
        'function _toolI18n(tool) {\n'
        "  const lang = typeof I18N !== 'undefined' ? I18N.lang : 'en';\n"
        "  if (lang === 'en') return null;\n"
        '  const t = TOOL_I18N[tool.slug];\n'
        '  return t && t[lang] ? t[lang] : null;\n'
        '}\n\n'
        '// helper used by renderToolCard in data.js\n'
        'function getToolDesc(tool) {\n'
        '  const t = _toolI18n(tool);\n'
        '  return (t && t.desc) || tool.desc;\n'
        '}\n\n'
        'function getToolBestFor(tool) {\n'
        '  const t = _toolI18n(tool);\n'
        '  return (t && t.bestFor) || tool.bestFor;\n'
        '}\n')
    print(f'js/translations.js: {len(tr)} инструментов × {len({l for v in tr.values() for l in v})} языков')
    bust_cache()


def bust_cache():
    """Версия по содержимому в адресах data.js и translations.js на страницах.

    GitHub Pages разрешает кэшировать файлы 10 минут, и браузер держал старые
    тексты после обновления. Новый ?v= — новый адрес, файл грузится сразу.
    Языковые копии страниц generate-lang-pages.py делает из этих же файлов.
    """
    import hashlib
    root = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..')
    ver = {name: hashlib.md5(open(os.path.join(root, 'js', name), 'rb').read()).hexdigest()[:8]
           for name in ('data.js', 'translations.js')}
    for page in ('index.html', 'directory.html', 'compare.html'):
        p = os.path.join(root, page)
        t = open(p, encoding='utf-8').read()
        for name, v in ver.items():
            t = re.sub(rf'(src="/?js/{re.escape(name)})(\?v=[0-9a-f]+)?"', rf'\1?v={v}"', t)
        open(p, 'w', encoding='utf-8').write(t)
    print('версии файлов в страницах:', ver)


if __name__ == '__main__':
    main()
