#!/usr/bin/env python3
"""
Generate news snapshots from Supabase → static files.
Outputs:
  1. js/news.js — EN articles array (used by all pages as fallback/filter base)
  2. SEO HTML block injected into news.html AND all [lang]/news.html pages

Run: python3 scripts/generate-news-snapshot.py
"""

import urllib.request, json, os, re, html
from datetime import datetime

SB_URL   = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY   = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

ACTIVE_LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

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

def fetch_news(lang):
    return sb_get(f'news?lang=eq.{lang}&published=eq.true&order=date.desc&limit=50&select=id,slug,title,summary,date,source,category,cat_label,cat_color,image_url')

def format_date(date_str):
    if not date_str:
        return ''
    if re.match(r'\d{4}-\d{2}-\d{2}', date_str):
        dt = datetime.strptime(date_str[:10], '%Y-%m-%d')
        return dt.strftime('%b %d, %Y').replace(' 0', ' ')
    return date_str

def esc(s):
    return html.escape(str(s or ''), quote=True)

def article_url(lang, slug, article_id):
    if not slug:
        return f"/news-article.html?id={article_id}"
    if lang == 'en':
        return f"/news/{slug}.html"
    return f"/{lang}/news/{slug}.html"

def generate_news_js(articles):
    """Generate js/news.js from EN Supabase data."""
    lines = ['// Auto-generated from Supabase — do not edit manually.',
             '// Run: python3 scripts/generate-news-snapshot.py', '',
             'const NEWS = [']

    for a in articles:
        cat  = a.get('category', 'tools')
        meta = CAT_META.get(cat, {'label': cat.title(), 'color': '#888'})
        slug = a.get('slug', '')
        url  = article_url('en', slug, a['id'])
        title_js   = a['title'].replace("'", "\\'").replace('—', '—')
        summary_js = a['summary'].replace("'", "\\'").replace('—', '—')
        date_fmt   = format_date(a['date'])

        lines.append(f"  {{ id:{a['id']}, slug:'{slug}', title:'{title_js}', "
                     f"summary:'{summary_js}', "
                     f"date:'{date_fmt}', source:'{esc(a['source'])}', "
                     f"category:'{cat}', catLabel:'{meta['label']}', catColor:'{meta['color']}', "
                     f"url:'{url}', image_url:'{a.get('image_url') or ''}' }},")

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

# Тот же текст, что даёт t('news.readMore') в js/i18n.js: статическая лента и
# лента, которую потом рисует JS, должны совпадать, иначе страница «перескакивает».
READ_MORE = {'en': 'Read more →', 'ru': 'Читать далее →', 'es': 'Leer más →', 'fr': 'Lire la suite →',
             'de': 'Weiterlesen →', 'pt': 'Ler mais →', 'ua': 'Читати далі →', 'he': 'קרא עוד ←'}


def generate_seo_html(articles, lang):
    """Generate SEO pre-rendered HTML cards for a given language.

    Вёрстка карточки — та же, что у JS-ленты в news.html (миниатюра справа в
    .news-body), чтобы при подмене статики свежими данными ничего не прыгало.
    """
    cards = []
    for a in articles:
        cat   = a.get('category', 'tools')
        meta  = CAT_META.get(cat, {'label': cat.title(), 'color': '#888'})
        slug  = a.get('slug', '')
        url   = article_url(lang, slug, a['id'])
        color = a.get('cat_color') or meta['color']
        label = a.get('cat_label') or meta['label']
        date_fmt = format_date(a['date'])
        img_url  = re.sub(r'\.(jpe?g|png)$', '.webp', a.get('image_url') or '')
        img = f'<div class="news-img" style="background-image:url(\'{esc(img_url)}\')"></div>' if img_url else ''

        cards.append(f'''
    <a class="news-card fade-up" href="{url}">
      <div class="news-meta">
        <span class="news-tag" style="background:{color}22;color:{color};border:1px solid {color}44">{esc(label)}</span>
        <span class="news-date">{esc(date_fmt)}</span>
      </div>
      <div class="news-body">{img}
        <div class="news-title">{esc(a['title'])}</div>
        <p class="news-summary">{esc(a['summary'])}</p>
      </div>
      <div class="news-footer">
        <span class="news-source">{esc(a['source'])}</span>
        <span class="news-more">{READ_MORE.get(lang, READ_MORE['en'])}</span>
      </div>
    </a>''')

    return '\n'.join(cards)

def inject_seo_block(seo_html, news_path):
    """Replace content between SEO markers in a news.html file."""
    with open(news_path, encoding='utf-8') as f:
        content = f.read()
    pattern = r'(<!-- SEO:news:start -->)(.*?)(<!-- SEO:news:end -->)'
    replacement = f'<!-- SEO:news:start -->{seo_html}\n<!-- SEO:news:end -->'
    new_content = re.sub(pattern, replacement, content, flags=re.DOTALL)
    with open(news_path, 'w', encoding='utf-8') as f:
        f.write(new_content)

def main():
    print('Fetching news from Supabase for all languages...')

    # 1. EN: generate js/news.js
    en_articles = fetch_news('en')
    print(f'  en: {len(en_articles)} articles')
    news_js = generate_news_js(en_articles)
    with open(os.path.join(ROOT_DIR, 'js', 'news.js'), 'w') as f:
        f.write(news_js)
    print(f'  ✓ js/news.js updated')

    # 2. Inject SEO blocks for all languages
    for lang in ACTIVE_LANGS:
        if lang == 'en':
            articles  = en_articles
            news_path = os.path.join(ROOT_DIR, 'news.html')
        else:
            articles  = fetch_news(lang)
            news_path = os.path.join(ROOT_DIR, lang, 'news.html')
            print(f'  {lang}: {len(articles)} articles')

        if not os.path.exists(news_path):
            print(f'  SKIP {lang} — {news_path} not found')
            continue

        seo_html = generate_seo_html(articles, lang)
        inject_seo_block(seo_html, news_path)
        print(f'  ✓ {"news.html" if lang == "en" else lang+"/news.html"} — SEO block updated ({len(articles)} cards)')

    # 3. Версия по содержимому в адресе js/news.js на всех языках: браузер
    #    держал старую копию до 10 минут и показывал устаревшую ленту.
    import hashlib
    ver = hashlib.md5(news_js.encode('utf-8')).hexdigest()[:8]
    for lang in ACTIVE_LANGS:
        for page in ('news.html', 'index.html'):
            p = os.path.join(ROOT_DIR, page) if lang == 'en' else os.path.join(ROOT_DIR, lang, page)
            if os.path.exists(p):
                t = open(p, encoding='utf-8').read()
                t = re.sub(r'(src="/?js/news\.js)(\?v=[0-9a-f]+)?"', rf'\1?v={ver}"', t)
                open(p, 'w', encoding='utf-8').write(t)
    print(f'  ✓ js/news.js?v={ver} в news.html и index.html')

    print('\nDone.')

if __name__ == '__main__':
    main()
