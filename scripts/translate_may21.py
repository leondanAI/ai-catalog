#!/usr/bin/env python3
"""
Translate May 21, 2026 batch to 7 languages:
  - 4 news items (google-io-2026-highlights, openai-dell-codex-enterprise,
                  cursor-composer-25-kimi-k25, musk-openai-lawsuit-dismissed)
  - 1 tool update (cursor)

Run: python3 scripts/translate_may21.py
Then: paste scripts/update_may21_translated.sql into Supabase SQL Editor
Then: python3 scripts/generate-news-pages.py && python3 scripts/generate-news-snapshot.py && git push
"""

import anthropic, json, time, re, urllib.request

client = anthropic.Anthropic()

SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

NEWS_SLUGS = [
    'google-io-2026-highlights',
    'openai-dell-codex-enterprise',
    'cursor-composer-25-kimi-k25',
    'musk-openai-lawsuit-dismissed',
]

TOOL_SLUGS = ['cursor']

LANG_NAMES = {
    'ru': 'Russian', 'es': 'Spanish', 'de': 'German',
    'ua': 'Ukrainian', 'he': 'Hebrew', 'fr': 'French', 'pt': 'Portuguese',
}

CAT_LABELS = {
    'models':     {'ru':'Модели',       'es':'Modelos',      'de':'Modelle',     'ua':'Моделі',      'he':'מודלים',  'fr':'Modèles',          'pt':'Modelos'},
    'tools':      {'ru':'Инструменты',  'es':'Herramientas', 'de':'Tools',       'ua':'Інструменти', 'he':'כלים',    'fr':'Outils',           'pt':'Ferramentas'},
    'business':   {'ru':'Бизнес',       'es':'Negocios',     'de':'Wirtschaft',  'ua':'Бізнес',      'he':'עסקים',   'fr':'Business',         'pt':'Negócios'},
    'research':   {'ru':'Исследования', 'es':'Investigación','de':'Forschung',   'ua':'Дослідження', 'he':'מחקר',    'fr':'Recherche',        'pt':'Pesquisa'},
    'regulation': {'ru':'Регулирование','es':'Regulación',   'de':'Regulierung', 'ua':'Регулювання', 'he':'רגולציה', 'fr':'Réglementation',   'pt':'Regulamentação'},
}


def sb_get(path):
    req = urllib.request.Request(f'{SB_URL}/rest/v1/{path}',
        headers={'apikey': SB_KEY, 'Authorization': f'Bearer {SB_KEY}'})
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())


def dq(val):
    if val is None:
        return 'NULL'
    return f'$${val}$$'


def arr_dq(items):
    if not items:
        return "ARRAY[]::text[]"
    return 'ARRAY[' + ','.join(f'$${item}$$' for item in items) + ']'


# ── NEWS ──────────────────────────────────────────────────────────────────────

def fetch_news():
    slugs_filter = ','.join(f'"{s}"' for s in NEWS_SLUGS)
    rows = sb_get(f'news?lang=eq.en&published=eq.true&slug=in.({slugs_filter})'
                  f'&select=slug,title,summary,body,date,source,category,cat_label,cat_color')
    return {r['slug']: r for r in rows}


def translate_news(item, lang):
    prompt = f"""Translate this AI news article to {LANG_NAMES[lang]}.
Rules:
- Keep all HTML tags exactly as-is (<p>, <h2>, <strong>, <iframe>, <div>, etc.)
- Keep the YouTube iframe block completely unchanged — do not translate or modify it
- Keep company names, product names, model names, numbers in English
- Keep technical terms in English (API, IDE, benchmark, etc.)
- Translate naturally, not word-for-word
- For Hebrew: use right-to-left natural phrasing

Title: {item['title']}

Summary: {item['summary']}

Body HTML:
{item['body']}

Return ONLY valid JSON:
{{"title": "...", "summary": "...", "body": "..."}}"""

    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=4000,
        messages=[{'role': 'user', 'content': prompt}]
    )
    text = msg.content[0].text.strip()
    m = re.search(r'\{[\s\S]+\}', text)
    return json.loads(m.group(0))


def make_news_insert(item, lang, title, summary, body):
    cat = item['category']
    cat_label = CAT_LABELS.get(cat, {}).get(lang, item.get('cat_label', cat.title()))
    return (
        f"('{item['slug']}', '{lang}', '{cat}', $${cat_label}$$, '{item['cat_color']}', "
        f"$${item['source']}$$, '{item['date']}',\n"
        f"{dq(title)},\n"
        f"{dq(summary)},\n"
        f"{dq(body)},\n"
        f"true)"
    )


# ── TOOLS ─────────────────────────────────────────────────────────────────────

def fetch_tools():
    slugs_param = ','.join(TOOL_SLUGS)
    rows = sb_get(f'tools?lang=eq.en&slug=in.({slugs_param})&select=*&limit=5')
    return {r['slug']: r for r in rows}


def translate_tool(tool, lang):
    fields = {
        'best_for': tool['best_for'] or '',
        'description': tool['description'] or '',
        'description_long': tool['description_long'] or '',
        'pros': tool['pros'] or [],
        'cons': tool['cons'] or [],
    }
    prompt = f"""Translate this AI tool info to {LANG_NAMES[lang]}.
Rules:
- Keep tool name "{tool['name']}" unchanged
- Keep all product/brand names in English (Cursor, Claude, Kimi, Opus, SWE-Bench, etc.)
- Keep technical terms in English (API, IDE, MCP, SDK, etc.)
- Keep prices and numbers as-is
- Translate naturally, not word-for-word
- For Hebrew: use right-to-left natural phrasing
- Return ONLY valid JSON with exactly these keys: best_for, description, description_long, pros (array), cons (array)

{json.dumps(fields, ensure_ascii=False)}"""

    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=3000,
        messages=[{'role': 'user', 'content': prompt}]
    )
    text = msg.content[0].text.strip()
    text = re.sub(r'^```(?:json)?\n?', '', text)
    text = re.sub(r'\n?```$', '', text)
    m = re.search(r'\{[\s\S]+\}', text)
    return json.loads(m.group(0))


# ── MAIN ──────────────────────────────────────────────────────────────────────

def main():
    lines = [
        '-- May 21, 2026 translations — 4 news + 1 tool × 7 languages',
        '-- Generated by translate_may21.py',
        '-- Paste into Supabase SQL Editor',
        '',
    ]

    # ── NEWS ──
    print('Fetching EN news from Supabase...')
    articles = fetch_news()
    print(f'  {len(articles)} articles found\n')

    news_rows = []
    for slug in NEWS_SLUGS:
        item = articles.get(slug)
        if not item:
            print(f'  SKIP {slug} — not found')
            continue
        print(f'Translating news: {slug}')
        for lang in ['ru', 'es', 'de', 'ua', 'he', 'fr', 'pt']:
            for attempt in range(3):
                try:
                    t = translate_news(item, lang)
                    news_rows.append(make_news_insert(item, lang, t['title'], t['summary'], t['body']))
                    print(f'  {lang} ✓', flush=True)
                    time.sleep(0.3)
                    break
                except Exception as e:
                    if attempt < 2:
                        print(f'  {lang} retry ({e})...', flush=True)
                        time.sleep(5)
                    else:
                        print(f'  {lang} ERROR: {e}')
                        news_rows.append(make_news_insert(item, lang, item['title'], item['summary'], item['body'] or ''))

    if news_rows:
        lines.append('-- ── NEWS ──────────────────────────────────────────────────')
        lines.append('INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES')
        lines.append(',\n\n'.join(news_rows) + ';')
        lines.append('')

    # ── TOOLS ──
    print('\nFetching EN tools from Supabase...')
    tools = fetch_tools()
    print(f'  {len(tools)} tools found\n')

    lines.append('-- ── TOOLS ─────────────────────────────────────────────────')
    for slug in TOOL_SLUGS:
        tool = tools.get(slug)
        if not tool:
            print(f'  SKIP {slug} — not found')
            continue
        print(f'\n== {slug} ==')
        for lang in ['ru', 'es', 'de', 'ua', 'he', 'fr', 'pt']:
            print(f'  → {lang}...', flush=True)
            for attempt in range(3):
                try:
                    t = translate_tool(tool, lang)
                    lines.append(
                        f"-- {slug} [{lang}]\n"
                        f"UPDATE tools SET\n"
                        f"  best_for         = {dq(t['best_for'])},\n"
                        f"  description      = {dq(t['description'])},\n"
                        f"  description_long = {dq(t['description_long'])},\n"
                        f"  pros             = {arr_dq(t['pros'])},\n"
                        f"  cons             = {arr_dq(t['cons'])}\n"
                        f"WHERE slug = '{slug}' AND lang = '{lang}';\n"
                    )
                    print(f'    ✓')
                    time.sleep(0.5)
                    break
                except Exception as e:
                    if attempt < 2:
                        print(f'    retry ({e})...', flush=True)
                        time.sleep(5)
                    else:
                        print(f'    ERROR: {e}')

    out = 'scripts/update_may21_translated.sql'
    with open(out, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))

    news_count = len(news_rows)
    tool_count = '\n'.join(lines).count('UPDATE tools SET')
    print(f'\nDone — {news_count} news rows + {tool_count} tool UPDATEs → {out}')
    print('Next: paste into Supabase SQL Editor')
    print('Then: python3 scripts/generate-news-pages.py && python3 scripts/generate-news-snapshot.py && git push')


if __name__ == '__main__':
    main()
