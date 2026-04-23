#!/usr/bin/env python3
"""
Generate static HTML shells for comparison pages.
Content is fetched from Supabase at runtime (no redeployment needed for content updates).

Usage:
  python3 scripts/generate-compare-pages.py

Run seed-comparisons.py first to populate the DB.
"""

import os

ROOT    = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
BASE_URL = 'https://www.mypedia.ai'

SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

LANGUAGES = ['es', 'fr', 'pt', 'ru', 'de', 'ua', 'he']
LANG_FLAGS  = {'en':'🇬🇧','ru':'🇷🇺','es':'🇪🇸','fr':'🇫🇷','pt':'🇧🇷','de':'🇩🇪','ua':'🇺🇦','he':'🇮🇱'}
LANG_LABELS = {'ua':'UA'}
LANG_RTL    = {'he'}

SLUGS = [
    'chatgpt-vs-claude',
    'cursor-vs-copilot',
    'midjourney-vs-flux',
    'suno-vs-udio',
    'kling-vs-runway',
]

def build_page(slug, lang, canonical_url, flag, label, rtl=False):
    dir_attr   = ' dir="rtl"' if rtl else ''
    lang_script = '' if lang == 'en' else f'<script>localStorage.setItem("lang","{lang}");</script>\n'
    base        = '' if lang == 'en' else f'/{lang}'

    hreflang = [
        f'<link rel="alternate" hreflang="x-default" href="{BASE_URL}/compare/{slug}.html">',
        f'<link rel="alternate" hreflang="en" href="{BASE_URL}/compare/{slug}.html">',
    ] + [f'<link rel="alternate" hreflang="{lc}" href="{BASE_URL}/{lc}/compare/{slug}.html">' for lc in LANGUAGES]

    return f'''<!DOCTYPE html>
<html lang="{lang}"{dir_attr}>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title id="pageTitle">Loading…</title>
<meta name="description" id="pageDesc" content="">
<link rel="canonical" href="{canonical_url}">
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<script async src="https://www.googletagmanager.com/gtag/js?id=G-L09EYV4S46"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){{dataLayer.push(arguments);}}gtag("js",new Date());gtag("config","G-L09EYV4S46");</script>
{lang_script}<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
{chr(10).join(hreflang)}
<style>
.cmp-wrap{{max-width:860px;margin:0 auto;padding:2rem 1.5rem 4rem}}
.cmp-hero{{text-align:center;margin-bottom:2.5rem}}
.cmp-hero h1{{font-family:var(--font-display);font-size:clamp(24px,4vw,38px);font-weight:700;margin-bottom:1rem}}
.cmp-hero p{{font-size:15px;color:var(--text2);line-height:1.75;max-width:640px;margin:0 auto}}
.cmp-table{{width:100%;border-collapse:collapse;margin-bottom:2.5rem;font-size:14px}}
.cmp-table th{{background:var(--bg3);color:var(--text);font-family:var(--font-display);font-weight:600;padding:12px 16px;text-align:left;border-bottom:1px solid var(--border2)}}
.cmp-table td{{padding:11px 16px;border-bottom:1px solid var(--border);color:var(--text2);vertical-align:top}}
.cmp-table tr:hover td{{background:var(--bg2)}}
.cmp-table td:first-child{{color:var(--text3);font-size:13px;width:30%}}
.best-grid{{display:grid;grid-template-columns:1fr 1fr;gap:16px;margin-bottom:2.5rem}}
.best-box{{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius);padding:1.25rem}}
.best-box h3{{font-family:var(--font-display);font-size:15px;font-weight:600;margin-bottom:.875rem;color:var(--accent)}}
.best-box ul{{list-style:none;display:flex;flex-direction:column;gap:8px;padding:0;margin:0}}
.best-box li{{font-size:13px;color:var(--text2);line-height:1.5;padding-left:1.25rem;position:relative}}
.best-box li::before{{content:"✓";position:absolute;left:0;color:var(--accent);font-weight:700}}
.verdict{{background:var(--bg2);border:1px solid var(--border2);border-radius:var(--radius);padding:1.5rem;margin-bottom:2.5rem}}
.verdict h2{{font-family:var(--font-display);font-size:18px;font-weight:600;margin-bottom:1rem}}
.verdict-row{{display:flex;flex-direction:column;gap:8px}}
.verdict-item{{font-size:14px;color:var(--text2);line-height:1.6}}
.verdict-item strong{{color:var(--text);font-family:var(--font-display)}}
.cmp-links{{display:flex;gap:12px;justify-content:center;flex-wrap:wrap;margin-bottom:2rem}}
.cmp-link{{display:inline-flex;align-items:center;gap:6px;background:var(--bg3);border:1px solid var(--border2);border-radius:10px;padding:10px 20px;font-size:13px;color:var(--text2);transition:color .15s,border-color .15s}}
.cmp-link:hover{{color:var(--text);border-color:var(--accent)}}
.section-label{{font-family:var(--font-display);font-size:11px;font-weight:600;text-transform:uppercase;letter-spacing:.05em;color:var(--text3);margin-bottom:.75rem}}
.cmp-loading{{text-align:center;padding:4rem;color:var(--text3);font-size:15px}}
@media(max-width:600px){{.best-grid{{grid-template-columns:1fr}}.cmp-table td:first-child{{width:40%}}}}
</style>
</head>
<body>
<header class="site-header">
  <div class="header-inner">
    <a href="{base}/" class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><path d="M6 19 L6 7 L13 14 L20 7 L20 19" stroke="#fff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" fill="none"/></svg>MyPedia</a>
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

<div class="cmp-wrap" id="cmpWrap">
  <div class="cmp-loading">Loading…</div>
</div>

<footer class="site-footer">
  <div class="footer-inner">
    <div>
      <div class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><path d="M6 19 L6 7 L13 14 L20 7 L20 19" stroke="#fff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" fill="none"/></svg>MyPedia</div>
      <p class="footer-desc" data-i18n="footer.desc">Best AI tools catalog in one place.</p>
    </div>
    <div>
      <div class="footer-col-title" data-i18n="footer.nav">Navigation</div>
      <div class="footer-col-links">
        <a href="{base}/" data-i18n="nav.home">Find AI</a>
        <a href="{base}/directory.html" data-i18n="nav.directory">AI Catalog</a>
        <a href="{base}/compare.html" data-i18n="nav.compare">Compare</a>
        <a href="{base}/news.html" data-i18n="nav.news">News</a>
      </div>
    </div>
    <div>
      <div class="footer-col-title">Quick Compare</div>
      <div class="footer-col-links">
        <a href="{base}/compare/chatgpt-vs-claude.html">ChatGPT vs Claude</a>
        <a href="{base}/compare/cursor-vs-copilot.html">Cursor vs Copilot</a>
        <a href="{base}/compare/midjourney-vs-flux.html">Midjourney vs Flux</a>
        <a href="{base}/compare/suno-vs-udio.html">Suno vs Udio</a>
        <a href="{base}/compare/kling-vs-runway.html">Kling vs Runway</a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <span data-i18n="footer.madeWith">Made with ♥ and Claude</span>
    <span data-i18n="footer.rights">© 2026 MyPedia</span>
  </div>
</footer>

<script src="/js/i18n.js"></script>
<script src="/js/main.js"></script>
<script>
(function() {{
  var SB  = '{SB_URL}';
  var KEY = '{SB_ANON}';
  var SLUG = '{slug}';
  var LANG = '{lang}';

  function esc(s) {{
    return String(s||'').replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
  }}

  function render(d) {{
    // Update page title and meta
    document.getElementById('pageTitle').textContent = d.title || (d.tool_a + ' vs ' + d.tool_b);
    var md = document.getElementById('pageDesc');
    if (md) md.setAttribute('content', d.meta_desc || '');

    var tableRows = (d.table_data || []).map(function(r) {{
      return '<tr><td>' + esc(r[0]) + '</td><td>' + esc(r[1]) + '</td><td>' + esc(r[2]) + '</td></tr>';
    }}).join('');

    var bestA = (d.best_a || []).map(function(b) {{ return '<li>' + esc(b) + '</li>'; }}).join('');
    var bestB = (d.best_b || []).map(function(b) {{ return '<li>' + esc(b) + '</li>'; }}).join('');

    var toolBase = LANG === 'en' ? '' : '/' + LANG;

    document.getElementById('cmpWrap').innerHTML =
      '<div class="cmp-hero">' +
        '<h1>' + esc(d.tool_a) + ' vs ' + esc(d.tool_b) + '</h1>' +
        '<p>' + esc(d.intro) + '</p>' +
      '</div>' +
      '<div class="section-label">Features</div>' +
      '<table class="cmp-table"><thead><tr><th>Feature</th><th>' + esc(d.tool_a) + '</th><th>' + esc(d.tool_b) + '</th></tr></thead>' +
      '<tbody>' + tableRows + '</tbody></table>' +
      '<div class="section-label">Best for</div>' +
      '<div class="best-grid">' +
        '<div class="best-box"><h3>Best for ' + esc(d.tool_a) + '</h3><ul>' + bestA + '</ul></div>' +
        '<div class="best-box"><h3>Best for ' + esc(d.tool_b) + '</h3><ul>' + bestB + '</ul></div>' +
      '</div>' +
      '<div class="verdict"><h2>Verdict</h2><div class="verdict-row">' +
        '<div class="verdict-item"><strong>Choose ' + esc(d.tool_a) + '</strong> — ' + esc(d.verdict_a) + '</div>' +
        '<div class="verdict-item"><strong>Choose ' + esc(d.tool_b) + '</strong> — ' + esc(d.verdict_b) + '</div>' +
      '</div></div>' +
      '<div class="cmp-links">' +
        '<a class="cmp-link" href="' + toolBase + '/tools/' + esc(d.tool_a_slug) + '.html">Read full ' + esc(d.tool_a) + ' review →</a>' +
        '<a class="cmp-link" href="' + toolBase + '/tools/' + esc(d.tool_b_slug) + '.html">Read full ' + esc(d.tool_b) + ' review →</a>' +
      '</div>';
  }}

  fetch(SB + '/rest/v1/comparisons?slug=eq.' + SLUG + '&lang=eq.' + LANG,
    {{headers: {{apikey: KEY, Authorization: 'Bearer ' + KEY}}}})
    .then(function(r) {{ return r.json(); }})
    .then(function(rows) {{
      if (rows && rows[0]) {{
        render(rows[0]);
      }} else {{
        // Fallback to English if lang not found
        fetch(SB + '/rest/v1/comparisons?slug=eq.' + SLUG + '&lang=eq.en',
          {{headers: {{apikey: KEY, Authorization: 'Bearer ' + KEY}}}})
          .then(function(r) {{ return r.json(); }})
          .then(function(rows2) {{ if (rows2 && rows2[0]) render(rows2[0]); }});
      }}
    }})
    .catch(function(e) {{
      document.getElementById('cmpWrap').innerHTML = '<div class="cmp-loading">Failed to load content.</div>';
    }});
}})();
</script>
</body>
</html>'''

def main():
    # English compare/ directory
    compare_dir = os.path.join(ROOT, 'compare')
    os.makedirs(compare_dir, exist_ok=True)

    total = 0
    for slug in SLUGS:
        # English
        html = build_page(slug, 'en', f'{BASE_URL}/compare/{slug}.html', '🇬🇧', 'EN')
        with open(os.path.join(compare_dir, f'{slug}.html'), 'w') as f:
            f.write(html)
        total += 1

        # Language versions
        for lang in LANGUAGES:
            flag  = LANG_FLAGS.get(lang, '🌐')
            label = LANG_LABELS.get(lang, lang.upper())
            rtl   = lang in LANG_RTL
            lang_dir = os.path.join(ROOT, lang, 'compare')
            os.makedirs(lang_dir, exist_ok=True)
            html = build_page(slug, lang, f'{BASE_URL}/{lang}/compare/{slug}.html', flag, label, rtl)
            with open(os.path.join(lang_dir, f'{slug}.html'), 'w') as f:
                f.write(html)
            total += 1

    print(f'Generated {total} comparison pages ({len(SLUGS)} comparisons × {1 + len(LANGUAGES)} languages)')

if __name__ == '__main__':
    main()
