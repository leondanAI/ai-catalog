#!/usr/bin/env python3
"""
Generate static news article pages from Supabase.
Each article gets its own /news/[slug].html — fully static, Google-indexable.

Run: python3 scripts/generate-news-pages.py
Also run generate-news-snapshot.py after this to update news.html SEO block with new URLs.
"""

import urllib.request, json, os, html as htmlmod, re
from datetime import datetime

SB_URL   = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY   = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
NEWS_DIR = os.path.join(ROOT_DIR, 'news')
SITE_URL = 'https://aitoolfit.ai'

CAT_COLORS = {
    'tools':      '#2dd4a0',
    'models':     '#7c6af7',
    'business':   '#f5a623',
    'research':   '#4aaef5',
    'regulation': '#f56565',
}

def sb_get(path):
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/{path}',
        headers={'apikey': SB_KEY, 'Authorization': f'Bearer {SB_KEY}'}
    )
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

def fetch_news():
    fields = 'id,slug,title,summary,body,date,source,category,cat_label,cat_color,image_url'
    return sb_get(f'news?lang=eq.en&published=eq.true&order=date.desc&limit=100&select={fields}')

def format_date(date_str):
    if not date_str:
        return ''
    if re.match(r'\d{4}-\d{2}-\d{2}', date_str):
        dt = datetime.strptime(date_str[:10], '%Y-%m-%d')
        return dt.strftime('%b %d, %Y').replace(' 0', ' ')
    return date_str

def strip_html(text):
    return re.sub(r'<[^>]+>', '', text or '')

def truncate_meta(text, max_len=155):
    text = strip_html(text)
    if len(text) <= max_len:
        return text
    return text[:max_len - 1].rsplit(' ', 1)[0] + '…'

def esc(s):
    return htmlmod.escape(str(s or ''), quote=True)

def generate_page(article, all_articles):
    slug      = article['slug']
    title     = article.get('title', '')
    summary   = article.get('summary', '')
    body      = article.get('body') or f'<p>{htmlmod.escape(summary)}</p>'
    date_str  = format_date(article.get('date', ''))
    source    = article.get('source', '')
    category  = article.get('category', 'tools')
    cat_label = article.get('cat_label') or category.title()
    cat_color = article.get('cat_color') or CAT_COLORS.get(category, '#7c6af7')
    image_url = article.get('image_url', '')

    meta_desc = truncate_meta(summary)
    canonical = f'{SITE_URL}/news/{slug}.html'

    # Related: same category, different slug, up to 2
    related = [a for a in all_articles if a['slug'] != slug and a.get('category') == category][:2]
    related_html = ''
    if related:
        cards = ''
        for r in related:
            rc = r.get('cat_color') or CAT_COLORS.get(r.get('category', 'tools'), '#7c6af7')
            rl = r.get('cat_label') or r.get('category', '').title()
            cards += f'''
      <a class="related-card" href="/news/{r["slug"]}.html">
        <div class="related-cat" style="color:{rc}">{esc(rl)}</div>
        <div class="related-name">{esc(r.get("title",""))}</div>
        <div class="related-date">{esc(format_date(r.get("date","")))}</div>
      </a>'''
        related_html = f'''
    <hr class="article-divider">
    <div class="related-title">Related articles</div>
    <div class="related-grid">{cards}
    </div>'''

    image_html = ''
    if image_url:
        image_html = f'\n  <img src="{esc(image_url)}" style="width:100%;border-radius:10px;margin-bottom:1.5rem;max-height:400px;object-fit:cover" alt="{esc(title)}">'

    title_short = title[:50] + ('…' if len(title) > 50 else '')

    schema = json.dumps({
        "@context": "https://schema.org",
        "@type": "NewsArticle",
        "headline": title,
        "description": meta_desc,
        "datePublished": article.get('date', ''),
        "publisher": {"@type": "Organization", "name": "AItoolFit", "url": SITE_URL},
        "mainEntityOfPage": canonical
    }, ensure_ascii=False)

    return f'''<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{esc(title)} — AItoolFit</title>
<meta name="description" content="{esc(meta_desc)}">
<link rel="canonical" href="{canonical}">
<link rel="alternate" hreflang="x-default" href="{canonical}">
<link rel="alternate" hreflang="en" href="{canonical}">
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="icon" type="image/x-icon" href="/favicon.ico">
<link rel="apple-touch-icon" href="/favicon-192.png">
<meta property="og:type" content="article">
<meta property="og:url" content="{canonical}">
<meta property="og:title" content="{esc(title)}">
<meta property="og:description" content="{esc(meta_desc)}">
<meta property="og:site_name" content="AItoolFit">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="{esc(title)}">
<meta name="twitter:description" content="{esc(meta_desc)}">
<script type="application/ld+json">{schema}</script>
<script async src="https://www.googletagmanager.com/gtag/js?id=G-WW59K11Y2Z"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){{dataLayer.push(arguments);}}gtag("js",new Date());gtag("config","G-WW59K11Y2Z");</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
<style>
  .article-wrap{{max-width:720px;margin:0 auto;padding:2rem 1.5rem 4rem}}
  .article-title{{font-family:var(--font-display);font-size:clamp(22px,4vw,34px);font-weight:600;line-height:1.25;margin-bottom:1.25rem}}
  .article-meta{{display:flex;align-items:center;gap:1rem;font-size:13px;color:var(--text3);margin-bottom:2rem;flex-wrap:wrap}}
  .article-meta-dot{{opacity:.4}}
  .article-body{{font-size:15.5px;line-height:1.75;color:var(--text2)}}
  .article-body p{{margin-bottom:1.25rem}}
  .article-body h2{{font-family:var(--font-display);font-size:20px;font-weight:600;color:var(--text);margin:2rem 0 .75rem}}
  .article-body h3{{font-family:var(--font-display);font-size:16px;font-weight:500;color:var(--text);margin:1.5rem 0 .5rem}}
  .article-body strong{{color:var(--text);font-weight:500}}
  .article-divider{{border:none;border-top:1px solid var(--border);margin:2.5rem 0}}
  .related-title{{font-family:var(--font-display);font-size:16px;font-weight:600;margin-bottom:1.25rem}}
  .related-grid{{display:grid;grid-template-columns:1fr 1fr;gap:1rem}}
  .related-card{{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius);padding:1rem;transition:border-color .15s,background .15s;display:block}}
  .related-card:hover{{border-color:var(--border2);background:var(--bg3)}}
  .related-cat{{font-size:11px;font-weight:500;margin-bottom:.5rem}}
  .related-name{{font-family:var(--font-display);font-size:13px;font-weight:500;line-height:1.4;color:var(--text)}}
  .related-date{{font-size:11px;color:var(--text3);margin-top:.5rem}}
  .breadcrumb{{display:flex;align-items:center;gap:6px;font-size:13px;color:var(--text3);margin-bottom:2rem;flex-wrap:wrap}}
  .breadcrumb a{{color:var(--text3);transition:color .15s}}
  .breadcrumb a:hover{{color:var(--text)}}
  .news-tag{{display:inline-flex;align-items:center;font-size:11px;font-weight:500;padding:2px 10px;border-radius:20px}}
  @media(max-width:600px){{.related-grid{{grid-template-columns:1fr}}}}
</style>
</head>
<body>

<header class="site-header">
  <div class="header-inner">
    <a href="/" class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>AItoolFit</a>
    <nav class="nav-links">
      <a href="/" class="nav-link" data-i18n="nav.home">Find AI</a>
      <a href="/directory.html" class="nav-link" data-i18n="nav.directory">Best AI Tools</a>
      <a href="/compare.html" class="nav-link" data-i18n="nav.compare">Compare</a>
      <a href="/news.html" class="nav-link active" data-i18n="nav.news">News</a>
    </nav>
    <div class="lang-picker">
      <button class="lang-btn" id="langBtn" onclick="toggleLangMenu()">&#127468;&#127463; EN <span style="opacity:.5;font-size:10px">&#9660;</span></button>
      <div class="lang-menu" id="langMenu"></div>
    </div>
    <button class="btn-hamburger" onclick="toggleMenu()">&#9776;</button>
  </div>
  <nav class="mobile-menu" id="mobileMenu">
    <a href="/" class="nav-link" data-i18n="nav.home">Find AI</a>
    <a href="/directory.html" class="nav-link" data-i18n="nav.directory">Best AI Tools</a>
    <a href="/compare.html" class="nav-link" data-i18n="nav.compare">Compare</a>
    <a href="/news.html" class="nav-link" data-i18n="nav.news">News</a>
  </nav>
</header>

<div class="article-wrap">
  <nav class="breadcrumb">
    <a href="/">Home</a> <span>&#8250;</span>
    <a href="/news.html">News</a> <span>&#8250;</span>
    <a href="/news.html">{esc(cat_label)}</a> <span>&#8250;</span>
    <span>{esc(title_short)}</span>
  </nav>{image_html}
  <h1 class="article-title">{esc(title)}</h1>
  <div class="article-meta">
    <span class="news-tag" style="background:{cat_color}22;color:{cat_color};border:1px solid {cat_color}44">{esc(cat_label)}</span>
    <span>{esc(date_str)}</span><span class="article-meta-dot">&middot;</span><span>{esc(source)}</span>
  </div>
  <div class="article-body">
    {body}
  </div>{related_html}
</div>

<footer class="site-footer">
  <div class="footer-inner" style="grid-template-columns:1.4fr 1fr 1fr 1fr;gap:36px">
    <div>
      <div class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>AItoolFit</div>
      <p class="footer-desc">Your AI tool finder.<br>Updated daily.</p>
    </div>
    <div>
      <div class="footer-col-title">PRODUCT</div>
      <div class="footer-col-links">
        <a href="/">Find AI</a>
        <a href="/directory.html">Best AI Tools</a>
        <a href="/compare.html">Compare</a>
        <a href="/news.html">News</a>
        <a href="/newsletter.html">Newsletter</a>
      </div>
    </div>
    <div>
      <div class="footer-col-title">NEWS CATEGORIES</div>
      <div class="footer-col-links">
        <a href="/news.html#models">Models</a>
        <a href="/news.html#tools">Tools</a>
        <a href="/news.html#business">Business</a>
        <a href="/news.html#research">Research</a>
        <a href="/news.html#regulation">Regulation</a>
      </div>
    </div>
    <div>
      <div class="footer-col-title">LANGUAGES</div>
      <div class="footer-col-links">
        <a href="/">&#127468;&#127463; English</a>
        <a href="/es/">&#127466;&#127480; Espa&ntilde;ol</a>
        <a href="/de/">&#127465;&#127466; Deutsch</a>
        <a href="/ru/">&#127479;&#127482; &#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;</a>
        <a href="/ua/">&#127482;&#127462; &#1059;&#1082;&#1088;&#1072;&#1111;&#1085;&#1089;&#1100;&#1082;&#1072;</a>
        <a href="/he/">&#127470;&#127473; &#1506;&#1489;&#1512;&#1497;&#1514;</a>
        <a href="/fr/">&#127467;&#127479; Fran&ccedil;ais</a>
        <a href="/pt/">&#127463;&#127479; Portugu&ecirc;s</a>
      </div>
    </div>
  </div>
  <div style="text-align:center;font-size:12px;color:rgba(255,255,255,0.45);padding:16px 1.5rem;margin-top:1.5rem;border-top:1px solid rgba(255,255,255,0.08)">
    Built by humans, curated with AI. No paid placements &mdash; recommendations ranked by relevance and community reviews.
  </div>
  <div class="footer-bottom" style="flex-direction:column;gap:6px;align-items:flex-start">
    <div style="display:flex;justify-content:space-between;width:100%;flex-wrap:wrap;gap:8px">
      <div style="display:flex;gap:16px;font-size:12px"><a href="/privacy.html" style="color:var(--text3)">Privacy</a><a href="/terms.html" style="color:var(--text3)">Terms</a><a href="/contact.html" style="color:var(--text3)">Contact</a></div>
      <span style="font-size:12px;color:var(--text3)">&copy; 2026 AItoolFit.ai</span>
    </div>
    <span style="font-size:11px;color:var(--text3);opacity:0.6">Made with &hearts; by Leondan &amp; Claude</span>
  </div>
</footer>

<script src="/js/i18n.js"></script>
<script src="/js/main.js"></script>
</body>
</html>'''

def main():
    os.makedirs(NEWS_DIR, exist_ok=True)
    print('Fetching news from Supabase...')
    articles = fetch_news()
    print(f'  {len(articles)} articles found')

    count = 0
    skipped = 0
    for article in articles:
        slug = article.get('slug', '')
        if not slug:
            skipped += 1
            continue
        if not article.get('body'):
            print(f'  SKIP (no body): {slug}')
            skipped += 1
            continue

        html = generate_page(article, articles)
        path = os.path.join(NEWS_DIR, f'{slug}.html')
        with open(path, 'w', encoding='utf-8') as f:
            f.write(html)
        count += 1
        print(f'  ✓ news/{slug}.html')

    print(f'\nDone — {count} pages generated, {skipped} skipped (no slug or no body).')
    print('Next: run python3 scripts/generate-news-snapshot.py to update news.html links.')

if __name__ == '__main__':
    main()
