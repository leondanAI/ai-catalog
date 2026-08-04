#!/usr/bin/env python3
"""Find internal links pointing at files that don't exist on disk."""
import os, re, sys, collections
from urllib.parse import urldefrag, unquote

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
SKIP_DIRS = {"node_modules", "Back-up", ".git", "audit", "media", "scripts"}
HREF = re.compile(r'''(?:href|src)\s*=\s*["']([^"']+)["']''', re.I)

html_files = []
for dirpath, dirnames, filenames in os.walk(ROOT):
    dirnames[:] = [d for d in dirnames if d not in SKIP_DIRS and not d.startswith('.')]
    for fn in filenames:
        if fn.endswith(".html"):
            html_files.append(os.path.join(dirpath, fn))

def exists(target_abs):
    if os.path.exists(target_abs):
        return True
    # directory URL -> index.html
    if target_abs.endswith("/") and os.path.exists(os.path.join(target_abs, "index.html")):
        return True
    return False

broken = collections.defaultdict(set)   # target -> set of source files
counts = collections.Counter()

for src in html_files:
    try:
        html = open(src, encoding="utf-8", errors="ignore").read()
    except Exception:
        continue
    for raw in HREF.findall(html):
        link = raw.strip()
        if not link or link.startswith(("#", "mailto:", "tel:", "javascript:", "data:")):
            continue
        # external
        if re.match(r'^(https?:)?//', link):
            if not re.match(r'^https?://(www\.)?aitoolfit\.ai', link):
                continue
            link = re.sub(r'^https?://(www\.)?aitoolfit\.ai', '', link) or '/'
        link, _ = urldefrag(link)
        link = link.split('?')[0]
        if not link:
            continue
        link = unquote(link)
        if link.startswith('/'):
            target = os.path.join(ROOT, link.lstrip('/'))
        else:
            target = os.path.normpath(os.path.join(os.path.dirname(src), link))
        if link.endswith('/') or target.rstrip('/') == ROOT.rstrip('/'):
            target = os.path.join(target, "index.html")
            if not os.path.exists(target):
                # root "/" maps to index.html at ROOT
                target = os.path.join(ROOT, "index.html")
        if not exists(target):
            rel_t = os.path.relpath(target, ROOT)
            broken[rel_t].add(os.path.relpath(src, ROOT))
            counts[rel_t] += 1

print(f"HTML файлов просканировано: {len(html_files)}")
print(f"Уникальных битых целей: {len(broken)}")
print(f"Всего битых ссылок: {sum(counts.values())}")
print(f"Страниц-источников со ссылками на битое: {len(set().union(*broken.values())) if broken else 0}")
print("\n=== ТОП битых целей (по числу ссылок) ===")
for tgt, n in counts.most_common(40):
    srcs = broken[tgt]
    print(f"{n:6}  {tgt}   ← {len(srcs)} стр.")

# group by pattern
print("\n=== Сгруппировано по типу ===")
pat = collections.Counter()
for tgt in broken:
    parts = tgt.split('/')
    if len(parts) == 1:
        pat['root: ' + parts[0]] += counts[tgt]
    elif parts[0] in ('es','de','ru','ua','he','fr','pt'):
        pat[f"{parts[0]}/{parts[1] if len(parts)>1 else ''}"] += counts[tgt]
    else:
        pat[parts[0] + '/'] += counts[tgt]
for k, v in pat.most_common(25):
    print(f"{v:6}  {k}")
