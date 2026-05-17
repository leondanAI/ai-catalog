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

fr and pt are NOT included — those languages are inactive
(hidden in language picker, no maintenance).

Run: python3 scripts/generate-sitemap.py
"""

import os
from datetime import date

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
BASE_URL = 'https://aitoolfit.ai'
TODAY    = date.today().isoformat()

LANGS_ACTIVE = ['es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

UTILITY_SLUGS = {
    'token-counter', 'text-diff', 'word-counter', 'case-converter',
    'regex-tester', 'json-formatter', 'csv-json', 'markdown-preview',
    'password-generator', 'base64',
}

def url(loc, lastmod, changefreq, priority):
    return (
        f'  <url>\n'
        f'    <loc>{loc}</loc>\n'
        f'    <lastmod>{lastmod}</lastmod>\n'
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
    with open(path, encoding='utf-8', errors='ignore') as _f:
        snippet = _f.read(512)
    return 'http-equiv="refresh"' in snippet or 'location.replace' in snippet

tool_slugs = sorted(
    f[:-5] for f in os.listdir(tools_dir)
    if f.endswith('.html') and not f.startswith('_')
    and not _is_redirect(os.path.join(tools_dir, f))
)

compare_dir = os.path.join(ROOT_DIR, 'compare')
compare_slugs = sorted(
    f[:-5] for f in os.listdir(compare_dir)
    if f.endswith('.html') and not f.startswith('_')
)

news_dir = os.path.join(ROOT_DIR, 'news')
news_slugs = sorted(
    f[:-5] for f in os.listdir(news_dir)
    if f.endswith('.html') and not f.startswith('_')
) if os.path.isdir(news_dir) else []

# ── EN main pages ─────────────────────────────────────────────────────────────
entries.append(url(f'{BASE_URL}/',                 TODAY, 'daily',   1.0))
entries.append(url(f'{BASE_URL}/directory.html',   TODAY, 'daily',   1.0))
entries.append(url(f'{BASE_URL}/compare.html',     TODAY, 'weekly',  1.0))
entries.append(url(f'{BASE_URL}/news.html',        TODAY, 'daily',   0.7))
entries.append(url(f'{BASE_URL}/tools.html',       TODAY, 'weekly',  0.5))
entries.append(url(f'{BASE_URL}/newsletter.html',  TODAY, 'monthly', 0.4))
entries.append(url(f'{BASE_URL}/privacy.html',     TODAY, 'yearly',  0.3))
entries.append(url(f'{BASE_URL}/terms.html',       TODAY, 'yearly',  0.3))
entries.append(url(f'{BASE_URL}/contact.html',     TODAY, 'yearly',  0.3))

# ── EN individual tool pages ──────────────────────────────────────────────────
for slug in tool_slugs:
    priority = 0.5 if slug in UTILITY_SLUGS else 0.8
    entries.append(url(f'{BASE_URL}/tools/{slug}.html', TODAY, 'monthly', priority))

# ── EN compare pages ──────────────────────────────────────────────────────────
for slug in compare_slugs:
    entries.append(url(f'{BASE_URL}/compare/{slug}.html', TODAY, 'weekly', 0.8))

# ── EN individual news article pages ─────────────────────────────────────────
for slug in news_slugs:
    entries.append(url(f'{BASE_URL}/news/{slug}.html', TODAY, 'monthly', 0.75))

# ── Active language versions ──────────────────────────────────────────────────
for lang in LANGS_ACTIVE:
    entries.append(url(f'{BASE_URL}/{lang}/',                 TODAY, 'daily',   0.9))
    entries.append(url(f'{BASE_URL}/{lang}/directory.html',   TODAY, 'daily',   0.9))
    entries.append(url(f'{BASE_URL}/{lang}/compare.html',     TODAY, 'weekly',  0.9))
    entries.append(url(f'{BASE_URL}/{lang}/news.html',        TODAY, 'daily',   0.6))
    add_if_exists(entries, f'{lang}/news-article.html',
                  f'{BASE_URL}/{lang}/news-article.html', TODAY, 'daily', 0.6)
    entries.append(url(f'{BASE_URL}/{lang}/tools.html',       TODAY, 'weekly',  0.4))
    entries.append(url(f'{BASE_URL}/{lang}/newsletter.html',  TODAY, 'monthly', 0.3))
    add_if_exists(entries, f'{lang}/privacy.html',
                  f'{BASE_URL}/{lang}/privacy.html', TODAY, 'yearly', 0.2)
    add_if_exists(entries, f'{lang}/terms.html',
                  f'{BASE_URL}/{lang}/terms.html', TODAY, 'yearly', 0.2)
    add_if_exists(entries, f'{lang}/contact.html',
                  f'{BASE_URL}/{lang}/contact.html', TODAY, 'yearly', 0.2)

    for slug in tool_slugs:
        rel = f'{lang}/tools/{slug}.html'
        if os.path.exists(os.path.join(ROOT_DIR, rel)):
            priority = 0.4 if slug in UTILITY_SLUGS else 0.7
            entries.append(url(f'{BASE_URL}/{rel}', TODAY, 'monthly', priority))

    for slug in compare_slugs:
        rel = f'{lang}/compare/{slug}.html'
        if os.path.exists(os.path.join(ROOT_DIR, rel)):
            entries.append(url(f'{BASE_URL}/{rel}', TODAY, 'weekly', 0.7))

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

print(f'Done — {len(entries)} URLs written to sitemap.xml')
