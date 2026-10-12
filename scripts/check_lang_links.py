#!/usr/bin/env python3
"""Ловит ссылки, уводящие посетителя с языковой версии на английскую.

С мая по октябрь 2026 лента новостей во всех 7 языках вела на английские
статьи (JS собирал /news/<slug>.html без языка), а подвал 900+ страниц —
на английские privacy/terms/contact. Проверка «страница существует» этого
не видит: ссылка рабочая, просто не на тот язык.

Две проверки:
  1. Статика: в /{lang}/**/*.html ссылки на английские страницы сайта,
     кроме переключателя языков (пункт «English») и hreflang.
  2. JavaScript в шаблонах: адреса /news/${…}, /tools/${…}, /compare/${…},
     собранные без префикса языка.

Выход с кодом 1, если что-то найдено — sync.py останавливается.

    python3 scripts/check_lang_links.py
"""
import glob, os, re, sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
LANGS = ['es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
EN_SECTIONS = r'(?:tools/|compare/|news/|directory\.html|news\.html|compare\.html|newsletter\.html|privacy\.html|terms\.html|contact\.html|$)'
LINK = re.compile(r'<a\b[^>]*\bhref="(/' + EN_SECTIONS + r'[^"#]*)"[^>]*>(.{0,80}?)</a>', re.S)
SWITCHER = ('English', '&#127468;&#127463;', '🇬🇧')
# Шаблон адреса в JS без языка: `/news/${...}` сразу после открывающей кавычки.
JS_BARE = re.compile(r'[`\'"]/(news|tools|compare)/\$\{')


def static_issues():
    found = {}
    for lang in LANGS:
        for path in glob.glob(os.path.join(ROOT, lang, '**', '*.html'), recursive=True):
            text = open(path, encoding='utf-8', errors='ignore').read()
            for href, label in LINK.findall(text):
                if any(s in label for s in SWITCHER):
                    continue
                rel = os.path.relpath(path, ROOT)
                found.setdefault(href, []).append(rel)
    return found


def js_issues():
    found = []
    files = [os.path.join(ROOT, f) for f in ('index.html', 'news.html', 'directory.html', 'compare.html', 'news-article.html')]
    files += glob.glob(os.path.join(ROOT, 'js', '*.js'))
    for path in files:
        if not os.path.exists(path):
            continue
        for n, line in enumerate(open(path, encoding='utf-8', errors='ignore'), 1):
            # `lang === 'en' ? '/tools/${…}' : '/${lang}/tools/${…}'` — правильная развилка.
            if JS_BARE.search(line) and not re.search(r"""=== ?['"]en['"] ?\?""", line):
                found.append(f'{os.path.relpath(path, ROOT)}:{n}: {line.strip()[:110]}')
    return found


def main():
    st, js = static_issues(), js_issues()
    if not st and not js:
        print('Ссылки на английскую версию из языковых страниц: не найдено.')
        return
    for href, pages in sorted(st.items(), key=lambda x: -len(x[1])):
        print(f'  {href}  ← {len(pages)} стр., напр. {pages[0]}')
    for line in js:
        print(f'  JS без языка: {line}')
    sys.exit(f'Найдено: {sum(len(p) for p in st.values())} ссылок в статике, {len(js)} в JS.')


if __name__ == '__main__':
    main()
