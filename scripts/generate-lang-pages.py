#!/usr/bin/env python3
"""
Generate translated HTML pages for each language.
Creates /ru/, /es/, /fr/ etc. subdirectories for main pages.
Also injects hreflang tags into all English main pages.
Run: python3 scripts/generate-lang-pages.py
"""

import os, re

BASE_URL = 'https://www.mypedia.ai'
ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

LANGUAGES = [
    ('es', 'es'),   ('fr', 'fr'),   ('pt', 'pt'),   ('ru', 'ru'),
    ('de', 'de'),   ('ua', 'ua'),   ('he', 'he'),
]

PAGES = ['index.html', 'directory.html', 'news.html', 'compare.html', 'tools.html', 'newsletter.html']

# Key i18n strings per page (title_key, desc_key)
PAGE_META_KEYS = {
    'index.html':      (['hero.title1', 'hero.title2'], 'hero.sub'),
    'directory.html':  (['dir.title'],                  'dir.sub'),
    'news.html':       (['news.title'],                 'news.sub'),
    'compare.html':    (['compare.title'],              'compare.sub'),
    'tools.html':      (['tools.title'],                'tools.sub'),
    'newsletter.html': (['nl.title'],                   'nl.sub'),
}

def parse_i18n():
    """Extract all translations from i18n.js as a dict: {lang: {key: value}}"""
    path = os.path.join(ROOT_DIR, 'js', 'i18n.js')
    with open(path) as f:
        content = f.read()

    result = {}
    lang_blocks = list(re.finditer(r'\n    (\w{2,3}):\s*\{', content))

    for i, m in enumerate(lang_blocks):
        lang  = m.group(1)
        start = m.end()                                           # after opening {
        end   = lang_blocks[i+1].start() if i+1 < len(lang_blocks) else len(content)
        block = content[start:end]
        # Robust: handles backslash-escaped quotes inside values
        pairs = re.findall(r"'([^']+)':\s*'((?:[^'\\]|\\.)*)'", block)
        if lang not in result:   # keep first occurrence only (translations, not metadata)
            result[lang] = {k: v.replace("\\'", "'") for k, v in pairs}

    return result

def get_meta(translations, lang, page):
    t = translations.get(lang, {})
    en = translations.get('en', {})
    title_keys, desc_key = PAGE_META_KEYS.get(page, (['hero.title1'], 'hero.sub'))

    # Title — join keys, fall back to English
    parts = []
    for k in title_keys:
        parts.append(t.get(k) or en.get(k, ''))
    title = ' '.join(p for p in parts if p).strip() + ' | MyPedia'

    # Description — fall back to English
    desc = t.get(desc_key) or en.get(desc_key, '')

    return title, desc

def hreflang_tags(page):
    """Generate full set of hreflang <link> tags for a given page."""
    # index.html lives at / (root), not /index.html — use canonical form
    en_url = f'{BASE_URL}/' if page == 'index.html' else f'{BASE_URL}/{page}'
    lines = [f'<link rel="alternate" hreflang="x-default" href="{en_url}">',
             f'<link rel="alternate" hreflang="en" href="{en_url}">']
    for code, hl in LANGUAGES:
        lines.append(f'<link rel="alternate" hreflang="{hl}" href="{BASE_URL}/{code}/{page}">')
    return '\n'.join(lines)

def fix_nav_links(html, lang):
    """Rewrite intra-site nav links to point to language subdirectory."""
    # Absolute root href="/"
    html = re.sub(r'href="/"', f'href="/{lang}/"', html)
    # Relative page links: href="directory.html" → href="/ru/directory.html"
    for page in PAGES:
        html = re.sub(rf'href="{page}"', f'href="/{lang}/{page}"', html)
    # Absolute page links: href="/directory.html" → href="/ru/directory.html"
    for page in PAGES:
        html = re.sub(rf'href="/{page}"', f'href="/{lang}/{page}"', html)
    # Absolute page links with query strings: href="/compare.html?..." → href="/ru/compare.html?..."
    for page in PAGES:
        html = re.sub(rf'href="/{page}\?', f'href="/{lang}/{page}?', html)
    # Tool detail links: href="/tools/chatgpt.html" → href="/ru/tools/chatgpt.html"
    # Exclude toolbox utility pages (they only exist in English)
    def rewrite_tool_link(m):
        slug = m.group(1).replace('.html', '')
        if '${' in slug:  # skip JS template literals
            return m.group(0)  # keep as-is
        return f'href="/{lang}/tools/{m.group(1)}"'
    html = re.sub(r'href="/tools/([^"]+\.html)"', rewrite_tool_link, html)
    # News article links: href="/news-article.html?slug=...&lang=en" → keep path, fix lang param
    html = re.sub(r'(href="/news-article\.html\?[^"]*&amp;lang=)en"', rf'\g<1>{lang}"', html)
    html = re.sub(r'(href="/news-article\.html\?[^"]*&lang=)en"', rf'\g<1>{lang}"', html)
    return html

def inject_hreflang(html, page):
    """Replace or inject hreflang tags just before </head>."""
    # Remove any existing hreflang tags first to avoid duplicates
    html = re.sub(r'<link rel="alternate" hreflang="[^"]*"[^>]*>\n?', '', html)
    tags = hreflang_tags(page)
    return html.replace('</head>', tags + '\n</head>', 1)

LANG_FLAGS = {
    'en': '🇬🇧', 'ru': '🇷🇺', 'es': '🇪🇸', 'fr': '🇫🇷',
    'pt': '🇧🇷', 'de': '🇩🇪', 'ua': '🇺🇦', 'he': '🇮🇱',
}
LANG_LABELS = {
    'ua': 'UA',
}

def generate_lang_page(html, lang, page, title, desc):
    # Set html lang attribute
    html = re.sub(r'<html[^>]*>', f'<html lang="{lang}">', html)

    # Update lang-picker button to show correct flag
    flag = LANG_FLAGS.get(lang, '🌐')
    label = LANG_LABELS.get(lang, lang.upper())
    html = re.sub(
        r'(<button class="lang-btn"[^>]*>)[^<]*(<span)',
        rf'\g<1>{flag} {label} \g<2>',
        html
    )

    # Fix relative CSS/JS paths to absolute so they work from subdirectory
    html = html.replace('href="css/', 'href="/css/')
    html = html.replace('src="js/', 'src="/js/')

    # Update title
    html = re.sub(r'<title>[^<]*</title>', f'<title>{title}</title>', html)

    # Update meta description
    html = re.sub(r'<meta name="description" content="[^"]*"',
                  f'<meta name="description" content="{desc}"', html)

    # Update canonical
    html = re.sub(r'<link rel="canonical"[^>]*>',
                  f'<link rel="canonical" href="{BASE_URL}/{lang}/{page}">', html)

    # Update og:url
    html = re.sub(r'<meta property="og:url"[^>]*>',
                  f'<meta property="og:url" content="{BASE_URL}/{lang}/{page}">', html)

    # Update og:title
    html = re.sub(r'<meta property="og:title"[^>]*>',
                  f'<meta property="og:title" content="{title}">', html)

    # Add hreflang tags
    html = inject_hreflang(html, page)

    # Fix nav links to stay within language
    html = fix_nav_links(html, lang)

    # Inject language-setting script BEFORE first <script src=
    # Sets localStorage early (so i18n.js picks up correct lang on init),
    # then re-runs onLangChange on DOMContentLoaded to translate dynamic sections.
    lang_script = (
        f'<script>localStorage.setItem("lang","{lang}");'
        f'document.addEventListener("DOMContentLoaded",function(){{'
        f'if(typeof I18N!=="undefined")I18N.set("{lang}");'
        f'}});</script>\n'
    )
    html = re.sub(r'(<script\s+src=)', lang_script + r'\1', html, count=1)

    return html

def update_english_pages(pages):
    """Add hreflang tags to existing English pages."""
    for page in pages:
        path = os.path.join(ROOT_DIR, page)
        if not os.path.exists(path):
            continue
        with open(path) as f:
            html = f.read()

        # Always refresh hreflang (inject_hreflang removes old tags first)
        html = inject_hreflang(html, page)
        with open(path, 'w') as f:
            f.write(html)
        print(f'  ✓ Updated hreflang in {page}')

def update_sitemap(pages):
    """Add all language page URLs to sitemap.xml."""
    sitemap_path = os.path.join(ROOT_DIR, 'sitemap.xml')
    with open(sitemap_path) as f:
        sitemap = f.read()

    new_entries = []
    for code, _ in LANGUAGES:
        for page in pages:
            url = f'{BASE_URL}/{code}/{page}'
            if url not in sitemap:
                new_entries.append(f'''  <url>
    <loc>{url}</loc>
    <lastmod>2026-04-22</lastmod>
    <changefreq>weekly</changefreq>
    <priority>0.7</priority>
  </url>''')

    if new_entries:
        sitemap = sitemap.replace('</urlset>', '\n'.join(new_entries) + '\n</urlset>')
        with open(sitemap_path, 'w') as f:
            f.write(sitemap)
        print(f'  ✓ Added {len(new_entries)} URLs to sitemap.xml')

TOOLBOX_PAGES = [
    'token-counter','text-diff','word-counter','case-converter','regex-tester',
    'json-formatter','csv-json','markdown-preview','password-generator','base64',
]

def generate_toolbox_pages(code):
    """Copy toolbox utility pages into /{lang}/tools/ with lang injection."""
    tools_dir = os.path.join(ROOT_DIR, code, 'tools')
    os.makedirs(tools_dir, exist_ok=True)
    count = 0
    for slug in TOOLBOX_PAGES:
        src_path = os.path.join(ROOT_DIR, 'tools', f'{slug}.html')
        if not os.path.exists(src_path):
            continue
        with open(src_path) as f:
            html = f.read()
        # Fix ../css/ and ../js/ relative paths to absolute
        html = html.replace('href="../css/', 'href="/css/')
        html = html.replace('src="../js/', 'src="/js/')
        # Fix ../page.html nav links to /{lang}/page.html
        for page in PAGES:
            html = html.replace(f'href="../{page}"', f'href="/{code}/{page}"')
        html = html.replace('href="../index.html"', f'href="/{code}/"')
        # Fix "← All Tools" back link
        html = html.replace('href="../tools.html"', f'href="/{code}/tools.html"')
        # Inject lang script
        lang_script = (
            f'<script>localStorage.setItem("lang","{code}");'
            f'document.addEventListener("DOMContentLoaded",function(){{'
            f'if(typeof I18N!=="undefined")I18N.set("{code}");'
            f'}});</script>\n'
        )
        html = re.sub(r'(<script\s+src=)', lang_script + r'\1', html, count=1)
        # Fix canonical and og:url
        html = re.sub(r'<link rel="canonical"[^>]*>',
                      f'<link rel="canonical" href="{BASE_URL}/{code}/tools/{slug}.html">', html)
        html = re.sub(r'<meta property="og:url"[^>]*>',
                      f'<meta property="og:url" content="{BASE_URL}/{code}/tools/{slug}.html">', html)
        # Inject script to translate h1 and short description from toolbox DB
        header_script = (
            f'<script>'
            f'(function(){{'
            f'var SB="https://lbjdwkvkkndvofysyssy.supabase.co";'
            f'var KEY="sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG";'
            f'function updateToolHeader(lang){{'
            f'if(lang==="en")return;'
            f'fetch(SB+"/rest/v1/toolbox?lang=eq."+lang+"&id=eq.{slug}",'
            f'{{headers:{{apikey:KEY,Authorization:"Bearer "+KEY}}}})'
            f'.then(function(r){{return r.json();}})'
            f'.then(function(d){{'
            f'if(!d[0])return;'
            f'var h=document.querySelector(".tool-head h1");'
            f'var p=document.querySelector(".tool-head p");'
            f'if(h&&d[0].title)h.textContent=d[0].title;'
            f'if(p&&d[0].description)p.textContent=d[0].description;'
            f'}}).catch(function(){{}});'
            f'}}'
            f'document.addEventListener("DOMContentLoaded",function(){{'
            f'updateToolHeader(localStorage.getItem("lang")||"en");'
            f'}});'
            f'var _orig=window.onLangChange;'
            f'window.onLangChange=function(){{'
            f'if(_orig)_orig();'
            f'updateToolHeader(localStorage.getItem("lang")||"en");'
            f'}};'
            f'}})();'
            f'</script>\n'
        )
        html = html.replace('</body>', header_script + '</body>', 1)
        out_path = os.path.join(tools_dir, f'{slug}.html')
        with open(out_path, 'w') as f:
            f.write(html)
        count += 1
    return count

def main():
    print('Parsing i18n translations…')
    translations = parse_i18n()
    print(f'Found {len(translations)} languages')

    print('\nGenerating language pages…')
    for code, _ in LANGUAGES:
        lang_dir = os.path.join(ROOT_DIR, code)
        os.makedirs(lang_dir, exist_ok=True)

        for page in PAGES:
            src_path = os.path.join(ROOT_DIR, page)
            if not os.path.exists(src_path):
                continue

            with open(src_path) as f:
                html = f.read()

            title, desc = get_meta(translations, code, page)
            out_html = generate_lang_page(html, code, page, title, desc)

            out_path = os.path.join(lang_dir, page)
            with open(out_path, 'w') as f:
                f.write(out_html)

        tb_count = generate_toolbox_pages(code)
        print(f'  ✓ /{code}/ — {len(PAGES)} pages + {tb_count} toolbox pages')

    print('\nUpdating English pages with hreflang…')
    update_english_pages(PAGES)

    print('\nUpdating sitemap…')
    update_sitemap(PAGES)

    total = len(LANGUAGES) * len(PAGES)
    print(f'\nDone — {total} language pages generated across {len(LANGUAGES)} languages.')

if __name__ == '__main__':
    main()
