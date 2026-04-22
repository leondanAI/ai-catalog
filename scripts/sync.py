#!/usr/bin/env python3
"""
sync.py — run after any Supabase DB change.
Regenerates all static files in the correct order.
Usage: python3 scripts/sync.py
"""

import subprocess, sys, time

ROOT = __file__.replace('scripts/sync.py', '')

steps = [
    ('Tool pages (102)',         ['python3', 'scripts/generate-pages.py']),
    ('Static content (dir+news)',['python3', 'scripts/generate-static-content.py']),
    ('Language pages (42)',      ['python3', 'scripts/generate-lang-pages.py']),
]

print('═' * 48)
print('  MyPedia sync')
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
