#!/usr/bin/env python3
"""
Generate news snapshots from Supabase → static files.
Single source of truth: Supabase `news` table.
Outputs:
  1. js/news.js — JS fallback array for offline/error cases
  2. SEO HTML block injected into news.html (between <!-- SEO:news:start --> and <!-- SEO:news:end -->)

Run: python3 scripts/generate-news-snapshot.py
"""

import urllib.request, json, os, re, html

SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY  = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

CAT_META = {
    'tools':      {'label': 'New Tool',   'color': '#2dd4a0'},
    'models':     {'label': 'Models',     'color': '#7c6af7'},
    'business':   {'label': 'Business',   'color': '#f5a623'},
    'research':   {'label': 'Research',   'color': '#4aaef5'},
    'regulation': {'label': 'Regulation', 'color': '#f56565'},
    'product':    {'label': 'Product',    'color': '#e879f9'},
}

def sb_get(path):
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/{path}',
        headers={'apikey': SB_KEY, 'Authorization': f'Bearer {SB_KEY}'}
    )
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

def fetch_news():
    """Fetch all published English news from Supabase."""
    return sb_get('news?lang=eq.en&published=eq.true&order=date.desc&limit=50&select=id,slug,title,summary,date,source,category')

def format_date(iso_date):
    """Convert 2026-04-22 to Apr 22, 2026."""
    from datetime import datetime
    dt = datetime.strptime(iso_date, '%Y-%m-%d')
    return dt.strftime('%b %d, %Y').replace(' 0', ' ')

def esc(s):
    return html.escape(s or '', quote=True)

def generate_news_js(articles):
    """Generate js/news.js from Supabase data."""
    lines = ['// Auto-generated from Supabase — do not edit manually.',
             '// Run: python3 scripts/generate-news-snapshot.py', '',
             'const NEWS = [']

    for a in articles:
        cat = a.get('category', 'tools')
        meta = CAT_META.get(cat, {'label': cat.title(), 'color': '#888'})
        slug = a.get('slug', '')
        url = f"/news/{slug}.html" if slug else f"news-article.html?id={a['id']}"
        title_js = a['title'].replace("'", "\\'").replace('—', '—')
        summary_js = a['summary'].replace("'", "\\'").replace('—', '—')
        date_fmt = format_date(a['date'])

        lines.append(f"  {{ id:{a['id']}, slug:'{slug}', title:'{title_js}', "
                     f"summary:'{summary_js}', "
                     f"date:'{date_fmt}', source:'{esc(a['source'])}', "
                     f"category:'{cat}', catLabel:'{meta['label']}', catColor:'{meta['color']}', "
                     f"url:'{url}' }},")

    lines.append('];')
    lines.append('')
    lines.append("const NEWS_CATS = [")
    lines.append("  { id:'all',        label: () => t('newscat.all'),        color:'' },")
    lines.append("  { id:'models',     label: () => t('newscat.models'),     color:'#7c6af7' },")
    lines.append("  { id:'tools',      label: () => t('newscat.tools'),      color:'#2dd4a0' },")
    lines.append("  { id:'business',   label: () => t('newscat.business'),   color:'#f5a623' },")
    lines.append("  { id:'research',   label: () => t('newscat.research'),   color:'#4aaef5' },")
    lines.append("  { id:'regulation', label: () => t('newscat.regulation'), color:'#f56565' },")
    lines.append("];")
    lines.append('')

    return '\n'.join(lines)

def generate_seo_html(articles):
    """Generate SEO pre-rendered HTML cards."""
    cards = []
    for a in articles:
        cat = a.get('category', 'tools')
        meta = CAT_META.get(cat, {'label': cat.title(), 'color': '#888'})
        slug = a.get('slug', '')
        url = f"/news/{slug}.html" if slug else f"/news-article.html?id={a['id']}"
        date_fmt = format_date(a['date'])
        color = meta['color']

        cards.append(f'''
    <a class="news-card fade-up" href="{url}">

      <div class="news-meta">
        <span class="news-tag" style="background:{color}22;color:{color};border:1px solid {color}44">{meta['label']}</span>
        <span class="news-date">{date_fmt}</span>
      </div>
      <div class="news-title">{esc(a['title'])}</div>
      <p class="news-summary">{esc(a['summary'])}</p>
      <div class="news-footer">
        <span class="news-source">{esc(a['source'])}</span>
        <span class="news-more">Read more →</span>
      </div>
    </a>''')

    return '\n'.join(cards)

def inject_seo_block(seo_html):
    """Replace content between SEO markers in news.html."""
    news_path = os.path.join(ROOT_DIR, 'news.html')
    with open(news_path) as f:
        content = f.read()

    pattern = r'(<!-- SEO:news:start -->)(.*?)(<!-- SEO:news:end -->)'
    replacement = f'<!-- SEO:news:start -->{seo_html}\n<!-- SEO:news:end -->'
    new_content = re.sub(pattern, replacement, content, flags=re.DOTALL)

    with open(news_path, 'w') as f:
        f.write(new_content)

def main():
    print('Fetching news from Supabase…')
    articles = fetch_news()
    print(f'  {len(articles)} articles found')

    # 1. Generate js/news.js
    news_js = generate_news_js(articles)
    news_js_path = os.path.join(ROOT_DIR, 'js', 'news.js')
    with open(news_js_path, 'w') as f:
        f.write(news_js)
    print(f'  ✓ js/news.js — {len(articles)} articles')

    # 2. Inject SEO block into news.html
    seo_html = generate_seo_html(articles)
    inject_seo_block(seo_html)
    print(f'  ✓ news.html — SEO block updated')

    print(f'\nDone — news snapshot generated from Supabase.')
    print(f'Now run: python3 scripts/generate-lang-pages.py')

if __name__ == '__main__':
    main()
