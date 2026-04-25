#!/usr/bin/env python3
"""
Generate Russian-translated AI tool detail pages at /ru/tools/*.html.
Uses Anthropic API to translate description, pros, cons, best_for.
Run: python3 scripts/generate-tools-ru.py
Requires: pip install anthropic
"""

import urllib.request, json, os, re, sys, time

# ─── Config ───────────────────────────────────────────────────────────────────
SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
OUT_DIR  = os.path.join(ROOT_DIR, 'ru', 'tools')
CACHE_FILE = os.path.join(ROOT_DIR, 'scripts', 'ru_translations_cache.json')
BASE_URL = 'https://aitoolfit.ai'

# ─── Russian strings ──────────────────────────────────────────────────────────
CATEGORY_LABELS_RU = {
    'chat':          'ИИ-чат и ассистенты',
    'agents':        'ИИ-агенты и автоматизация',
    'code':          'ИИ для разработки',
    'writing':       'Текст и копирайтинг',
    'marketing':     'Маркетинг и SEO',
    'image':         'Генерация изображений',
    'video':         'Генерация видео',
    'design':        'Дизайн и UI/UX',
    'voice':         'Голос и аудио',
    'productivity':  'Продуктивность',
    'research':      'Исследования',
    'data':          'Данные и аналитика',
    'nocode':        'Конструкторы без кода',
    'education':     'Образование и обучение',
    'presentations': 'Презентации и слайды',
}

CATEGORY_ICONS = {
    'chat': '💬', 'agents': '🤖', 'code': '💻', 'writing': '✍️',
    'marketing': '📈', 'image': '🎨', 'video': '🎬', 'design': '🖌️',
    'voice': '🎙️', 'productivity': '⚡', 'research': '🔬',
    'data': '📊', 'nocode': '🏗️', 'education': '🎓', 'presentations': '🖥️',
}

BADGE_LABELS_RU = {'free': 'Бесплатно', 'freemium': 'Freemium', 'paid': 'Платно'}

# ─── Helpers ──────────────────────────────────────────────────────────────────
def fetch_tools():
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tools?order=name.asc&limit=200&select=*',
        headers={'apikey': SB_ANON, 'Authorization': f'Bearer {SB_ANON}'}
    )
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

def fetch_ratings():
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/comments?approved=eq.true&select=tool_slug,rating&limit=10000',
        headers={'apikey': SB_ANON, 'Authorization': f'Bearer {SB_ANON}'}
    )
    with urllib.request.urlopen(req) as r:
        rows = json.loads(r.read())
    ratings = {}
    for row in rows:
        slug = row['tool_slug']
        if slug not in ratings:
            ratings[slug] = []
        ratings[slug].append(row['rating'])
    return {
        slug: {'avg': round(sum(v)/len(v), 1), 'count': len(v)}
        for slug, v in ratings.items()
    }

def load_cache():
    if os.path.exists(CACHE_FILE):
        with open(CACHE_FILE) as f:
            return json.load(f)
    return {}

def save_cache(cache):
    with open(CACHE_FILE, 'w', encoding='utf-8') as f:
        json.dump(cache, f, ensure_ascii=False, indent=2)

def esc(s):
    return str(s or '').replace('&','&amp;').replace('<','&lt;').replace('>','&gt;').replace('"','&quot;')

def translate_tool(client, tool):
    """Use Anthropic API to translate a tool's content into Russian."""
    name     = tool['name']
    desc     = tool.get('description_long') or tool.get('description') or ''
    pros     = tool.get('pros') or []
    cons     = tool.get('cons') or []
    best_for = tool.get('best_for') or ''

    prompt = f"""Translate the following AI tool information into Russian.
Keep the tool name "{name}" in its original form (do not translate it).
Keep any technical terms, product names, and brand names in English.
Return a JSON object with these exact keys: description, pros, cons, best_for.
- description: full translation of the description text
- pros: array of translated strings (same number as input)
- cons: array of translated strings (same number as input)
- best_for: translated string

Input:
description: {desc}
pros: {json.dumps(pros, ensure_ascii=False)}
cons: {json.dumps(cons, ensure_ascii=False)}
best_for: {best_for}

Return only valid JSON, no markdown, no explanation."""

    message = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=2048,
        messages=[{'role': 'user', 'content': prompt}]
    )
    raw = message.content[0].text.strip()
    # Strip markdown code block if present
    raw = re.sub(r'^```(?:json)?\n?', '', raw)
    raw = re.sub(r'\n?```$', '', raw)
    return json.loads(raw)

def also_consider(tools, current):
    same = [t for t in tools if t['category'] == current['category'] and t['slug'] != current['slug']]
    return same[:3]

def build_jsonld(name, desc, url, badge, slug, rating_data):
    schema = {
        "@context": "https://schema.org",
        "@type": "SoftwareApplication",
        "name": name,
        "description": desc[:200] if desc else '',
        "applicationCategory": "AIApplication",
        "operatingSystem": "Web",
        "url": url,
        "offers": {
            "@type": "Offer",
            "price": "0" if badge in ('free', 'freemium') else "",
            "priceCurrency": "USD"
        },
        "publisher": {
            "@type": "Organization",
            "name": "aitoolfit",
            "url": "https://aitoolfit.ai"
        }
    }
    if rating_data and slug in rating_data:
        r = rating_data[slug]
        schema["aggregateRating"] = {
            "@type": "AggregateRating",
            "ratingValue": str(r['avg']),
            "reviewCount": r['count'],
            "bestRating": "5",
            "worstRating": "1"
        }
    return json.dumps(schema, ensure_ascii=False)

def render_ru_page(tool, all_tools, ru_content, rating_data=None):
    slug      = tool['slug']
    name      = tool['name']
    url       = tool['url']
    domain    = tool['domain'] or ''
    category  = tool['category']
    badge     = tool['badge']
    users     = tool['users'] or ''
    best_for  = ru_content.get('best_for') or tool.get('best_for') or ''
    desc      = ru_content.get('description') or tool.get('description_long') or tool.get('description') or ''
    pros      = ru_content.get('pros') or tool.get('pros') or []
    cons      = ru_content.get('cons') or tool.get('cons') or []

    cat_label = CATEGORY_LABELS_RU.get(category, category.title())
    cat_icon  = CATEGORY_ICONS.get(category, '🤖')
    badge_lbl = BADGE_LABELS_RU.get(badge, badge.title())

    # Meta description in Russian
    short_ru = (desc or '').split('\n\n')[0].strip()
    if len(short_ru) > 155:
        short_ru = short_ru[:152].rsplit(' ', 1)[0] + '...'
    meta_desc = f'{name} 2026 — {short_ru}' if short_ru else f'{name} 2026 — ИИ-инструмент'

    pros_html = '\n'.join(f'        <li>{esc(p)}</li>' for p in pros)
    cons_html = '\n'.join(f'        <li>{esc(p)}</li>' for p in cons)

    also = also_consider(all_tools, tool)
    also_html = ''
    for a in also:
        also_html += f'''    <a class="also-card" href="/ru/tools/{esc(a['slug'])}.html">
      <div class="also-card-name">{esc(a['name'])}</div>
      <div class="also-card-desc">{esc(a['best_for'] or '')}</div>
    </a>\n'''

    users_chip = f'<span class="tool-meta-chip">👥 {esc(users)}</span>' if users else ''
    best_chip  = f'<span class="tool-meta-chip">🎯 {esc(best_for)}</span>' if best_for else ''

    desc_html = ''.join(
        f'<p style="margin-top:1rem">{esc(p.strip())}</p>'
        for p in desc.split('\n\n') if p.strip()
    )

    jsonld = build_jsonld(name, desc, url, badge, slug, rating_data)

    return f'''<!DOCTYPE html>
<html lang="ru">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{esc(name)} Обзор 2026 — Плюсы, минусы и альтернативы | aitoolfit</title>
<meta name="description" content="{esc(meta_desc)}">
<link rel="canonical" href="{BASE_URL}/ru/tools/{esc(slug)}.html">
<link rel="alternate" hreflang="en" href="{BASE_URL}/tools/{esc(slug)}.html">
<link rel="alternate" hreflang="ru" href="{BASE_URL}/ru/tools/{esc(slug)}.html">
<link rel="alternate" hreflang="x-default" href="{BASE_URL}/tools/{esc(slug)}.html">
<meta property="og:title" content="{esc(name)} Обзор 2026 | aitoolfit">
<meta property="og:description" content="{esc(meta_desc)}">
<meta property="og:url" content="{BASE_URL}/ru/tools/{esc(slug)}.html">
<meta property="og:image" content="{BASE_URL}/og-image.svg">
<meta property="og:type" content="website">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="{esc(name)} Обзор 2026 | aitoolfit">
<meta name="twitter:description" content="{esc(meta_desc)}">
<script async src="https://www.googletagmanager.com/gtag/js?id=G-WW59K11Y2Z"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){{dataLayer.push(arguments);}}gtag("js",new Date());gtag("config","G-WW59K11Y2Z");</script>
<script>localStorage.setItem("lang","ru");</script>
<script type="application/ld+json">
{jsonld}
</script>
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
<style>
.tool-page {{ max-width: 800px; margin: 0 auto; padding: 2rem 1.5rem 4rem; }}
.breadcrumb {{ display: flex; align-items: center; gap: 6px; font-size: 13px; color: var(--text3); margin-bottom: 2rem; flex-wrap: wrap; }}
.breadcrumb a {{ color: var(--text3); transition: color 0.15s; }}
.breadcrumb a:hover {{ color: var(--text); }}
.breadcrumb-sep {{ font-size: 11px; }}
.tool-hero {{ display: flex; align-items: flex-start; gap: 20px; margin-bottom: 1.5rem; }}
.tool-hero-avatar {{ width: 72px; height: 72px; border-radius: 18px; flex-shrink: 0; display: flex; align-items: center; justify-content: center; font-family: var(--font-display); font-size: 26px; font-weight: 700; border: 1px solid var(--border); }}
.tool-hero-info {{ flex: 1; }}
.tool-hero-top {{ display: flex; align-items: flex-start; justify-content: space-between; gap: 12px; flex-wrap: wrap; margin-bottom: 8px; }}
.tool-hero-name {{ font-family: var(--font-display); font-size: clamp(24px, 4vw, 36px); font-weight: 700; }}
.btn-visit {{ display: inline-flex; align-items: center; gap: 6px; background: var(--accent); color: #fff; border-radius: 10px; padding: 11px 24px; font-family: var(--font-display); font-size: 14px; font-weight: 600; transition: background 0.15s, transform 0.1s; white-space: nowrap; flex-shrink: 0; }}
.btn-visit:hover {{ background: var(--accent2); transform: translateY(-1px); }}
.tool-hero-meta {{ display: flex; align-items: center; gap: 8px; flex-wrap: wrap; }}
.tool-meta-chip {{ display: inline-flex; align-items: center; gap: 5px; background: var(--bg3); border: 1px solid var(--border); border-radius: 20px; padding: 4px 12px; font-size: 12px; color: var(--text2); }}
.tool-desc-block {{ margin-bottom: 2rem; }}
.tool-desc-block h2 {{ font-family: var(--font-display); font-size: 11px; font-weight: 600; margin-bottom: 0.75rem; color: var(--text2); text-transform: uppercase; letter-spacing: 0.05em; }}
.tool-desc {{ font-size: 15px; color: var(--text2); line-height: 1.75; }}
.pros-cons {{ display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-bottom: 2rem; }}
.pc-box {{ background: var(--bg2); border: 1px solid var(--border); border-radius: 14px; padding: 1.25rem; }}
.pc-box.pros {{ border-color: rgba(45,212,160,0.2); }}
.pc-box.cons {{ border-color: rgba(245,101,101,0.2); }}
.pc-title {{ font-family: var(--font-display); font-size: 13px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.06em; margin-bottom: 1rem; }}
.pc-box.pros .pc-title {{ color: #2dd4a0; }}
.pc-box.cons .pc-title {{ color: #f56565; }}
.pc-list {{ list-style: none; display: flex; flex-direction: column; gap: 10px; }}
.pc-list li {{ display: flex; align-items: flex-start; gap: 8px; font-size: 13px; color: var(--text2); line-height: 1.5; }}
.pc-list li::before {{ flex-shrink: 0; font-size: 13px; }}
.pc-box.pros .pc-list li::before {{ content: '✅'; }}
.pc-box.cons .pc-list li::before {{ content: '❌'; }}
.section-title-sm {{ font-family: var(--font-display); font-size: 18px; font-weight: 600; margin-bottom: 1rem; }}
.also-grid {{ display: grid; grid-template-columns: repeat(3, 1fr); gap: 10px; margin-bottom: 2.5rem; }}
.also-card {{ background: var(--bg2); border: 1px solid var(--border); border-radius: 12px; padding: 1rem; text-decoration: none; transition: border-color 0.15s; }}
.also-card:hover {{ border-color: var(--border2); }}
.also-card-name {{ font-family: var(--font-display); font-size: 14px; font-weight: 600; color: var(--text); margin-bottom: 4px; }}
.also-card-desc {{ font-size: 12px; color: var(--text3); line-height: 1.4; }}
.comments-section {{ margin-top: 1rem; }}
.comment-form {{ background: var(--bg2); border: 1px solid var(--border); border-radius: 14px; padding: 1.5rem; margin-bottom: 2rem; }}
.comment-form h3 {{ font-family: var(--font-display); font-size: 16px; font-weight: 600; margin-bottom: 1.25rem; }}
.star-picker {{ display: flex; gap: 6px; margin-bottom: 1.25rem; }}
.star-picker span {{ font-size: 28px; cursor: pointer; color: var(--bg3); filter: brightness(2); transition: color 0.1s; }}
.star-picker span.active, .star-picker span:hover {{ color: #f59e0b; }}
.form-row {{ display: grid; grid-template-columns: 1fr 1fr; gap: 12px; margin-bottom: 12px; }}
.form-input {{ width: 100%; background: var(--bg3); border: 1px solid var(--border); border-radius: 8px; padding: 10px 14px; color: var(--text); font-family: var(--font); font-size: 14px; outline: none; transition: border-color 0.2s; }}
.form-input:focus {{ border-color: var(--accent); }}
.form-input::placeholder {{ color: var(--text3); }}
textarea.form-input {{ resize: vertical; min-height: 90px; }}
.form-note {{ font-size: 12px; color: var(--text3); margin-bottom: 1rem; }}
.btn-submit {{ background: var(--accent); color: #fff; border: none; border-radius: 8px; padding: 10px 24px; font-family: var(--font-display); font-size: 14px; font-weight: 600; cursor: pointer; transition: background 0.15s; }}
.btn-submit:hover {{ background: var(--accent2); }}
.comment-list {{ display: flex; flex-direction: column; gap: 12px; }}
.comment-card {{ background: var(--bg2); border: 1px solid var(--border); border-radius: 12px; padding: 1.1rem 1.25rem; }}
.comment-header {{ display: flex; align-items: center; gap: 10px; margin-bottom: 8px; flex-wrap: wrap; }}
.comment-author {{ font-weight: 500; font-size: 14px; }}
.comment-stars {{ display: flex; gap: 2px; }}
.comment-date {{ font-size: 12px; color: var(--text3); margin-left: auto; }}
.comment-text {{ font-size: 14px; color: var(--text2); line-height: 1.6; }}
.no-comments {{ font-size: 14px; color: var(--text3); text-align: center; padding: 2rem; }}
@media (max-width: 600px) {{
  .pros-cons {{ grid-template-columns: 1fr; }}
  .also-grid {{ grid-template-columns: 1fr 1fr; }}
  .tool-hero {{ flex-direction: column; gap: 14px; }}
  .form-row {{ grid-template-columns: 1fr; }}
  .tool-hero-top {{ flex-direction: column; }}
}}
</style>
</head>
<body>

<header class="site-header">
  <div class="header-inner">
    <a href="/ru/" class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><path d="M6 19 L6 7 L13 14 L20 7 L20 19" stroke="#fff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" fill="none"/></svg>aitoolfit</a>
    <nav class="nav-links">
      <a href="/ru/index.html" class="nav-link">Главная</a>
      <a href="/ru/directory.html" class="nav-link active">Каталог</a>
      <a href="/ru/news.html" class="nav-link">Новости</a>
      <a href="/ru/tools.html" class="nav-link">Инструменты</a>
      <a href="/ru/compare.html" class="nav-link">Сравнение</a>
      <a href="/ru/newsletter.html" class="nav-link">Рассылка</a>
    </nav>
    <button class="btn-hamburger" onclick="toggleMenu()">&#9776;</button>
  </div>
  <nav class="mobile-menu" id="mobileMenu">
    <a href="/ru/index.html" class="nav-link">Главная</a>
    <a href="/ru/directory.html" class="nav-link">Каталог</a>
    <a href="/ru/news.html" class="nav-link">Новости</a>
    <a href="/ru/tools.html" class="nav-link">Инструменты</a>
    <a href="/ru/compare.html" class="nav-link">Сравнение</a>
  </nav>
</header>

<div class="tool-page">

  <nav class="breadcrumb">
    <a href="/ru/">Главная</a>
    <span class="breadcrumb-sep">›</span>
    <a href="/ru/directory.html">Каталог</a>
    <span class="breadcrumb-sep">›</span>
    <a href="/ru/directory.html?cat={esc(category)}">{esc(cat_label)}</a>
    <span class="breadcrumb-sep">›</span>
    <span>{esc(name)}</span>
  </nav>

  <div class="tool-hero">
    <div class="tool-hero-avatar" style="background:#fff;overflow:hidden;padding:6px">
      <img src="https://www.google.com/s2/favicons?domain={esc(domain)}&sz=128" alt="{esc(name)} логотип" width="60" height="60" style="width:100%;height:100%;object-fit:contain;border-radius:10px">
    </div>
    <div class="tool-hero-info">
      <div class="tool-hero-top">
        <h1 class="tool-hero-name">{esc(name)}</h1>
        <a class="btn-visit" href="{esc(url)}" target="_blank" rel="noopener">Перейти на {esc(name)} →</a>
      </div>
      <div class="tool-hero-meta">
        <span class="tool-meta-chip">{cat_icon} {esc(cat_label)}</span>
        <span class="tool-meta-chip">{esc(badge_lbl)}</span>
        {users_chip}
        {best_chip}
      </div>
    </div>
  </div>

  <div id="ratingDisplay" style="display:flex;align-items:center;gap:5px;margin-bottom:1.5rem;min-height:22px"></div>

  <div class="tool-desc-block">
    <h2>О сервисе {esc(name)}</h2>
    <div class="tool-desc">{desc_html}</div>
  </div>

  <div class="pros-cons">
    <div class="pc-box pros">
      <div class="pc-title">Преимущества</div>
      <ul class="pc-list">
{pros_html}
      </ul>
    </div>
    <div class="pc-box cons">
      <div class="pc-title">Недостатки</div>
      <ul class="pc-list">
{cons_html}
      </ul>
    </div>
  </div>

  <div class="section-title-sm">Также рассмотрите</div>
  <div class="also-grid">
{also_html}  </div>

  <div class="comments-section">
    <div class="section-title-sm">Отзывы пользователей</div>
    <div class="comment-form">
      <h3>Оставить отзыв</h3>
      <div class="star-picker" id="starPicker">
        <span data-v="1">★</span><span data-v="2">★</span><span data-v="3">★</span><span data-v="4">★</span><span data-v="5">★</span>
      </div>
      <input type="hidden" id="ratingVal" value="0">
      <div class="form-row">
        <input class="form-input" type="text" id="authorName" placeholder="Ваше имя" maxlength="60">
        <input class="form-input" type="email" id="authorEmail" placeholder="Email (не публикуется)" maxlength="120">
      </div>
      <textarea class="form-input" id="commentText" placeholder="Расскажите о вашем опыте использования {esc(name)}…" style="margin-bottom:10px"></textarea>
      <p class="form-note">Отзывы публикуются после модерации. Email не передаётся третьим лицам.</p>
      <button class="btn-submit" onclick="submitComment()">Отправить отзыв</button>
      <div id="formMsg" style="margin-top:10px;font-size:13px;display:none"></div>
    </div>
    <div class="comment-list" id="commentList">
      <div class="no-comments">Пока нет отзывов — будьте первым!</div>
    </div>
  </div>

</div>

<footer class="site-footer">
  <div class="footer-inner">
    <div>
      <div class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><path d="M6 19 L6 7 L13 14 L20 7 L20 19" stroke="#fff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" fill="none"/></svg>aitoolfit</div>
      <p class="footer-desc">Лучший каталог ИИ-инструментов. 100+ сервисов, актуальные новости и бесплатные утилиты.</p>
    </div>
    <div>
      <div class="footer-col-title">Навигация</div>
      <div class="footer-col-links">
        <a href="/ru/directory.html">Каталог</a>
        <a href="/ru/news.html">Новости</a>
        <a href="/ru/tools.html">Инструменты</a>
        <a href="/ru/compare.html">Сравнение</a>
        <a href="/ru/newsletter.html">Рассылка</a>
      </div>
    </div>
    <div>
      <div class="footer-col-title">Категории</div>
      <div class="footer-col-links">
        <a href="/ru/directory.html?cat=chat">ИИ-чат</a>
        <a href="/ru/directory.html?cat=code">Разработка</a>
        <a href="/ru/directory.html?cat=image">Генерация изображений</a>
        <a href="/ru/directory.html?cat=video">Генерация видео</a>
        <a href="/ru/directory.html?cat=voice">Голос и аудио</a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <span>Сделано с ♥ и Claude · Обновляется регулярно</span>
    <span>© 2026 aitoolfit</span>
  </div>
</footer>

<script src="/js/main.js"></script>
<script>
const picker = document.getElementById('starPicker');
const ratingVal = document.getElementById('ratingVal');
picker.querySelectorAll('span').forEach(s => {{
  s.addEventListener('mouseover', () => highlight(+s.dataset.v));
  s.addEventListener('mouseout',  () => highlight(+ratingVal.value));
  s.addEventListener('click',     () => {{ ratingVal.value = s.dataset.v; highlight(+s.dataset.v); }});
}});
function highlight(n) {{
  picker.querySelectorAll('span').forEach(s => s.classList.toggle('active', +s.dataset.v <= n));
}}
const SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co';
const SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG';
const TOOL_SLUG = '{esc(slug)}';
async function submitComment() {{
  const name   = document.getElementById('authorName').value.trim();
  const email  = document.getElementById('authorEmail').value.trim();
  const text   = document.getElementById('commentText').value.trim();
  const rating = +document.getElementById('ratingVal').value;
  if (!name || !text) {{ showMsg('Пожалуйста, введите имя и текст отзыва.', '#f56565'); return; }}
  if (rating < 1)     {{ showMsg('Пожалуйста, выберите оценку.', '#f56565'); return; }}
  const btn = document.querySelector('.btn-submit');
  btn.disabled = true; btn.textContent = 'Отправка…';
  try {{
    const r = await fetch(`${{SB_URL}}/rest/v1/comments`, {{
      method: 'POST',
      headers: {{ 'Content-Type': 'application/json', 'apikey': SB_ANON, 'Authorization': `Bearer ${{SB_ANON}}` }},
      body: JSON.stringify({{ tool_slug: TOOL_SLUG, author_name: name, author_email: email || null, content: text, rating, approved: false }})
    }});
    if (!r.ok) throw new Error(await r.text());
    showMsg('Спасибо! Ваш отзыв появится после модерации.', '#2dd4a0');
    document.getElementById('authorName').value = '';
    document.getElementById('authorEmail').value = '';
    document.getElementById('commentText').value = '';
    ratingVal.value = 0; highlight(0);
  }} catch(e) {{ showMsg('Ошибка: ' + e.message, '#f56565'); }}
  finally {{ btn.disabled = false; btn.textContent = 'Отправить отзыв'; }}
}}
function showMsg(text, color) {{
  const el = document.getElementById('formMsg');
  el.textContent = text; el.style.color = color; el.style.display = 'block';
}}
function renderRating(avg, count) {{
  const full  = Math.round(avg);
  const stars = '<span style="color:#f59e0b;font-size:14px;letter-spacing:1px">' + '★'.repeat(full) + '</span>' +
                '<span style="color:#555;font-size:14px;letter-spacing:1px">'   + '★'.repeat(5-full) + '</span>';
  document.getElementById('ratingDisplay').innerHTML =
    stars +
    '<span style="font-size:13px;font-weight:600;color:#f0f0f0;margin-left:4px">' + avg.toFixed(1) + '</span>' +
    '<span style="font-size:12px;color:var(--text3);margin-left:4px">(' + count + ' отз' + (count===1?'ыв':'ывов') + ')</span>';
  try {{
    const el = document.querySelector('script[type="application/ld+json"]');
    if (el) {{
      const schema = JSON.parse(el.textContent);
      schema.aggregateRating = {{"@type":"AggregateRating","ratingValue":avg.toFixed(1),"reviewCount":count,"bestRating":"5","worstRating":"1"}};
      el.textContent = JSON.stringify(schema);
    }}
  }} catch(_) {{}}
}}
async function loadComments() {{
  try {{
    const r = await fetch(`${{SB_URL}}/rest/v1/comments?tool_slug=eq.${{TOOL_SLUG}}&approved=eq.true&order=created_at.desc`, {{
      headers: {{ 'apikey': SB_ANON, 'Authorization': `Bearer ${{SB_ANON}}` }}
    }});
    const rows = await r.json();
    if (rows.length) {{
      const avg = rows.reduce((s,c) => s + c.rating, 0) / rows.length;
      renderRating(avg, rows.length);
      const list = document.getElementById('commentList');
      list.innerHTML = rows.map(c => `
        <div class="comment-card">
          <div class="comment-header">
            <span class="comment-author">${{esc(c.author_name)}}</span>
            <span class="comment-stars">${{'★'.repeat(c.rating)}}${{('☆').repeat(5-c.rating)}}</span>
            <span class="comment-date">${{new Date(c.created_at).toLocaleDateString('ru-RU',{{year:'numeric',month:'short',day:'numeric'}})}}</span>
          </div>
          <div class="comment-text">${{esc(c.content)}}</div>
        </div>`).join('');
    }}
  }} catch(_) {{}}
}}
function esc(s){{ return String(s||'').replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;'); }}
loadComments();
</script>
</body>
</html>'''

def update_sitemap(tools):
    """Add /ru/tools/*.html URLs to sitemap.xml."""
    sitemap_path = os.path.join(ROOT_DIR, 'sitemap.xml')
    with open(sitemap_path) as f:
        sitemap = f.read()

    new_entries = []
    for tool in tools:
        slug = tool['slug']
        url = f'{BASE_URL}/ru/tools/{slug}.html'
        if url not in sitemap:
            new_entries.append(f'''  <url>
    <loc>{url}</loc>
    <lastmod>2026-04-22</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.6</priority>
  </url>''')

    if new_entries:
        sitemap = sitemap.replace('</urlset>', '\n'.join(new_entries) + '\n</urlset>')
        with open(sitemap_path, 'w') as f:
            f.write(sitemap)
        print(f'  ✓ Added {len(new_entries)} URLs to sitemap.xml')
    else:
        print('  ✓ Sitemap already up to date')

def main():
    # Check for Anthropic API key
    api_key = os.environ.get('ANTHROPIC_API_KEY')
    if not api_key:
        print('ERROR: ANTHROPIC_API_KEY environment variable not set.')
        print('Set it with: export ANTHROPIC_API_KEY=your_key_here')
        sys.exit(1)

    try:
        import anthropic
    except ImportError:
        print('ERROR: anthropic package not installed.')
        print('Install it with: pip install anthropic')
        sys.exit(1)

    client = anthropic.Anthropic(api_key=api_key)

    print('Fetching tools from Supabase…')
    tools = fetch_tools()
    print(f'Got {len(tools)} tools')

    print('Fetching ratings…')
    ratings = fetch_ratings()

    print('Loading translation cache…')
    cache = load_cache()
    print(f'Cache has {len(cache)} translated tools')

    os.makedirs(OUT_DIR, exist_ok=True)

    print('\nTranslating and generating /ru/tools/ pages…')
    generated = 0
    errors = 0

    for i, tool in enumerate(tools):
        slug = tool['slug']
        name = tool['name']

        # Use cached translation if available
        if slug in cache:
            ru_content = cache[slug]
            print(f'  [{i+1}/{len(tools)}] {slug} (cached)')
        else:
            # Translate via API
            try:
                print(f'  [{i+1}/{len(tools)}] Translating {name}…', end='', flush=True)
                ru_content = translate_tool(client, tool)
                cache[slug] = ru_content
                save_cache(cache)
                print(' ✓')
                # Small delay to avoid rate limiting
                time.sleep(0.3)
            except Exception as e:
                print(f' ERROR: {e}')
                # Fall back to English content
                ru_content = {
                    'description': tool.get('description_long') or tool.get('description') or '',
                    'pros': tool.get('pros') or [],
                    'cons': tool.get('cons') or [],
                    'best_for': tool.get('best_for') or '',
                }
                errors += 1

        # Generate the page
        html = render_ru_page(tool, tools, ru_content, ratings)
        out_path = os.path.join(OUT_DIR, f'{slug}.html')
        with open(out_path, 'w', encoding='utf-8') as f:
            f.write(html)
        generated += 1

    print(f'\nUpdating sitemap…')
    update_sitemap(tools)

    print(f'\nDone — {generated} pages generated, {errors} translation errors.')
    if errors:
        print('Re-run the script to retry failed translations (they will be fetched from API again).')

if __name__ == '__main__':
    main()
