#!/usr/bin/env python3
"""
Translate adobe-creative-agent-cc-orchestration to 7 languages.
Run: python3 scripts/translate_adobe_news.py
Then: paste scripts/adobe_news_translated.sql into Supabase SQL Editor
Then: python3 scripts/generate-news-pages.py && python3 scripts/generate-news-snapshot.py && git push
"""

import anthropic, json, time, re, urllib.request

client = anthropic.Anthropic()

SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

SLUG = 'adobe-creative-agent-cc-orchestration'

CAT_LABELS = {
    'ru': 'Инструменты', 'es': 'Herramientas', 'de': 'Tools',
    'ua': 'Інструменти', 'he': 'כלים', 'fr': 'Outils', 'pt': 'Ferramentas',
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

def translate(item, lang):
    prompt = f"""Translate this AI news article to {LANG_NAMES[lang]}.
Rules:
- Keep all HTML tags exactly as-is (<p>, <h2>, <strong>, <ul>, <li>, etc.)
- Keep company names, product names, model names, numbers in English
- Keep technical terms in English (API, MCP, IDE, etc.)
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
    return json.loads(m.group(0))

def main():
    print(f'Fetching EN article: {SLUG}')
    rows = sb_get(f'news?lang=eq.en&slug=eq.{SLUG}&select=slug,title,summary,body,date,source,category,cat_label,cat_color')
    if not rows:
        print('ERROR: article not found in Supabase')
        return
    item = rows[0]
    print(f'  Found: {item["title"][:60]}')

    sql_rows = []
    for lang in ['ru', 'es', 'de', 'ua', 'he', 'fr', 'pt']:
        print(f'  Translating {lang}...', flush=True)
        try:
            t = translate(item, lang)
            sql_rows.append(
                f"('{SLUG}', '{lang}', 'tools', $${CAT_LABELS[lang]}$$, '{item['cat_color']}', $${item['source']}$$, '{item['date']}',\n"
                f"$${t['title']}$$,\n$${t['summary']}$$,\n$${t['body']}$$,\ntrue)"
            )
            print(f'    {lang} ✓')
            time.sleep(0.2)
        except Exception as e:
            print(f'    {lang} ✗ {e}')

    sql = '\n'.join([
        f'-- Translation: {SLUG} — 7 languages',
        '-- Paste into Supabase SQL Editor',
        '',
        'INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES',
        ',\n\n'.join(sql_rows),
        'ON CONFLICT (slug, lang) DO UPDATE SET',
        '  title = EXCLUDED.title,',
        '  summary = EXCLUDED.summary,',
        '  body = EXCLUDED.body,',
        '  cat_label = EXCLUDED.cat_label,',
        '  published = EXCLUDED.published;',
    ])

    out = 'scripts/adobe_news_translated.sql'
    with open(out, 'w', encoding='utf-8') as f:
        f.write(sql)
    print(f'\nDone → {out}')
    print('Next: paste SQL into Supabase, then run generate-news-pages.py + generate-news-snapshot.py + git push')

if __name__ == '__main__':
    main()
