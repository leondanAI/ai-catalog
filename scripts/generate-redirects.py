#!/usr/bin/env python3
"""Страницы-переадресации для адресов, которых на сайте больше нет.

Google Search Console на 2026-10-19 видел ~150 адресов с ответом 404: сравнения
со снятыми инструментами, удалённый Toolbox (tools.html и 10 утилит), старые
черновые страницы. Ссылки на них остались во внешних каталогах и в индексе.
GitHub Pages не умеет 301, поэтому на месте каждого адреса кладём маленькую
страницу с canonical и мгновенной переадресацией — Google считает её редиректом.

Генераторы карточек и сравнений удаляют из tools/ и compare/ всё, чего нет в
базе, поэтому этот шаг идёт в sync.py после них. Sitemap такие страницы
пропускает (в них есть http-equiv="refresh").

    python3 scripts/generate-redirects.py
"""
import os

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
SITE = 'https://aitoolfit.ai'
LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

# Адрес без языка → куда вести (тоже без языка; язык подставляется свой).
MOVED = {
    # Сравнения, где один инструмент снят или переименован
    'compare/amazon-q-developer-vs-github-copilot.html': 'compare/kiro-vs-github-copilot.html',
    'compare/continue-dev-vs-github-copilot.html': 'compare/cline-vs-github-copilot.html',
    'compare/elevenlabs-vs-playht.html': 'tools/playht.html',
    'compare/rows-vs-hex.html': 'tools/hex.html',
    'compare/socratic-vs-khanmigo.html': 'tools/khanmigo.html',
    'compare/uptrends-ai-vs-koyfin.html': 'tools/koyfin.html',
    # Toolbox удалён в 2026-07
    'tools.html': '',
    **{f'tools/{t}.html': '' for t in (
        'base64', 'case-converter', 'csv-json', 'json-formatter', 'markdown-preview',
        'password-generator', 'regex-tester', 'text-diff', 'token-counter', 'word-counter')},
}
# Только английские адреса (черновики и старый каталог)
MOVED_EN = {
    'ai-catalog.html': 'directory.html',
    'index-preview.html': '',
    'index-test.html': '',
    'index-tf-preview.html': '',
    'toolfinder-preview.html': '',
}
# Языки, которые были на сайте до 2026-05 и сняты: их страницы ведут на английские
OLD_LANGS = ['ar', 'hi', 'id', 'it', 'ja', 'ko', 'nl', 'pl', 'ro', 'th', 'tr', 'vi', 'zh']
OLD_LANG_PAGES = {'index.html': '', 'directory.html': 'directory.html', 'compare.html': 'compare.html',
                  'news.html': 'news.html', 'newsletter.html': 'newsletter.html', 'tools.html': ''}


def stub(target_url):
    return ('<!DOCTYPE html>\n<html><head><meta charset="utf-8">\n'
            f'<link rel="canonical" href="{target_url}">\n'
            f'<meta http-equiv="refresh" content="0; url={target_url}">\n'
            '<title>Moved | AItoolFit</title></head>\n'
            f'<body><script>location.replace("{target_url}")</script>'
            f'<p>This page has moved: <a href="{target_url}">{target_url}</a></p></body></html>\n')


def write(path, target_url):
    full = os.path.join(ROOT, path)
    if os.path.exists(full):
        with open(full, encoding='utf-8', errors='ignore') as f:
            if 'http-equiv="refresh"' not in f.read(600):
                return False       # там настоящая страница — не трогаем
    os.makedirs(os.path.dirname(full) or ROOT, exist_ok=True)
    with open(full, 'w', encoding='utf-8') as f:
        f.write(stub(target_url))
    return True


def main():
    n = 0
    for lang in LANGS:
        pre = '' if lang == 'en' else f'{lang}/'
        for src, dst in MOVED.items():
            n += write(pre + src, f'{SITE}/{pre}{dst}')
    for src, dst in MOVED_EN.items():
        n += write(src, f'{SITE}/{dst}')
    for old in OLD_LANGS:
        for src, dst in OLD_LANG_PAGES.items():
            n += write(f'{old}/{src}', f'{SITE}/{dst}')
    print(f'  переадресаций: {n}')


if __name__ == '__main__':
    main()
