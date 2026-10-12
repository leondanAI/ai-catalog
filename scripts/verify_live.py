#!/usr/bin/env python3
"""Проверка живого сайта глазами посетителя, на всех 8 языках.

Страницы теперь печатаются целиком (без перерисовки в браузере), поэтому
достаточно скачать HTML и посмотреть, что в нём. Проверяется:
  - лента новостей и блок новостей на главной: ссылки ведут на свой язык,
    в странице нет обращений к базе/js/news.js;
  - для --news: статья открывается (200), язык страницы правильный, новость
    стоит в ленте и на главной (если среди трёх последних), есть обложка, если
    она задана;
  - для --tools: страница инструмента на каждом языке открывается и на нужном языке.

Запускать после выкладки (GitHub Pages обновляется 1-2 минуты):
    python3 scripts/verify_live.py --news=slug1,slug2 --tools=claude,cursor
Код выхода 1, если что-то не так.
"""
import re
import sys
import time
import urllib.request

SITE = 'https://aitoolfit.ai'
LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
HTML_LANG = {'ua': 'uk'}


def get(path):
    url = f'{SITE}{path}{"&" if "?" in path else "?"}nocache={int(time.time() * 1000)}'
    try:
        with urllib.request.urlopen(url, timeout=30) as r:
            return r.status, r.read().decode('utf-8', 'replace')
    except urllib.error.HTTPError as e:
        return e.code, ''


def pre(lang):
    return '' if lang == 'en' else f'/{lang}'


def main():
    news = tools = []
    for a in sys.argv[1:]:
        if a.startswith('--news='):
            news = [s for s in a.split('=', 1)[1].split(',') if s]
        elif a.startswith('--tools='):
            tools = [s for s in a.split('=', 1)[1].split(',') if s]

    problems = []
    for lang in LANGS:
        p = pre(lang)
        row = []
        code, feed = get(f'{p}/news.html')
        links = re.findall(r'<a class="news-card[^"]*" href="([^"]+)"', feed)
        if code != 200 or not links:
            problems.append(f'{lang}: лента {code}, карточек {len(links)}')
        bad = [h for h in links if not h.startswith(f'{p}/news/')]
        if bad:
            problems.append(f'{lang}: в ленте ссылки не на свой язык: {bad[:2]}')
        if 'fetchNews' in feed or 'js/news.js' in feed:
            problems.append(f'{lang}: лента снова тянет данные в браузере')
        row.append(f'лента {len(links)}')

        code, home = get(f'{p}/')
        block = home[home.find('SEO:homenews:start'):home.find('SEO:homenews:end')]
        hlinks = re.findall(r'href="([^"]+)"', block)
        if code != 200 or len(hlinks) != 3 or any(not h.startswith(f'{p}/news/') for h in hlinks):
            problems.append(f'{lang}: блок новостей на главной: {code}, {hlinks[:3]}')
        row.append('главная ok')

        for slug in news:
            code, art = get(f'{p}/news/{slug}.html')
            m = re.search(r'<html lang="([a-z]+)"', art)
            if code != 200 or not m or m.group(1) != HTML_LANG.get(lang, lang):
                problems.append(f'{lang}: статья {slug}: {code}, lang={m and m.group(1)}')
                continue
            if f'{p}/news/{slug}.html' not in links:
                problems.append(f'{lang}: статьи {slug} нет в ленте')
            has_cover = '<picture>' in art
            card = re.search(rf'<a class="news-card([^"]*)" href="{re.escape(p)}/news/{slug}\.html"', feed)
            if has_cover and card and 'has-img' not in card.group(1):
                problems.append(f'{lang}: у {slug} есть обложка, но в ленте карточка без картинки')
            row.append(f'{slug[:20]}… {"с обложкой" if has_cover else "без обложки"}')

        for slug in tools:
            code, page = get(f'{p}/tools/{slug}.html')
            m = re.search(r'<html lang="([a-z]+)"', page)
            if code != 200 or not m or m.group(1) != HTML_LANG.get(lang, lang):
                problems.append(f'{lang}: инструмент {slug}: {code}, lang={m and m.group(1)}')
        if tools:
            row.append(f'инструменты {len(tools)}')
        print(f'  {lang}: ' + ' | '.join(row))

    if problems:
        print('\nПроблемы:')
        for x in problems:
            print('  ✗', x)
        sys.exit(1)
    print('\nВсё в порядке на всех 8 языках.')


if __name__ == '__main__':
    main()
