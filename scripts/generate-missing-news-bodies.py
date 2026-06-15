#!/usr/bin/env python3
"""
Generate translated bodies for 3 news articles missing body in Supabase.
Uses Anthropic API to translate EN body to 7 languages.
Outputs SQL file to run in Supabase SQL Editor.

Run: python3 scripts/generate-missing-news-bodies.py
"""

import re, json, urllib.request, os, sys

ANTHROPIC_KEY = os.environ.get('ANTHROPIC_API_KEY', '')
SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

ARTICLES = [
    'karpathy-joins-anthropic',
    'bytedance-70b-ai-capex',
    'claude-opus-48-dynamic-workflows'
]

LANGS = {
    'en': 'English',
    'ru': 'Russian',
    'ua': 'Ukrainian',
    'es': 'Spanish',
    'de': 'German',
    'he': 'Hebrew',
    'fr': 'French',
    'pt': 'Portuguese (Brazilian)',
}

ROOT_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))


def extract_en_body(slug):
    news_dir = os.path.join(ROOT_DIR, 'news')
    path = os.path.join(news_dir, f'{slug}.html')
    with open(path) as f:
        content = f.read()
    m = re.search(r'<div class="article-body">(.*?)</div>\s*</div>\s*<footer', content, re.DOTALL)
    if m:
        return m.group(1).strip()
    raise ValueError(f'Body not found in {path}')


def get_en_title(slug):
    news_dir = os.path.join(ROOT_DIR, 'news')
    path = os.path.join(news_dir, f'{slug}.html')
    with open(path) as f:
        content = f.read()
    m = re.search(r'<h1[^>]*>(.*?)</h1>', content, re.DOTALL)
    if m:
        return re.sub(r'<[^>]+>', '', m.group(1)).strip()
    return slug


def translate_body(body, target_lang_name, article_title):
    prompt = f"""Translate this HTML article body to {target_lang_name}.
Keep all HTML tags (<p>, <h2>, <strong>, <em>) exactly as-is.
Only translate the text content, not the tags.
The article is about AI technology for an AI tools directory site.
Article: "{article_title}"

HTML body to translate:
{body}

Return ONLY the translated HTML body, no explanation."""

    payload = json.dumps({
        'model': 'claude-haiku-4-5-20251001',
        'max_tokens': 2048,
        'messages': [{'role': 'user', 'content': prompt}]
    }).encode()

    req = urllib.request.Request(
        'https://api.anthropic.com/v1/messages',
        data=payload,
        headers={
            'x-api-key': ANTHROPIC_KEY,
            'anthropic-version': '2023-06-01',
            'content-type': 'application/json'
        }
    )
    with urllib.request.urlopen(req) as resp:
        result = json.load(resp)
    return result['content'][0]['text'].strip()


def escape_sql_body(body):
    return body.replace("'", "''")


def main():
    out_lines = ['-- Missing news article bodies — all languages', '-- Run in Supabase SQL Editor', '']

    for slug in ARTICLES:
        print(f'\n=== Processing: {slug} ===')
        en_body = extract_en_body(slug)
        en_title = get_en_title(slug)
        print(f'  EN body: {len(en_body)} chars, title: {en_title[:60]}')

        # EN first (no translation needed)
        out_lines.append(f"-- {slug}")
        safe_body = escape_sql_body(en_body)
        out_lines.append(f"UPDATE news SET body = '{safe_body}' WHERE slug = '{slug}' AND lang = 'en';")
        out_lines.append('')

        # Translate to other 7 languages
        for lang_code, lang_name in LANGS.items():
            if lang_code == 'en':
                continue
            print(f'  Translating to {lang_name}...', flush=True)
            try:
                translated = translate_body(en_body, lang_name, en_title)
                safe = escape_sql_body(translated)
                out_lines.append(f"UPDATE news SET body = '{safe}' WHERE slug = '{slug}' AND lang = '{lang_code}';")
                out_lines.append('')
            except Exception as e:
                print(f'  ERROR translating {lang_code}: {e}')
                out_lines.append(f"-- ERROR translating {slug} to {lang_code}: {e}")

    output_path = os.path.join(os.path.dirname(__file__), 'missing_news_bodies.sql')
    with open(output_path, 'w') as f:
        f.write('\n'.join(out_lines))

    print(f'\nSQL written to: {output_path}')
    print('Next: run in Supabase SQL Editor, then python3 scripts/generate-news-pages.py')


if __name__ == '__main__':
    main()
