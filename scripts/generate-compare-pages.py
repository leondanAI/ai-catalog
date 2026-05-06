#!/usr/bin/env python3
"""
Generate STATIC comparison pages — content baked into HTML at build time.
Tool data is fetched from Supabase once per (slug, lang); the resulting page
contains the full comparison table in static HTML so Google indexes the real
content without executing JavaScript. Only the ratings block stays dynamic.

Usage:  python3 scripts/generate-compare-pages.py
"""

import os, re, json, html as _html
import urllib.request, urllib.parse

ROOT     = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
BASE_URL = 'https://aitoolfit.ai'

SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

LANGUAGES   = ['es', 'ru', 'de', 'ua', 'he', 'fr', 'pt']
LANG_FLAGS  = {'en':'🇬🇧','ru':'🇷🇺','es':'🇪🇸','fr':'🇫🇷','pt':'🇧🇷','de':'🇩🇪','ua':'🇺🇦','he':'🇮🇱'}
LANG_LABELS = {'ua': 'UA'}
LANG_RTL    = {'he'}

COMPARISONS = [
    # ── Chat & Assistants (leader: ChatGPT, #2: Claude) ──────────────────────
    {'slug': 'chatgpt-vs-claude',             'a': 'chatgpt',          'b': 'claude',          'cat': 'chat',  'label': 'ChatGPT vs Claude'},
    {'slug': 'gemini-vs-chatgpt',             'a': 'gemini',           'b': 'chatgpt',         'cat': 'chat',  'label': 'Gemini vs ChatGPT'},
    {'slug': 'deepseek-vs-chatgpt',           'a': 'deepseek',         'b': 'chatgpt',         'cat': 'chat',  'label': 'DeepSeek vs ChatGPT'},
    {'slug': 'microsoft-copilot-vs-chatgpt',  'a': 'microsoft-copilot','b': 'chatgpt',         'cat': 'chat',  'label': 'Microsoft Copilot vs ChatGPT'},
    {'slug': 'meta-ai-vs-chatgpt',            'a': 'meta-ai',          'b': 'chatgpt',         'cat': 'chat',  'label': 'Meta AI vs ChatGPT'},
    {'slug': 'grok-vs-chatgpt',               'a': 'grok',             'b': 'chatgpt',         'cat': 'chat',  'label': 'Grok vs ChatGPT'},
    {'slug': 'mistral-le-chat-vs-chatgpt',    'a': 'mistral-le-chat',  'b': 'chatgpt',         'cat': 'chat',  'label': 'Mistral Le Chat vs ChatGPT'},
    {'slug': 'character-ai-vs-chatgpt',       'a': 'character-ai',     'b': 'chatgpt',         'cat': 'chat',  'label': 'Character.AI vs ChatGPT'},
    # ── Code ─────────────────────────────────────────────────────────────────
    {'slug': 'cursor-vs-copilot',             'a': 'cursor',           'b': 'github-copilot',  'cat': 'code',  'label': 'Cursor vs GitHub Copilot'},
    # ── Image ────────────────────────────────────────────────────────────────
    {'slug': 'midjourney-vs-flux',            'a': 'midjourney',       'b': 'flux',            'cat': 'image', 'label': 'Midjourney vs Flux'},
    # ── Music ────────────────────────────────────────────────────────────────
    {'slug': 'suno-vs-udio',                  'a': 'suno',             'b': 'udio',            'cat': 'music', 'label': 'Suno vs Udio'},
    {'slug': 'kling-vs-runway',               'a': 'kling-ai',         'b': 'runway',          'cat': 'video', 'label': 'Kling AI vs Runway'},
]

# Per-language UI labels — baked into HTML at build time
LABELS = {
    'en': {'ov':'Overview','pr':'Pricing','us':'Users','bf':'Best for','rt':'Rating','ad':'Advantages','ds':'Disadvantages','wb':'Website','vt':'Visit','rv':'Full review','nr':'No reviews yet'},
    'ru': {'ov':'Обзор','pr':'Цена','us':'Пользователи','bf':'Лучше для','rt':'Рейтинг','ad':'Преимущества','ds':'Недостатки','wb':'Сайт','vt':'Посетить','rv':'Полный обзор','nr':'Нет отзывов'},
    'es': {'ov':'Descripción','pr':'Precio','us':'Usuarios','bf':'Mejor para','rt':'Calificación','ad':'Ventajas','ds':'Desventajas','wb':'Sitio web','vt':'Visitar','rv':'Reseña completa','nr':'Sin reseñas'},
    'fr': {'ov':'Aperçu','pr':'Prix','us':'Utilisateurs','bf':'Idéal pour','rt':'Évaluation','ad':'Avantages','ds':'Inconvénients','wb':'Site web','vt':'Visiter','rv':'Avis complet','nr':'Aucun avis'},
    'de': {'ov':'Überblick','pr':'Preis','us':'Nutzer','bf':'Am besten für','rt':'Bewertung','ad':'Vorteile','ds':'Nachteile','wb':'Website','vt':'Besuchen','rv':'Vollständige Bewertung','nr':'Noch keine Bewertungen'},
    'pt': {'ov':'Visão geral','pr':'Preço','us':'Usuários','bf':'Melhor para','rt':'Avaliação','ad':'Vantagens','ds':'Desvantagens','wb':'Site','vt':'Visitar','rv':'Avaliação completa','nr':'Sem avaliações'},
    'ua': {'ov':'Огляд','pr':'Ціна','us':'Користувачі','bf':'Краще для','rt':'Рейтинг','ad':'Переваги','ds':'Недоліки','wb':'Сайт','vt':'Відвідати','rv':'Повний огляд','nr':'Немає відгуків'},
    'he': {'ov':'סקירה','pr':'תמחור','us':'משתמשים','bf':'הטוב ביותר עבור','rt':'דירוג','ad':'יתרונות','ds':'חסרונות','wb':'אתר','vt':'בקר','rv':'סקירה מלאה','nr':'אין ביקורות עדיין'},
}

BADGE_LABELS = {
    'en':{'free':'Free','freemium':'Freemium','paid':'Paid'},
    'ru':{'free':'Бесплатно','freemium':'Freemium','paid':'Платно'},
    'es':{'free':'Gratis','freemium':'Freemium','paid':'De pago'},
    'fr':{'free':'Gratuit','freemium':'Freemium','paid':'Payant'},
    'de':{'free':'Kostenlos','freemium':'Freemium','paid':'Bezahlt'},
    'pt':{'free':'Grátis','freemium':'Freemium','paid':'Pago'},
    'ua':{'free':'Безкоштовно','freemium':'Freemium','paid':'Платно'},
    'he':{'free':'חינם','freemium':'Freemium','paid':'בתשלום'},
}

# Per-language title and meta description templates ({a} and {b} are tool names)
META_TEMPLATES = {
    'en': {
        'title': '{a} vs {b} 2026 — Comparison | AItoolFit',
        'desc':  '{a} vs {b}: side-by-side comparison of features, pricing, pros and cons. Pick the right AI tool for your task.',
        'headline': '{a} vs {b}: AI tool comparison 2026',
        'schema_desc': 'Side-by-side comparison of {a} and {b} — features, pricing, pros and cons.',
    },
    'ru': {
        'title': '{a} vs {b} 2026 — Сравнение | AItoolFit',
        'desc':  '{a} против {b}: сравнение функций, цен, плюсов и минусов. Выберите подходящий AI-инструмент для задачи.',
        'headline': '{a} vs {b}: сравнение AI-инструментов 2026',
        'schema_desc': 'Сравнение {a} и {b} — функции, цены, плюсы и минусы.',
    },
    'es': {
        'title': '{a} vs {b} 2026 — Comparación | AItoolFit',
        'desc':  '{a} vs {b}: comparación lado a lado de funciones, precios, ventajas y desventajas. Elige la herramienta de IA adecuada para tu tarea.',
        'headline': '{a} vs {b}: comparación de herramientas de IA 2026',
        'schema_desc': 'Comparación lado a lado de {a} y {b} — funciones, precios, ventajas y desventajas.',
    },
    'fr': {
        'title': '{a} vs {b} 2026 — Comparatif | AItoolFit',
        'desc':  '{a} vs {b} : comparatif des fonctionnalités, prix, avantages et inconvénients. Choisissez le bon outil IA pour votre tâche.',
        'headline': '{a} vs {b} : comparatif des outils IA 2026',
        'schema_desc': 'Comparatif côte à côte de {a} et {b} — fonctionnalités, prix, avantages et inconvénients.',
    },
    'de': {
        'title': '{a} vs {b} 2026 — Vergleich | AItoolFit',
        'desc':  '{a} vs {b}: direkter Vergleich von Funktionen, Preisen, Vor- und Nachteilen. Finden Sie das passende KI-Tool für Ihre Aufgabe.',
        'headline': '{a} vs {b}: KI-Tool-Vergleich 2026',
        'schema_desc': 'Direkter Vergleich von {a} und {b} — Funktionen, Preise, Vor- und Nachteile.',
    },
    'pt': {
        'title': '{a} vs {b} 2026 — Comparação | AItoolFit',
        'desc':  '{a} vs {b}: comparação lado a lado de recursos, preços, prós e contras. Escolha a ferramenta de IA certa para sua tarefa.',
        'headline': '{a} vs {b}: comparação de ferramentas de IA 2026',
        'schema_desc': 'Comparação lado a lado de {a} e {b} — recursos, preços, prós e contras.',
    },
    'ua': {
        'title': '{a} vs {b} 2026 — Порівняння | AItoolFit',
        'desc':  '{a} проти {b}: порівняння функцій, цін, переваг і недоліків. Оберіть AI-інструмент, який підходить для вашого завдання.',
        'headline': '{a} vs {b}: порівняння AI-інструментів 2026',
        'schema_desc': 'Порівняння {a} та {b} — функції, ціни, переваги й недоліки.',
    },
    'he': {
        'title': '{a} vs {b} 2026 — השוואה | AItoolFit',
        'desc':  '{a} מול {b}: השוואה של תכונות, מחירים, יתרונות וחסרונות. בחרו את כלי ה-AI המתאים למשימה שלכם.',
        'headline': '{a} vs {b}: השוואת כלי AI 2026',
        'schema_desc': 'השוואה של {a} ו-{b} — תכונות, מחירים, יתרונות וחסרונות.',
    },
}

# ── HTTP / data ───────────────────────────────────────────────────────────────
def sb_get(slug, lang):
    """Fetch a single tool by slug+lang from Supabase. Returns dict or None."""
    qs = urllib.parse.urlencode({
        'slug': f'eq.{slug}',
        'lang': f'eq.{lang}',
        'select': 'slug,name,description,best_for,pros,cons,badge,url,domain,users',
    })
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tools?{qs}',
        headers={'apikey': SB_ANON, 'Authorization': f'Bearer {SB_ANON}'}
    )
    with urllib.request.urlopen(req, timeout=15) as resp:
        rows = json.load(resp)
    return rows[0] if rows else None

def fetch_tool(slug, lang):
    """Fetch with EN fallback if requested lang has no row."""
    row = sb_get(slug, lang)
    if not row and lang != 'en':
        row = sb_get(slug, 'en')
    return row

# ── helpers ───────────────────────────────────────────────────────────────────
def esc(s):
    return _html.escape(str(s) if s is not None else '', quote=True)

def get_domain(url):
    return (url or '').replace('https://', '').replace('http://', '').split('/')[0]

def list_html(items, icon):
    if not items:
        return '<span style="color:var(--text3)">—</span>'
    return ''.join(
        f'<div style="display:flex;gap:6px;align-items:flex-start;font-size:13px;color:var(--text2);margin-bottom:6px">'
        f'<span>{icon}</span><span>{esc(p)}</span></div>'
        for p in items
    )

def badge_html(badge, lang):
    label = BADGE_LABELS.get(lang, BADGE_LABELS['en']).get(badge, badge or '')
    return f'<span class="badge badge-{esc(badge or "")}">{esc(label)}</span>'

def comparison_table_html(a, b, lang):
    """Render the entire comparison table — server-side."""
    L = LABELS.get(lang, LABELS['en'])
    dom_a = get_domain(a.get('url'))
    dom_b = get_domain(b.get('url'))

    visit_a = a.get('url') or '#'
    visit_b = b.get('url') or '#'
    base = '' if lang == 'en' else f'/{lang}'
    review_a = f'{base}/tools/{esc(a["slug"])}.html'
    review_b = f'{base}/tools/{esc(b["slug"])}.html'

    rows = [
        (L['ov'], esc(a.get('description') or '—'),       esc(b.get('description') or '—')),
        (L['pr'], badge_html(a.get('badge'), lang),       badge_html(b.get('badge'), lang)),
        (L['us'], esc(a.get('users') or '—'),             esc(b.get('users') or '—')),
        (L['ad'], list_html(a.get('pros'), '✅'),         list_html(b.get('pros'), '✅')),
        (L['ds'], list_html(a.get('cons'), '❌'),         list_html(b.get('cons'), '❌')),
        (L['wb'],
         f'<a href="{esc(visit_a)}" target="_blank" rel="noopener" style="color:var(--accent)">{esc(dom_a)}</a>' if dom_a else '—',
         f'<a href="{esc(visit_b)}" target="_blank" rel="noopener" style="color:var(--accent)">{esc(dom_b)}</a>' if dom_b else '—'),
        ('',
         f'<div style="display:flex;gap:8px;flex-wrap:wrap"><a class="tool-aff" href="{esc(visit_a)}" target="_blank" rel="noopener">{L["vt"]} →</a><a class="tool-review" href="{review_a}">{L["rv"]}</a></div>',
         f'<div style="display:flex;gap:8px;flex-wrap:wrap"><a class="tool-aff" href="{esc(visit_b)}" target="_blank" rel="noopener">{L["vt"]} →</a><a class="tool-review" href="{review_b}">{L["rv"]}</a></div>'),
    ]
    rows_html = '\n'.join(
        f'<tr><th>{th}</th><td class="hl">{va}</td><td class="hl">{vb}</td></tr>'
        for th, va, vb in rows
    )
    rating_row_html = (
        f'<tr><th>{L["rt"]}</th>'
        f'<td class="hl"><span data-rating-slot="{esc(a["slug"])}" style="color:var(--text3);font-size:13px">…</span></td>'
        f'<td class="hl"><span data-rating-slot="{esc(b["slug"])}" style="color:var(--text3);font-size:13px">…</span></td>'
        f'</tr>'
    )
    rows_html_with_rating = rows_html.replace(
        f'<tr><th>{L["wb"]}</th>',
        rating_row_html + f'<tr><th>{L["wb"]}</th>',
        1
    )

    return (
        f'<div class="compare-wrap fade-up"><table class="compare-table"><thead><tr><th></th>'
        f'<td style="text-align:center"><div class="tool-col-head">'
        f'<div class="tool-col-avatar" style="background:#7c6af722"><img src="https://www.google.com/s2/favicons?sz=64&amp;domain={esc(dom_a)}" width="30" height="30" style="border-radius:6px" alt=""></div>'
        f'<div class="tool-col-name">{esc(a.get("name") or "")}</div>'
        f'<div class="tool-col-bestfor"><strong>{L["bf"]}:</strong> {esc(a.get("best_for") or "—")}</div>'
        f'</div></td>'
        f'<td style="text-align:center"><div class="tool-col-head">'
        f'<div class="tool-col-avatar" style="background:#7c6af722"><img src="https://www.google.com/s2/favicons?sz=64&amp;domain={esc(dom_b)}" width="30" height="30" style="border-radius:6px" alt=""></div>'
        f'<div class="tool-col-name">{esc(b.get("name") or "")}</div>'
        f'<div class="tool-col-bestfor"><strong>{L["bf"]}:</strong> {esc(b.get("best_for") or "—")}</div>'
        f'</div></td></tr></thead><tbody>{rows_html_with_rating}</tbody></table></div>'
    )

def schema_org_jsonld(a, b, canonical_url, lang):
    M = META_TEMPLATES.get(lang, META_TEMPLATES['en'])
    schema = {
        "@context": "https://schema.org",
        "@type": "Article",
        "inLanguage": lang,
        "headline": M['headline'].format(a=a.get('name'), b=b.get('name')),
        "description": M['schema_desc'].format(a=a.get('name'), b=b.get('name')),
        "url": canonical_url,
        "datePublished": "2026-04-29",
        "author": {"@type": "Organization", "name": "AItoolFit"},
        "publisher": {"@type": "Organization", "name": "AItoolFit", "url": "https://aitoolfit.ai"},
        "about": [
            {"@type": "SoftwareApplication", "name": a.get('name'), "url": a.get('url')},
            {"@type": "SoftwareApplication", "name": b.get('name'), "url": b.get('url')},
        ],
    }
    return f'<script type="application/ld+json">{json.dumps(schema, ensure_ascii=False)}</script>'

# ── Category compare titles per language ──────────────────────────────────────
CAT_COMPARE_LABELS = {
    'en': 'Compare in this category',
    'ru': 'Сравнения в этой категории',
    'es': 'Comparar en esta categoría',
    'de': 'Vergleiche in dieser Kategorie',
    'ua': 'Порівняння в цій категорії',
    'he': 'השוואות בקטגוריה זו',
    'fr': 'Comparatifs dans cette catégorie',
    'pt': 'Comparações nesta categoria',
}

# ── footer (sourced from /<lang>/compare.html, QUICK COMPARE replaced by category links) ──
def load_footer(lang, current_slug=None, current_cat=None):
    src = os.path.join(ROOT, lang, 'compare.html') if lang != 'en' else os.path.join(ROOT, 'compare.html')
    if not os.path.exists(src):
        return ''
    txt = open(src, encoding='utf-8').read()
    m = re.search(r'<footer\s+class="site-footer"[^>]*>.*?</footer>', txt, re.DOTALL)
    footer = m.group(0) if m else ''

    # Replace QUICK COMPARE section with category-specific links
    if current_cat and current_slug:
        base = '' if lang == 'en' else f'/{lang}'
        siblings = [c for c in COMPARISONS if c.get('cat') == current_cat and c['slug'] != current_slug]
        if siblings:
            label = CAT_COMPARE_LABELS.get(lang, 'Compare in this category')
            links = '\n'.join(
                f'        <a href="{base}/compare/{c["slug"]}.html">'
                f'{esc_foot(c.get("label", c["slug"]))}</a>'
                for c in siblings[:7]
            )
            new_section = f'      <div class="footer-col-title">{label}</div>\n      <div class="footer-col-links">\n{links}\n      </div>'
            # Replace existing QUICK COMPARE block (any language variant)
            footer = re.sub(
                r'<div class="footer-col-title">(?:QUICK COMPARE|БЫСТРОЕ СРАВНЕНИЕ|SCHNELLVERGLEICH|'
                r'COMPARACIÓN RÁPIDA|COMPARAISON RAPIDE|ШВИДКЕ ПОРІВНЯННЯ|השוואה מהירה|COMPARAÇÃO RÁPIDA)'
                r'</div>\s*<div class="footer-col-links">.*?</div>',
                new_section, footer, flags=re.DOTALL
            )
    return footer

def esc_foot(s):
    return _html.escape(s, quote=True)

# ── full page ─────────────────────────────────────────────────────────────────
def build_page(cmp, lang, canonical_url, flag, label, rtl=False):
    a = fetch_tool(cmp['a'], lang)
    b = fetch_tool(cmp['b'], lang)
    if not a or not b:
        print(f'  ! missing tool data for {cmp["slug"]} / {lang}: a={bool(a)} b={bool(b)}')
        return None

    dir_attr    = ' dir="rtl"' if rtl else ''
    base        = '' if lang == 'en' else f'/{lang}'
    L           = LABELS.get(lang, LABELS['en'])
    M           = META_TEMPLATES.get(lang, META_TEMPLATES['en'])
    title       = M['title'].format(a=a['name'], b=b['name'])
    description = M['desc'].format(a=a['name'], b=b['name'])

    hreflang_tags = '\n'.join(
        [f'<link rel="alternate" hreflang="x-default" href="{BASE_URL}/compare/{cmp["slug"]}.html">',
         f'<link rel="alternate" hreflang="en" href="{BASE_URL}/compare/{cmp["slug"]}.html">'] +
        [f'<link rel="alternate" hreflang="{lc}" href="{BASE_URL}/{lc}/compare/{cmp["slug"]}.html">' for lc in LANGUAGES]
    )
    table_html  = comparison_table_html(a, b, lang)
    schema      = schema_org_jsonld(a, b, canonical_url, lang)
    footer_html = load_footer(lang, cmp['slug'], cmp.get('cat'))
    lang_script = '' if lang == 'en' else f'<script>localStorage.setItem("lang","{lang}");</script>\n'

    return f'''<!DOCTYPE html>
<html lang="{lang}"{dir_attr}>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{esc(title)}</title>
<meta name="description" content="{esc(description)}">
<link rel="canonical" href="{canonical_url}">
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<meta property="og:title" content="{esc(title)}">
<meta property="og:description" content="{esc(description)}">
<meta property="og:url" content="{canonical_url}">
<meta property="og:type" content="article">
<meta property="og:image" content="https://aitoolfit.ai/og-image.png">
{schema}
<script async src="https://www.googletagmanager.com/gtag/js?id=G-WW59K11Y2Z"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){{dataLayer.push(arguments);}}gtag("js",new Date());gtag("config","G-WW59K11Y2Z");</script>
{lang_script}<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
{hreflang_tags}
<style>
.cmp-wrap{{max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem}}
.cmp-hero{{text-align:center;margin-bottom:2rem}}
.cmp-hero h1{{font-family:var(--font-display);font-size:clamp(24px,4vw,38px);font-weight:700;margin-bottom:.75rem}}
.cmp-hero p{{font-size:15px;color:var(--text2);line-height:1.75;max-width:640px;margin:0 auto}}
.compare-wrap{{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius);overflow:hidden}}
.compare-table{{width:100%;border-collapse:collapse}}
.compare-table th,.compare-table td{{padding:14px 16px;text-align:start;border-bottom:1px solid var(--border);font-size:14px}}
.compare-table th{{font-family:var(--font-display);font-size:13px;font-weight:500;color:var(--text3);width:28%}}
.compare-table td{{color:var(--text2)}}
.compare-table td.hl{{color:var(--text)}}
.tool-col-head{{display:flex;flex-direction:column;align-items:center;gap:8px;padding:1.5rem 1rem}}
.tool-col-avatar{{width:52px;height:52px;border-radius:12px;display:flex;align-items:center;justify-content:center;font-family:var(--font-display);font-size:22px;font-weight:700}}
.tool-col-name{{font-family:var(--font-display);font-size:16px;font-weight:600}}
.tool-col-bestfor{{margin-top:6px;font-size:13px;color:var(--text);background:rgba(124,106,247,0.08);border-inline-start:3px solid var(--accent);padding:8px 12px;border-radius:6px;line-height:1.45;text-align:start;max-width:280px}}
.tool-col-bestfor strong{{color:var(--accent);font-weight:600;margin-inline-end:6px}}
@media(max-width:600px){{.compare-table th{{width:35%;font-size:12px}}.compare-table th,.compare-table td{{padding:10px;font-size:13px}}}}
</style>
</head>
<body>
<header class="site-header">
  <div class="header-inner">
    <a href="{base}/" class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>aitoolfit</a>
    <nav class="nav-links">
      <a href="{base}/"                class="nav-link" data-i18n="nav.home">Find AI</a>
      <a href="{base}/directory.html"  class="nav-link" data-i18n="nav.directory">AI Catalog</a>
      <a href="{base}/compare.html"    class="nav-link active" data-i18n="nav.compare">Compare</a>
      <a href="{base}/news.html"       class="nav-link" data-i18n="nav.news">News</a>
      <a href="{base}/tools.html"      class="nav-link" data-i18n="nav.tools">Toolbox</a>
      <a href="{base}/newsletter.html" class="nav-link" data-i18n="nav.newsletter">Newsletter</a>
    </nav>
    <div class="lang-picker">
      <button class="lang-btn" id="langBtn" onclick="toggleLangMenu()">{flag} {label} <span style="opacity:.5;font-size:10px" id="langArrow">▾</span></button>
      <div class="lang-menu" id="langMenu"></div>
    </div>
    <button class="btn-hamburger" onclick="toggleMenu()">&#9776;</button>
  </div>
  <nav class="mobile-menu" id="mobileMenu">
    <a href="{base}/"                class="nav-link" data-i18n="nav.home">Find AI</a>
    <a href="{base}/directory.html"  class="nav-link" data-i18n="nav.directory">AI Catalog</a>
    <a href="{base}/compare.html"    class="nav-link active" data-i18n="nav.compare">Compare</a>
    <a href="{base}/news.html"       class="nav-link" data-i18n="nav.news">News</a>
    <a href="{base}/tools.html"      class="nav-link" data-i18n="nav.tools">Toolbox</a>
    <a href="{base}/newsletter.html" class="nav-link" data-i18n="nav.newsletter">Newsletter</a>
  </nav>
</header>

<main class="cmp-wrap">
  <div class="cmp-hero">
    <h1>{esc(a["name"])} vs {esc(b["name"])}</h1>
    <p>{esc(description)}</p>
  </div>
  {table_html}
</main>

{footer_html}

<script src="/js/i18n.js"></script>
<script src="/js/main.js"></script>
<script>
// Ratings only — load asynchronously, doesn't block static content
(function() {{
  var SB = '{SB_URL}', KEY = '{SB_ANON}', NR = '{L["nr"]}';
  function fetchRating(slug) {{
    return fetch(SB+'/rest/v1/comments?tool_slug=eq.'+slug+'&approved=eq.true&select=rating',
      {{headers:{{apikey:KEY,Authorization:'Bearer '+KEY}}}}).then(function(r){{return r.json();}});
  }}
  function starsHtml(avg, count) {{
    if (!count) return '<span style="color:var(--text3);font-size:13px">'+NR+'</span>';
    var full = Math.round(avg);
    return '<span style="color:#f59e0b;font-size:13px;letter-spacing:1px">' + '★'.repeat(full) + '</span>' +
           '<span style="color:#555;font-size:13px;letter-spacing:1px">'   + '★'.repeat(5-full) + '</span>' +
           '<span style="font-size:13px;font-weight:600;color:#f0f0f0;margin-left:4px">' + avg.toFixed(1) +
           '</span><span style="font-size:11px;color:var(--text3);margin-left:4px">('+count+')</span>';
  }}
  ['{cmp["a"]}', '{cmp["b"]}'].forEach(function(slug) {{
    fetchRating(slug).then(function(rows) {{
      var arr = Array.isArray(rows) ? rows : [];
      var avg = arr.length ? arr.reduce(function(s,c){{return s+(+c.rating||0);}},0)/arr.length : 0;
      var slot = document.querySelector('[data-rating-slot="'+slug+'"]');
      if (slot) slot.innerHTML = starsHtml(avg, arr.length);
    }}).catch(function() {{
      var slot = document.querySelector('[data-rating-slot="'+slug+'"]');
      if (slot) slot.innerHTML = '<span style="color:var(--text3);font-size:13px">'+NR+'</span>';
    }});
  }});
}})();
</script>
</body>
</html>'''

def main():
    compare_dir = os.path.join(ROOT, 'compare')
    os.makedirs(compare_dir, exist_ok=True)

    total = 0
    skipped = 0
    for cmp in COMPARISONS:
        # English
        html = build_page(cmp, 'en', f'{BASE_URL}/compare/{cmp["slug"]}.html', '🇬🇧', 'EN')
        if html:
            with open(os.path.join(compare_dir, f'{cmp["slug"]}.html'), 'w', encoding='utf-8') as f:
                f.write(html)
            total += 1
        else:
            skipped += 1

        # Language versions
        for lang in LANGUAGES:
            flag  = LANG_FLAGS.get(lang, '🌐')
            label = LANG_LABELS.get(lang, lang.upper())
            rtl   = lang in LANG_RTL
            lang_dir = os.path.join(ROOT, lang, 'compare')
            os.makedirs(lang_dir, exist_ok=True)
            html = build_page(cmp, lang, f'{BASE_URL}/{lang}/compare/{cmp["slug"]}.html', flag, label, rtl)
            if html:
                with open(os.path.join(lang_dir, f'{cmp["slug"]}.html'), 'w', encoding='utf-8') as f:
                    f.write(html)
                total += 1
            else:
                skipped += 1

    print(f'Generated {total} comparison pages ({len(COMPARISONS)} comparisons × {1+len(LANGUAGES)} languages){"" if not skipped else f" ({skipped} skipped)"}')

if __name__ == '__main__':
    main()
