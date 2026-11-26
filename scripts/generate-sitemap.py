#!/usr/bin/env python3
"""
Generate sitemap.xml with correct priorities.

Priority tiers (language version = EN equivalent − 0.1):
  EN main:
    1.0  homepage, directory, compare
    0.7  news, news-article
    0.5  tools.html (toolbox), individual utility pages
    0.4  newsletter
    0.8  individual AI tool review pages
    0.3  privacy, terms, contact
  Active language versions (es, de, ru, ua, he):
    0.9  /lang/, /lang/directory, /lang/compare
    0.6  /lang/news, /lang/news-article
    0.4  /lang/tools.html, individual /lang/tools utilities
    0.3  /lang/newsletter
    0.7  individual /lang/tools/<slug>.html review pages
    0.2  /lang/privacy, /lang/terms, /lang/contact

fr and pt are included (active since 2026-05-04).

lastmod — дата последнего изменения ТЕКСТА страницы, а не дата сборки и не
дата сверки. Раньше брали дату коммита, менявшего файл, но сверка карточек
по пн/чт сдвигает «Обновлено: 2026-…» и dateModified у всех проверенных
инструментов, и в одном прогоне (26.11.2026) так «менялись» ~1000 страниц без
нового текста. Google обходит сайт ~36 страниц в день, 98% обхода — повторный
(Search Console → Статистика сканирования), и тратил его на эти страницы, а
1,4 тыс. новых адресов оставались «обнаружены, не проиндексированы». IndexNow
(scripts/indexnow.py --since) берёт даты отсюда же.

Теперь: хэш страницы без дат (YYYY-MM-DD вырезаются) хранится в
scripts/page_dates.json вместе с датой; дата меняется, только когда меняется
хэш. Если файла нет — он восстанавливается по истории git (seed_from_git).

Run: python3 scripts/generate-sitemap.py
"""

import hashlib
import json
import os
import re
import subprocess
from datetime import date

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
BASE_URL = 'https://aitoolfit.ai'
TODAY    = date.today().isoformat()


DATES_FILE = os.path.join(ROOT_DIR, 'scripts', 'page_dates.json')
_DATE_RE = re.compile(rb'\d{4}-\d{2}-\d{2}')


def content_hash(data):
    """Хэш HTML без дат: смена одной лишь даты сверки — не изменение страницы."""
    return hashlib.sha1(_DATE_RE.sub(b'D', data)).hexdigest()[:16]


def seed_from_git():
    """{путь: [хэш, дата]} по истории git: дата — коммит, с которого текст
    страницы (без дат) такой же, как сейчас. Нужен один раз, дальше — page_dates.json."""
    log = subprocess.run(['git', 'log', '--format=>%H %cs', '--name-only', '--no-renames', '--', '*.html'],
                         cwd=ROOT_DIR, capture_output=True, text=True, check=True).stdout
    history, cur = {}, None
    for line in log.splitlines():
        if line.startswith('>'):
            cur = line[1:].split()
        elif line:
            history.setdefault(line, []).append(cur)
    cat = subprocess.Popen(['git', 'cat-file', '--batch'], cwd=ROOT_DIR,
                           stdin=subprocess.PIPE, stdout=subprocess.PIPE)

    def blob(sha, path):
        cat.stdin.write(f'{sha}:{path}\n'.encode())
        cat.stdin.flush()
        head = cat.stdout.readline().split()
        if len(head) < 3 or head[1] == b'missing':
            return None
        data = cat.stdout.read(int(head[2]))
        cat.stdout.read(1)
        return data

    out = {}
    for path, commits in history.items():
        full = os.path.join(ROOT_DIR, path)
        if not os.path.exists(full):
            continue
        h = content_hash(open(full, 'rb').read())
        day = TODAY
        for sha, cs in commits[:80]:
            data = blob(sha, path)
            if data is None or content_hash(data) != h:
                break
            day = cs
        out[path] = [h, day]
    cat.stdin.close()
    cat.wait()
    return out


_DATES = json.load(open(DATES_FILE, encoding='utf-8')) if os.path.exists(DATES_FILE) else seed_from_git()


def lastmod(rel):
    """Дата последнего изменения текста файла rel (путь от корня сайта)."""
    full = os.path.join(ROOT_DIR, rel)
    if not os.path.exists(full):
        return TODAY
    h = content_hash(open(full, 'rb').read())
    old = _DATES.get(rel)
    if not old or old[0] != h:
        _DATES[rel] = [h, TODAY]
    return _DATES[rel][1]


def page_path(loc):
    rel = loc.replace(BASE_URL + '/', '', 1)
    return rel + 'index.html' if rel == '' or rel.endswith('/') else rel

LANGS_ACTIVE = ['es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

UTILITY_SLUGS = {
    'token-counter', 'text-diff', 'word-counter', 'case-converter',
    'regex-tester', 'json-formatter', 'csv-json', 'markdown-preview',
    'password-generator', 'base64',
}

def url(loc, changefreq, priority):
    return (
        f'  <url>\n'
        f'    <loc>{loc}</loc>\n'
        f'    <lastmod>{lastmod(page_path(loc))}</lastmod>\n'
        f'    <changefreq>{changefreq}</changefreq>\n'
        f'    <priority>{priority:.1f}</priority>\n'
        f'  </url>'
    )

def add_if_exists(entries, rel_path, *url_args):
    if os.path.exists(os.path.join(ROOT_DIR, rel_path)):
        entries.append(url(*url_args))

entries = []

tools_dir = os.path.join(ROOT_DIR, 'tools')
def _is_redirect(path):
    """Заглушка-редирект или страница с noindex (старые новости) — не для sitemap."""
    with open(path, encoding='utf-8', errors='ignore') as _f:
        snippet = _f.read(2048)
    return ('http-equiv="refresh"' in snippet or 'location.replace' in snippet
            or re.search(r'<meta name="robots" content="[^"]*noindex', snippet) is not None)

tool_slugs = sorted(
    f[:-5] for f in os.listdir(tools_dir)
    if f.endswith('.html') and not f.startswith('_')
    and not _is_redirect(os.path.join(tools_dir, f))
)

compare_dir = os.path.join(ROOT_DIR, 'compare')
compare_slugs = sorted(
    f[:-5] for f in os.listdir(compare_dir)
    if f.endswith('.html') and not f.startswith('_')
    and not _is_redirect(os.path.join(compare_dir, f))   # см. generate-redirects.py
)

news_dir = os.path.join(ROOT_DIR, 'news')
news_slugs = sorted(
    f[:-5] for f in os.listdir(news_dir)
    if f.endswith('.html') and not f.startswith('_')
    and not _is_redirect(os.path.join(news_dir, f))
) if os.path.isdir(news_dir) else []

# Раздел «ИИ для…» (generate-ai-for-pages.py)
ai_for_dir = os.path.join(ROOT_DIR, 'ai-for')
ai_for_slugs = sorted(
    f[:-5] for f in os.listdir(ai_for_dir) if f.endswith('.html')
) if os.path.isdir(ai_for_dir) else []

# Страницы категорий «Лучшие нейросети для …» (generate-category-pages.py)
best_dir = os.path.join(ROOT_DIR, 'best')
best_slugs = sorted(
    f[:-5] for f in os.listdir(best_dir) if f.endswith('.html')
) if os.path.isdir(best_dir) else []

# ── EN main pages ─────────────────────────────────────────────────────────────
entries.append(url(f'{BASE_URL}/',                 'daily',   1.0))
entries.append(url(f'{BASE_URL}/directory.html',   'daily',   1.0))
entries.append(url(f'{BASE_URL}/compare.html',     'weekly',  1.0))
entries.append(url(f'{BASE_URL}/news.html',        'daily',   0.7))
# tools.html (Toolbox) удалён — страницы больше нет на диске, а sitemap
# продолжал её отдавать: Google получал 404 прямо из карты сайта (8 языков).
entries.append(url(f'{BASE_URL}/newsletter.html',  'monthly', 0.4))
entries.append(url(f'{BASE_URL}/privacy.html',     'yearly',  0.3))
entries.append(url(f'{BASE_URL}/terms.html',       'yearly',  0.3))
entries.append(url(f'{BASE_URL}/contact.html',     'yearly',  0.3))

add_if_exists(entries, 'ai-for.html', f'{BASE_URL}/ai-for.html', 'weekly', 0.9)
for slug in ai_for_slugs:
    entries.append(url(f'{BASE_URL}/ai-for/{slug}.html', 'weekly', 0.9))
for slug in best_slugs:
    entries.append(url(f'{BASE_URL}/best/{slug}.html', 'weekly', 0.9))

# ── EN individual tool pages ──────────────────────────────────────────────────
for slug in tool_slugs:
    priority = 0.5 if slug in UTILITY_SLUGS else 0.8
    entries.append(url(f'{BASE_URL}/tools/{slug}.html', 'monthly', priority))

# ── EN compare pages ──────────────────────────────────────────────────────────
for slug in compare_slugs:
    entries.append(url(f'{BASE_URL}/compare/{slug}.html', 'weekly', 0.8))

# ── EN individual news article pages ─────────────────────────────────────────
for slug in news_slugs:
    entries.append(url(f'{BASE_URL}/news/{slug}.html', 'monthly', 0.75))

# ── Active language versions ──────────────────────────────────────────────────
for lang in LANGS_ACTIVE:
    entries.append(url(f'{BASE_URL}/{lang}/',                 'daily',   0.9))
    entries.append(url(f'{BASE_URL}/{lang}/directory.html',   'daily',   0.9))
    entries.append(url(f'{BASE_URL}/{lang}/compare.html',     'weekly',  0.9))
    entries.append(url(f'{BASE_URL}/{lang}/news.html',        'daily',   0.6))
    lang_news_dir = os.path.join(ROOT_DIR, lang, 'news')
    if os.path.isdir(lang_news_dir):
        for f in sorted(os.listdir(lang_news_dir)):
            if (f.endswith('.html') and not f.startswith('_')
                    and not _is_redirect(os.path.join(lang_news_dir, f))):
                entries.append(url(f'{BASE_URL}/{lang}/news/{f[:-5]}.html', 'monthly', 0.65))
    # /{lang}/tools.html — см. комментарий выше, страница удалена
    entries.append(url(f'{BASE_URL}/{lang}/newsletter.html',  'monthly', 0.3))
    add_if_exists(entries, f'{lang}/privacy.html',
                  f'{BASE_URL}/{lang}/privacy.html', 'yearly', 0.2)
    add_if_exists(entries, f'{lang}/terms.html',
                  f'{BASE_URL}/{lang}/terms.html', 'yearly', 0.2)
    add_if_exists(entries, f'{lang}/contact.html',
                  f'{BASE_URL}/{lang}/contact.html', 'yearly', 0.2)

    add_if_exists(entries, f'{lang}/ai-for.html', f'{BASE_URL}/{lang}/ai-for.html', 'weekly', 0.8)
    for slug in ai_for_slugs:
        rel = f'{lang}/ai-for/{slug}.html'
        if os.path.exists(os.path.join(ROOT_DIR, rel)):
            entries.append(url(f'{BASE_URL}/{rel}', 'weekly', 0.8))
    for slug in best_slugs:
        rel = f'{lang}/best/{slug}.html'
        if os.path.exists(os.path.join(ROOT_DIR, rel)):
            entries.append(url(f'{BASE_URL}/{rel}', 'weekly', 0.8))

    for slug in tool_slugs:
        rel = f'{lang}/tools/{slug}.html'
        if os.path.exists(os.path.join(ROOT_DIR, rel)):
            priority = 0.4 if slug in UTILITY_SLUGS else 0.7
            entries.append(url(f'{BASE_URL}/{rel}', 'monthly', priority))

    for slug in compare_slugs:
        rel = f'{lang}/compare/{slug}.html'
        if os.path.exists(os.path.join(ROOT_DIR, rel)):
            entries.append(url(f'{BASE_URL}/{rel}', 'weekly', 0.7))

# ── Write sitemap.xml ─────────────────────────────────────────────────────────
sitemap = (
    '<?xml version="1.0" encoding="UTF-8"?>\n'
    '<?xml-stylesheet type="text/xsl" href="/sitemap.xsl"?>\n'
    '<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n'
    + '\n'.join(entries) +
    '\n</urlset>\n'
)

out = os.path.join(ROOT_DIR, 'sitemap.xml')
with open(out, 'w', encoding='utf-8') as f:
    f.write(sitemap)

with open(DATES_FILE, 'w', encoding='utf-8') as f:
    json.dump(dict(sorted(_DATES.items())), f, ensure_ascii=False, indent=0)
    f.write('\n')

print(f'Done — {len(entries)} URLs written to sitemap.xml')
