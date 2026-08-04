#!/usr/bin/env python3
"""
sync.py — run after any Supabase DB change.
Regenerates all static files in the correct order.
Usage: python3 scripts/sync.py
"""

import subprocess, sys, time

ROOT = __file__.replace('scripts/sync.py', '')

# ВАЖЕН ПОРЯДОК. generate-lang-pages.py копирует английские страницы в /{lang}/
# и вычищает содержимое блоков SEO:catalog и SEO:news (иначе на русской странице
# оказался бы английский текст). Поэтому наполнять блоки нужно ПОСЛЕ него.
# Раньше он стоял последним из наполняющих — и языковые directory.html и news.html
# годами уезжали в продакшн пустыми каркасами: ноль статических ссылок на
# tool-страницы и новости, 42 страницы-сироты на каждый язык.
steps = [
    ('Tool pages (EN)',            ['python3', 'scripts/generate-pages.py']),
    ('Tool pages (7 langs)',       ['python3', 'scripts/generate-lang-tool-pages.py']),
    ('Language pages (42)',        ['python3', 'scripts/generate-lang-pages.py']),
    ('Static catalog (8 langs)',   ['python3', 'scripts/generate-static-content.py']),
    ('News pages + snapshot',      ['python3', 'scripts/generate-news-pages.py']),
    ('News SEO block (8 langs)',   ['python3', 'scripts/generate-news-snapshot.py']),
    ('Sitemap',                    ['python3', 'scripts/generate-sitemap.py']),
]

print('═' * 48)
print('  aitoolfit sync')
print('═' * 48)

start = time.time()
ok = 0

for label, cmd in steps:
    print(f'\n▶  {label}…')
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f'   ✗ FAILED\n{result.stderr}')
        sys.exit(1)
    # Print only the summary line (last non-empty line)
    lines = [l for l in result.stdout.splitlines() if l.strip()]
    if lines:
        print(f'   {lines[-1]}')
    ok += 1

elapsed = round(time.time() - start, 1)
print(f'\n{"═" * 48}')
print(f'  ✓ All {ok} steps done in {elapsed}s')
print(f'{"═" * 48}\n')
