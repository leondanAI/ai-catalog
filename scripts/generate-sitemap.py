#!/usr/bin/env python3
"""
Generate sitemap.xml with correct priorities.

Priority tiers:
  1.0  — Main pages: homepage, directory, compare
  0.8  — AI tool review pages (/tools/*.html, non-utility)
  0.7  — News page
  0.5  — Utilities/Toolbox page (/tools.html) + individual utility pages
  0.4  — Newsletter page
  0.8  — Language homepages, directory, compare  (0.1 less than EN equivalent)
  0.6  — Language news pages
  0.4  — Language toolbox/tools pages
  0.3  — Language newsletter pages

Run: python3 scripts/generate-sitemap.py
"""

import os
from datetime import date

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
BASE_URL  = 'https://aitoolfit.ai'
TODAY     = date.today().isoformat()

LANGS = ['ru', 'es', 'fr', 'de', 'pt', 'uk', 'he']

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

entries = []

# ── Main English pages ────────────────────────────────────────────────────────
entries.append(url(f'{BASE_URL}/',                TODAY, 'daily',   1.0))
entries.append(url(f'{BASE_URL}/directory.html',  TODAY, 'daily',   1.0))
entries.append(url(f'{BASE_URL}/compare.html',    TODAY, 'weekly',  1.0))
entries.append(url(f'{BASE_URL}/news.html',       TODAY, 'daily',   0.7))
entries.append(url(f'{BASE_URL}/tools.html',      TODAY, 'weekly',  0.5))
entries.append(url(f'{BASE_URL}/newsletter.html', TODAY, 'monthly', 0.4))

# ── Individual tool pages ─────────────────────────────────────────────────────
tools_dir = os.path.join(ROOT_DIR, 'tools')
tool_slugs = sorted(
    f[:-5] for f in os.listdir(tools_dir)
    if f.endswith('.html') and not f.startswith('_')
)

for slug in tool_slugs:
    if slug in UTILITY_SLUGS:
        entries.append(url(f'{BASE_URL}/tools/{slug}.html', TODAY, 'monthly', 0.5))
    else:
        entries.append(url(f'{BASE_URL}/tools/{slug}.html', TODAY, 'monthly', 0.8))

# ── Language pages ────────────────────────────────────────────────────────────
for lang in LANGS:
    entries.append(url(f'{BASE_URL}/{lang}/index.html',      TODAY, 'daily',   0.8))
    entries.append(url(f'{BASE_URL}/{lang}/directory.html',  TODAY, 'daily',   0.8))
    entries.append(url(f'{BASE_URL}/{lang}/compare.html',    TODAY, 'weekly',  0.8))
    entries.append(url(f'{BASE_URL}/{lang}/news.html',       TODAY, 'daily',   0.6))
    entries.append(url(f'{BASE_URL}/{lang}/tools.html',      TODAY, 'weekly',  0.4))
    entries.append(url(f'{BASE_URL}/{lang}/newsletter.html', TODAY, 'monthly', 0.3))

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
