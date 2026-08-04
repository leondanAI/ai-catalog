#!/usr/bin/env python3
"""
Pre-render static HTML into directory.html (#catalog) and news.html (#newsGrid).
Google indexes the static content; JS overwrites it dynamically for users.
Run: python3 scripts/generate-static-content.py
"""

import urllib.request, json, os, re
from datetime import datetime

SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
ROOT    = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

CATEGORIES = [
    ('chat',          'AI Chat & Assistants',    '💬', '#7c6af7'),
    ('agents',        'AI Agents & Automation',  '🤖', '#ff6b35'),
    ('code',          'AI for Development',      '💻', '#2dd4a0'),
    ('writing',       'Text & Copywriting',      '✍️', '#5b8af0'),
    ('marketing',     'Marketing & SEO',         '📈', '#e63946'),
    ('image',         'Image Generation',        '🎨', '#e05bb5'),
    ('video',         'Video Generation',        '🎬', '#f56565'),
    ('design',        'Design & UI/UX',          '🖌️', '#f56580'),
    ('voice',         'Voice & Audio',           '🎙️', '#4aaef5'),
    ('productivity',  'Productivity',            '⚡', '#f5a623'),
    ('research',      'Research',               '🔬', '#9b6ef5'),
    ('data',          'Data & Analytics',        '📊', '#38c9b0'),
    ('nocode',        'No-Code App Builders',    '🏗️', '#457b9d'),
    ('education',     'Education & Learning',    '🎓', '#2a9d8f'),
    ('presentations', 'Presentations & Slides',  '🖥️', '#8338ec'),
    # Категория отсутствовала в этом списке, из-за чего 5 опубликованных
    # инструментов (Fiscal.ai, Koyfin, Tickeron, TradingView, Uptrends.ai)
    # молча выпадали из статического каталога на всех 8 языках — 40 страниц
    # без единой входящей ссылки. Иконка и цвет — как в js/data.js.
    ('business-investment', 'Business & Investment', '💰', '#10b981'),
]
CAT_MAP = {c[0]: c for c in CATEGORIES}

NEWS_CAT_COLORS = {
    'models':     '#7c6af7',
    'tools':      '#2dd4a0',
    'business':   '#f5a623',
    'research':   '#4aaef5',
    'regulation': '#f56565',
}

BADGE_LABELS = {'free': 'Free', 'freemium': 'Freemium', 'paid': 'Paid'}


def fetch(path):
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/{path}',
        headers={'apikey': SB_ANON, 'Authorization': f'Bearer {SB_ANON}'}
    )
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())


def esc(s):
    return str(s or '').replace('&', '&amp;').replace('<', '&lt;').replace('>', '&gt;').replace('"', '&quot;')


def get_domain(url):
    try:
        from urllib.parse import urlparse
        return urlparse(url).hostname.replace('www.', '')
    except:
        return ''


def slug(name):
    return re.sub(r'^-+|-+$', '', re.sub(r'[^a-z0-9]+', '-', name.lower()))


# ── Directory ─────────────────────────────────────────────────────────────────

LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']


def parse_i18n():
    """Переводы из js/i18n.js: {lang: {key: value}} — те же ключи, что использует фронт."""
    with open(os.path.join(ROOT, 'js', 'i18n.js'), encoding='utf-8') as f:
        content = f.read()
    result, blocks = {}, list(re.finditer(r'\n    (\w{2,3}):\s*\{', content))
    for i, m in enumerate(blocks):
        lang = m.group(1)
        end = blocks[i + 1].start() if i + 1 < len(blocks) else len(content)
        pairs = re.findall(r"'([^']+)':\s*'((?:[^'\\]|\\.)*)'", content[m.end():end])
        if lang not in result:
            result[lang] = {k: v.replace("\\'", "'") for k, v in pairs}
    return result


def render_tool_card(tool, color, lang='en', tr=None):
    tr     = tr or {}
    base   = '' if lang == 'en' else f'/{lang}'
    c      = color
    domain = get_domain(tool.get('url', ''))
    name   = tool['name']
    desc   = tool.get('description') or ''
    badge  = tool.get('badge', 'freemium')
    users  = tool.get('users') or ''
    url    = tool.get('url', '#')
    # slug из БД — авторитетный источник; slug(name) даёт расхождения
    # (именно так появились ссылки на несуществующие /tools/playht.html и /tools/rows.html)
    sl     = tool.get('slug') or slug(name)
    lbl_review = tr.get('tool.review') or 'More info →'
    lbl_open   = tr.get('tool.open') or 'Open →'
    is_price   = users and (users.startswith('Free') or users.startswith('from $'))
    badge_lbl  = users if (badge == 'paid' and is_price) else BADGE_LABELS.get(badge, badge.title())
    users_html = f'<span class="tool-users">👥 {esc(users)}</span>' if (users and not is_price) else ''
    return f'''
    <div class="tool-card fade-up" data-cat="{esc(tool.get('category',''))}" data-name="{esc(name.lower())}">
      <div class="tool-card-top">
        <div class="tool-avatar" style="background:{c}22;border-color:{c}44;">
          <img class="tool-favicon" src="https://www.google.com/s2/favicons?sz=64&amp;domain={esc(domain)}" alt="" width="24" height="24">
          <span class="tool-avatar-fallback" style="display:none;color:{c}">{esc(name[0])}</span>
        </div>
        <span class="tool-name">{esc(name)}</span>
        {users_html}
        <span class="badge badge-{esc(badge)}">{esc(badge_lbl)}</span>
      </div>
      <p class="tool-desc">{esc(desc)}</p>
      <div class="tool-footer">
        <span class="tool-domain">{esc(domain)}</span>
        <div style="display:flex;align-items:center;gap:6px">
          <a class="tool-review" href="{base}/tools/{sl}.html">{esc(lbl_review)}</a>
          <a class="tool-aff" href="{esc(url)}" target="_blank" rel="noopener sponsored">{esc(lbl_open)}</a>
        </div>
      </div>
    </div>'''


def build_catalog_html(tools, lang='en', tr=None):
    tr = tr or {}
    by_cat = {}
    for t in tools:
        cat = t.get('category', '')
        by_cat.setdefault(cat, []).append(t)

    html = ''
    for cat_id, cat_label, cat_icon, cat_color in CATEGORIES:
        cat_tools = by_cat.get(cat_id, [])
        if not cat_tools:
            continue
        cat_label = tr.get(f'cat.{cat_id}') or cat_label   # локализованное название категории
        cards = ''.join(render_tool_card(t, cat_color, lang, tr) for t in cat_tools)
        html += f'''<div class="cat-section" data-cat="{cat_id}">
      <div class="cat-head">
        <div class="cat-head-icon" style="background:{cat_color}22;color:{cat_color}">{cat_icon}</div>
        <span class="cat-head-name">{cat_label}</span>
        <span class="cat-head-count">{len(cat_tools)}</span>
      </div>
      <div class="grid-auto">{cards}
      </div>
    </div>\n'''
    return html


def inject_catalog(tools, lang='en', tr=None):
    path = (os.path.join(ROOT, 'directory.html') if lang == 'en'
            else os.path.join(ROOT, lang, 'directory.html'))
    if not os.path.exists(path):
        print(f'  ! {lang}/directory.html не найден — пропуск')
        return
    with open(path, encoding='utf-8') as f:
        html = f.read()

    static_html = build_catalog_html(tools, lang, tr)
    MARKER_START = '<!-- SEO:catalog:start -->'
    MARKER_END   = '<!-- SEO:catalog:end -->'

    # First run: add markers if not present
    if MARKER_START not in html:
        html = html.replace('<div id="catalog"></div>',
                            f'<div id="catalog">{MARKER_START}{MARKER_END}</div>')

    # Replace between markers (idempotent)
    html = re.sub(
        re.escape(MARKER_START) + r'.*?' + re.escape(MARKER_END),
        MARKER_START + '\n' + static_html + MARKER_END,
        html, flags=re.DOTALL
    )
    with open(path, 'w', encoding='utf-8') as f:
        f.write(html)
    print(f'  ✓ {lang}: directory.html — {len(tools)} tools pre-rendered')


# ── News ──────────────────────────────────────────────────────────────────────

def format_date(date_str):
    try:
        d = datetime.strptime(date_str[:10], '%Y-%m-%d')
        return d.strftime('%b %-d, %Y')
    except:
        return date_str or ''


def render_news_card(article):
    cat      = article.get('category', '')
    color    = article.get('cat_color') or NEWS_CAT_COLORS.get(cat, '#7c6af7')
    label    = article.get('cat_label') or cat.title()
    title    = article.get('title', '')
    summary  = article.get('summary', '')
    source   = article.get('source', '')
    date_str = format_date(article.get('date', ''))
    sl       = article.get('slug', '')
    img_url  = article.get('image_url')
    img_html = f'<div class="news-img" style="background-image:url(\'{esc(img_url)}\')"></div>' if img_url else ''
    return f'''
    <a class="news-card fade-up" href="/news-article.html?slug={esc(sl)}&amp;lang=en">
      {img_html}
      <div class="news-meta">
        <span class="news-tag" style="background:{color}22;color:{color};border:1px solid {color}44">{esc(label)}</span>
        <span class="news-date">{esc(date_str)}</span>
      </div>
      <div class="news-title">{esc(title)}</div>
      <p class="news-summary">{esc(summary)}</p>
      <div class="news-footer">
        <span class="news-source">{esc(source)}</span>
        <span class="news-more">Read more →</span>
      </div>
    </a>'''


def build_news_html(articles):
    return ''.join(render_news_card(a) for a in articles)


def inject_news(articles):
    path = os.path.join(ROOT, 'news.html')
    with open(path, encoding='utf-8') as f:
        html = f.read()

    static_html = build_news_html(articles)
    MARKER_START = '<!-- SEO:news:start -->'
    MARKER_END   = '<!-- SEO:news:end -->'

    # First run: add markers if not present
    if MARKER_START not in html:
        html = html.replace(
            '<div class="grid-news" id="newsGrid"></div>',
            f'<div class="grid-news" id="newsGrid">{MARKER_START}{MARKER_END}</div>'
        )

    # Replace between markers (idempotent)
    html = re.sub(
        re.escape(MARKER_START) + r'.*?' + re.escape(MARKER_END),
        MARKER_START + '\n' + static_html + '\n' + MARKER_END,
        html, flags=re.DOTALL
    )
    with open(path, 'w', encoding='utf-8') as f:
        f.write(html)
    print(f'  ✓ news.html — {len(articles)} articles pre-rendered')


# ── Main ──────────────────────────────────────────────────────────────────────

def main():
    # Языковые каталоги отдавались пустым каркасом: статика генерировалась только для EN,
    # а generate-lang-pages.py вдобавок вычищает SEO-блок при копировании.
    # Итог — 0 ссылок на tool-страницы в 7 языковых каталогах и 42 страницы-сироты
    # на каждый язык. Теперь статика рендерится для всех языков.
    translations = parse_i18n()

    print('Fetching English news from Supabase…')
    news = fetch('news?lang=eq.en&published=eq.true&order=date.desc&limit=100&select=slug,title,summary,category,cat_label,cat_color,date,source,image_url')
    print(f'  {len(news)} articles')
    inject_news(news)

    print('\nInjecting catalog for every language…')
    for lang in LANGS:
        tools = fetch(f'tools?lang=eq.{lang}&published=eq.true&order=name.asc&limit=200'
                      '&select=slug,name,url,domain,category,badge,users,description')
        if not tools:
            print(f'  ! {lang}: инструментов не найдено — пропуск')
            continue
        inject_catalog(tools, lang, translations.get(lang, {}))

    print('\nDone.')


if __name__ == '__main__':
    main()
