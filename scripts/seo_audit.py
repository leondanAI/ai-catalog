#!/usr/bin/env python3
"""Локальный SEO-аудит: считает то, что можно проверить без внешних сервисов."""
import os, re, collections

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
SKIP = {"node_modules", "Back-up", ".git", "audit", "media", "scripts"}
LANGS = {"es", "de", "ru", "ua", "he", "fr", "pt"}

files = []
for dp, dn, fn in os.walk(ROOT):
    dn[:] = [d for d in dn if d not in SKIP and not d.startswith(".")]
    files += [os.path.join(dp, f) for f in fn if f.endswith(".html")]
rel = lambda p: os.path.relpath(p, ROOT)


def kind(p):
    parts = p.split("/")
    lang = parts[0] if parts[0] in LANGS else "en"
    rest = parts[1:] if parts[0] in LANGS else parts
    t = rest[0] if len(rest) > 1 else "root"
    return lang, (t if t in ("tools", "compare", "news") else "root")


TITLE = re.compile(r"<title>(.*?)</title>", re.S | re.I)
DESC = re.compile(r'<meta\s+name="description"\s+content="(.*?)"', re.S | re.I)
CANON = re.compile(r'<link\s+rel="canonical"\s+href="([^"]*)"', re.I)
OG = re.compile(r'<meta\s+property="og:(\w+)"', re.I)
TW = re.compile(r'<meta\s+name="twitter:(\w+)"', re.I)
HREFLANG = re.compile(r'<link\s+rel="alternate"\s+hreflang="([^"]+)"\s+href="([^"]+)"', re.I)
IMG = re.compile(r"<img\b[^>]*>", re.I)
JSONLD = re.compile(r'<script[^>]*type="application/ld\+json"[^>]*>(.*?)</script>', re.S | re.I)

issues = collections.defaultdict(list)
pages = {}

for f in files:
    p = rel(f)
    s = open(f, encoding="utf-8", errors="ignore").read()
    t = TITLE.search(s)
    title = re.sub(r"\s+", " ", t.group(1)).strip() if t else ""
    d = DESC.search(s)
    desc = re.sub(r"\s+", " ", d.group(1)).strip() if d else ""
    can = CANON.search(s)
    pages[p] = dict(title=title, desc=desc, canonical=can.group(1) if can else "")

    if not title:
        issues["title отсутствует"].append(p)
    elif len(title) > 60:
        issues["title длиннее 60 символов"].append(p)
    if re.search(r"[\U0001F300-\U0001FAFF☀-➿]", title):
        issues["эмодзи в title (запрещено правилами проекта)"].append(p)

    if not desc:
        issues["meta description отсутствует"].append(p)
    elif len(desc) < 120:
        issues["meta description короче 120 символов"].append(p)
    elif len(desc) > 165:
        issues["meta description длиннее 165 символов"].append(p)

    if not can:
        issues["canonical отсутствует"].append(p)

    og = set(OG.findall(s))
    if not og:
        issues["Open Graph отсутствует"].append(p)
    elif not {"title", "description", "image", "url"} <= og:
        issues["Open Graph неполный (нет title/description/image/url)"].append(p)

    if not TW.findall(s):
        issues["Twitter card отсутствует"].append(p)

    hl = HREFLANG.findall(s)
    if hl:
        self_ok = any(h.rstrip("/").endswith(p.replace("index.html", "").rstrip("/")) or p in h
                      for _, h in hl)
        if not self_ok:
            issues["hreflang без self-reference"].append(p)
    for tag in IMG.findall(s):
        if not re.search(r'\balt\s*=', tag, re.I):
            issues["<img> без alt"].append(p)
            break

    for blob in JSONLD.findall(s):
        import json
        try:
            json.loads(blob)
        except Exception:
            issues["невалидный JSON-LD"].append(p)
            break

# дубли title / description
for field, label in (("title", "дубли title"), ("desc", "дубли meta description")):
    c = collections.Counter(v[field] for v in pages.values() if v[field])
    dups = {k for k, n in c.items() if n > 1}
    for p, v in pages.items():
        if v[field] in dups:
            issues[label].append(p)

# sitemap
sm = open(os.path.join(ROOT, "sitemap.xml"), encoding="utf-8").read()
sm_urls = set(re.findall(r"<loc>(.*?)</loc>", sm))
sm_paths = {u.replace("https://aitoolfit.ai/", "") or "index.html" for u in sm_urls}
sm_paths = {p if p.endswith(".html") else p.rstrip("/") + "/index.html" for p in sm_paths}
on_disk = set(pages)
for p in sorted(sm_paths - on_disk):
    issues["в sitemap, но файла нет (404)"].append(p)
noindexable = {p for p in on_disk if p.startswith(("test-", "ph-image", "admin-", "toolfinder-"))
               or p in ("404.html", "news-article.html", "sitemap.xsl")}
for p in sorted(on_disk - sm_paths - noindexable):
    issues["на диске, но не в sitemap"].append(p)

print(f"Просканировано страниц: {len(pages)}\n")
print(f"{'проблема':52}{'страниц':>9}")
print("-" * 61)
for k, v in sorted(issues.items(), key=lambda kv: -len(kv[1])):
    print(f"{k:52}{len(set(v)):>9}")

print("\n=== разбивка крупнейших по типам страниц ===")
for k, v in sorted(issues.items(), key=lambda kv: -len(kv[1]))[:6]:
    c = collections.Counter(kind(p)[1] for p in set(v))
    print(f"{k}: " + ", ".join(f"{t}={n}" for t, n in c.most_common()))
