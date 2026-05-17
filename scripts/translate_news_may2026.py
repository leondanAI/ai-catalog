#!/usr/bin/env python3
"""
Translate 16 missing May 2026 news articles to 7 languages.
Fetches EN articles from Supabase, translates via Claude API, outputs SQL.

Run: python3 scripts/translate_news_may2026.py
Then: paste output SQL into Supabase SQL Editor
Then: python3 scripts/generate-news-pages.py && python3 scripts/generate-news-snapshot.py
"""

import anthropic, json, time, re, urllib.request

client = anthropic.Anthropic()

SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

MISSING_SLUGS = [
    'amazon-q-developer-replaced-by-kiro',
    'notion-developer-platform-35',
    'google-gemini-intelligence-android-2026',
    'dalle-3-retired-gpt-image-2-replaces',
    'krea-ai-krea-2-foundation-model',
    'cursor-34-agentic-dev-environments',
    'heygen-pricing-legacy-unlimited-removed',
    'kling-v35-1080p-60fps-2min',
    'midjourney-v81-2k-public-profiles',
    'luma-ray314-1080p-4x-faster',
    'pika-25-pikastream-ai-social-app',
    'figma-mcp-server-ai-agents-canvas',
    'openai-gpt-55-instant-default-model',
    'suno-series-d-5-billion-valuation',
    'google-io-2026-gemini-announcement',
    'anthropic-claude-design-launch',
]

CAT_LABELS = {
    'models':     {'ru':'Модели',      'es':'Modelos',      'de':'Modelle',    'ua':'Моделі',      'he':'מודלים',  'fr':'Modèles',  'pt':'Modelos'},
    'tools':      {'ru':'Инструменты', 'es':'Herramientas', 'de':'Tools',      'ua':'Інструменти', 'he':'כלים',    'fr':'Outils',   'pt':'Ferramentas'},
    'business':   {'ru':'Бизнес',      'es':'Negocios',     'de':'Wirtschaft', 'ua':'Бізнес',      'he':'עסקים',   'fr':'Business', 'pt':'Negócios'},
    'research':   {'ru':'Исследования','es':'Investigación','de':'Forschung',  'ua':'Дослідження', 'he':'מחקר',    'fr':'Recherche','pt':'Pesquisa'},
    'regulation': {'ru':'Регулирование','es':'Regulación',  'de':'Regulierung','ua':'Регулювання', 'he':'רגולציה', 'fr':'Réglementation','pt':'Regulamentação'},
}

LANG_NAMES = {
    'ru': 'Russian', 'es': 'Spanish', 'de': 'German',
    'ua': 'Ukrainian', 'he': 'Hebrew', 'fr': 'French', 'pt': 'Portuguese',
}

def sb_get(path):
    req = urllib.request.Request(f'{SB_URL}/rest/v1/{path}',
        headers={'apikey': SB_KEY, 'Authorization': f'Bearer {SB_KEY}'})
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

def fetch_en_articles():
    slugs_filter = ','.join(f'"{s}"' for s in MISSING_SLUGS)
    fields = 'slug,title,summary,body,date,source,category,cat_label,cat_color'
    rows = sb_get(f'news?lang=eq.en&published=eq.true&slug=in.({slugs_filter})&select={fields}')
    return {r['slug']: r for r in rows}

def translate(item, lang):
    lang_name = LANG_NAMES[lang]
    prompt = f"""Translate this AI news article to {lang_name}.
Rules:
- Keep all HTML tags exactly as-is (<p>, <h2>, <strong>, <ul>, <li>, etc.)
- Keep company names, product names, model names, numbers in English
- Keep technical terms in English (API, MCP, IDE, benchmark names, etc.)
- Translate naturally, not word-for-word
- For Hebrew: use right-to-left natural phrasing

Title: {item['title']}

Summary: {item['summary']}

Body HTML:
{item['body']}

Return ONLY valid JSON with these exact keys:
{{"title": "...", "summary": "...", "body": "..."}}"""

    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=3000,
        messages=[{'role': 'user', 'content': prompt}]
    )
    text = msg.content[0].text.strip()
    m = re.search(r'\{[\s\S]+\}', text)
    if m:
        text = m.group(0)
    return json.loads(text)

def make_insert(item, lang, title, summary, body):
    cat = item['category']
    cat_label = CAT_LABELS.get(cat, {}).get(lang, item.get('cat_label', cat.title()))
    cat_color = item['cat_color']
    source = item['source']
    date = item['date']
    slug = item['slug']

    # Use dollar-quoting for all text fields to avoid apostrophe issues
    return f"""('{slug}', '{lang}', '{cat}', $${cat_label}$$, '{cat_color}', $${source}$$, '{date}',
$${title}$$,
$${summary}$$,
$${body}$$,
true)"""

def main():
    print('Fetching EN articles from Supabase...')
    articles = fetch_en_articles()
    print(f'  {len(articles)} articles found\n')

    missing = [s for s in MISSING_SLUGS if s not in articles]
    if missing:
        print(f'WARNING — not found in Supabase: {missing}\n')

    rows = []
    for slug in MISSING_SLUGS:
        item = articles.get(slug)
        if not item:
            continue

        print(f'Translating: {slug}')
        for lang in ['ru', 'es', 'de', 'ua', 'he', 'fr', 'pt']:
            try:
                t = translate(item, lang)
                rows.append(make_insert(item, lang, t['title'], t['summary'], t['body']))
                print(f'  {lang} ✓', flush=True)
                time.sleep(0.2)
            except Exception as e:
                print(f'  {lang} ✗ {e}')
                # Fallback: EN content with translated cat_label
                rows.append(make_insert(item, lang, item['title'], item['summary'], item['body'] or ''))

    sql = '\n'.join([
        '-- Translations for 16 May 2026 news articles — 7 languages',
        '-- Run in Supabase SQL Editor',
        '',
        'INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES',
        ',\n\n'.join(rows) + ';',
    ])

    out = 'scripts/news_may2026_translated.sql'
    with open(out, 'w', encoding='utf-8') as f:
        f.write(sql)

    print(f'\nDone — {len(rows)} rows written to {out}')
    print('Next: paste into Supabase SQL Editor, then run generate-news-pages.py + generate-news-snapshot.py')

if __name__ == '__main__':
    main()
