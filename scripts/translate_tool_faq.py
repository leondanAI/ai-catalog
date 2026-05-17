#!/usr/bin/env python3
"""
Translate corrected FAQ (and missing rows) for 13 tools to 7 languages.
- UPDATE faq for 12 existing tools in all 7 langs
- Full INSERT for kiro (missing in all 7 langs)
- Full INSERT for murf-ai (missing in ua/he/fr/pt)

Run: python3 scripts/translate_tool_faq.py
Then: paste output SQL into Supabase SQL Editor
Then: python3 scripts/generate-lang-tool-pages.py && git push
"""

import anthropic, json, time, re, urllib.request

client = anthropic.Anthropic()

SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

LANG_NAMES = {
    'ru': 'Russian', 'es': 'Spanish', 'de': 'German',
    'ua': 'Ukrainian', 'he': 'Hebrew', 'fr': 'French', 'pt': 'Portuguese',
}

# Tools that need FAQ updated (rows exist in all 7 langs)
UPDATE_SLUGS = [
    'cursor', 'bolt-new', 'manus', 'murf-ai', 'playht',
    'notion-ai', 'microsoft-copilot', 'claude-code', 'claude-design',
    'v0-by-vercel', 'chatgpt-images', 'zapier-ai',
]

# Tools that need full INSERT (missing rows)
INSERT_ALL_LANGS = ['kiro']           # missing in all 7
INSERT_SOME_LANGS = {                 # missing in specific langs
    'murf-ai': ['ua', 'he', 'fr', 'pt'],
}

def sb_get(path):
    req = urllib.request.Request(f'{SB_URL}/rest/v1/{path}',
        headers={'apikey': SB_KEY, 'Authorization': f'Bearer {SB_KEY}'})
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

def translate_faq(faq_items, lang):
    lang_name = LANG_NAMES[lang]
    faq_str = json.dumps(faq_items, ensure_ascii=False)
    prompt = f"""Translate these FAQ items to {lang_name}.
Rules:
- Keep product/company names in English (Cursor, Claude, Bolt.new, Kiro, etc.)
- Keep technical terms in English (API, IDE, SSO, etc.)
- Keep prices and numbers as-is
- Translate naturally, not word-for-word
- For Hebrew: use right-to-left natural phrasing
- Return ONLY valid JSON array with same structure: [{{"q":"...","a":"..."}}]

{faq_str}"""

    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=2000,
        messages=[{'role': 'user', 'content': prompt}]
    )
    text = msg.content[0].text.strip()
    m = re.search(r'\[[\s\S]+\]', text)
    return json.loads(m.group(0))

def translate_tool_fields(tool, lang):
    lang_name = LANG_NAMES[lang]
    fields = {
        'best_for': tool['best_for'],
        'description': tool['description'],
        'description_long': tool['description_long'],
        'pros': tool['pros'],
        'cons': tool['cons'],
    }
    prompt = f"""Translate this AI tool info to {lang_name}.
Keep tool name "{tool['name']}" unchanged. Keep brand/product names and technical terms in English.
Return ONLY valid JSON with exactly these keys: best_for, description, description_long, pros (array), cons (array).

{json.dumps(fields, ensure_ascii=False)}"""

    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=3000,
        messages=[{'role': 'user', 'content': prompt}]
    )
    text = msg.content[0].text.strip()
    m = re.search(r'\{[\s\S]+\}', text)
    return json.loads(m.group(0))

def escape_pg(val):
    if isinstance(val, str):
        return val.replace("'", "''")
    return val

def arr_literal(items):
    escaped = [item.replace("'", "''") for item in items]
    return "ARRAY[" + ",".join(f"$${item}$$" for item in escaped) + "]"

def main():
    all_slugs = ','.join(UPDATE_SLUGS + INSERT_ALL_LANGS + list(INSERT_SOME_LANGS.keys()))
    tools_en = {
        t['slug']: t
        for t in sb_get(f'tools?lang=eq.en&slug=in.({all_slugs})&select=*&limit=20')
    }
    print(f'Fetched {len(tools_en)} EN tools\n')

    update_lines = []
    insert_lines = []

    # 1. UPDATE faq for existing tools
    for slug in UPDATE_SLUGS:
        tool = tools_en.get(slug)
        if not tool or not tool.get('faq'):
            print(f'  SKIP {slug} — no EN faq')
            continue
        for lang in ['ru', 'es', 'de', 'ua', 'he', 'fr', 'pt']:
            # Skip murf-ai for langs where it needs full INSERT instead
            if slug == 'murf-ai' and lang in INSERT_SOME_LANGS.get('murf-ai', []):
                continue
            print(f'  {slug} faq → {lang}...', flush=True)
            try:
                translated_faq = translate_faq(tool['faq'], lang)
                faq_json = json.dumps(translated_faq, ensure_ascii=False).replace("'", "''")
                update_lines.append(
                    f"UPDATE tools SET faq = '{faq_json}'::jsonb\n"
                    f"WHERE slug = '{slug}' AND lang = '{lang}';"
                )
                time.sleep(0.2)
            except Exception as e:
                print(f'    ERROR: {e}')

    # 2. Full INSERT for kiro (all 7 langs)
    for slug in INSERT_ALL_LANGS:
        tool = tools_en.get(slug)
        if not tool:
            print(f'  SKIP {slug} — not found in EN')
            continue
        for lang in ['ru', 'es', 'de', 'ua', 'he', 'fr', 'pt']:
            print(f'  {slug} full → {lang}...', flush=True)
            try:
                t = translate_tool_fields(tool, lang)
                faq_t = translate_faq(tool['faq'], lang) if tool.get('faq') else []
                faq_json = json.dumps(faq_t, ensure_ascii=False).replace("'", "''")
                choose_if_t = translate_faq(
                    [{'q': item} for item in (tool.get('choose_if') or [])], lang
                ) if tool.get('choose_if') else []
                choose_if_vals = [x.get('q', x) if isinstance(x, dict) else x for x in choose_if_t]

                insert_lines.append(
                    f"INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, "
                    f"best_for, description, description_long, pros, cons, faq, published)\n"
                    f"VALUES (\n"
                    f"  '{slug}', '{lang}', $${tool['name']}$$, $${tool['url']}$$, $${tool['domain']}$$,\n"
                    f"  '{tool['category']}', '{tool['badge']}', $${tool.get('users','') or ''}$$,\n"
                    f"  $${t['best_for']}$$,\n"
                    f"  $${t['description']}$$,\n"
                    f"  $${t['description_long']}$$,\n"
                    f"  {arr_literal(t['pros'])},\n"
                    f"  {arr_literal(t['cons'])},\n"
                    f"  '{faq_json}'::jsonb,\n"
                    f"  true\n"
                    f")\n"
                    f"ON CONFLICT (slug, lang) DO UPDATE SET\n"
                    f"  best_for = EXCLUDED.best_for,\n"
                    f"  description = EXCLUDED.description,\n"
                    f"  description_long = EXCLUDED.description_long,\n"
                    f"  pros = EXCLUDED.pros,\n"
                    f"  cons = EXCLUDED.cons,\n"
                    f"  faq = EXCLUDED.faq;"
                )
                time.sleep(0.3)
            except Exception as e:
                print(f'    ERROR: {e}')

    # 3. Full INSERT for murf-ai in ua/he/fr/pt
    for slug, langs in INSERT_SOME_LANGS.items():
        tool = tools_en.get(slug)
        if not tool:
            continue
        for lang in langs:
            print(f'  {slug} full → {lang}...', flush=True)
            try:
                t = translate_tool_fields(tool, lang)
                faq_t = translate_faq(tool['faq'], lang) if tool.get('faq') else []
                faq_json = json.dumps(faq_t, ensure_ascii=False).replace("'", "''")

                insert_lines.append(
                    f"INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, "
                    f"best_for, description, description_long, pros, cons, faq, published)\n"
                    f"VALUES (\n"
                    f"  '{slug}', '{lang}', $${tool['name']}$$, $${tool['url']}$$, $${tool['domain']}$$,\n"
                    f"  '{tool['category']}', '{tool['badge']}', $${tool.get('users','') or ''}$$,\n"
                    f"  $${t['best_for']}$$,\n"
                    f"  $${t['description']}$$,\n"
                    f"  $${t['description_long']}$$,\n"
                    f"  {arr_literal(t['pros'])},\n"
                    f"  {arr_literal(t['cons'])},\n"
                    f"  '{faq_json}'::jsonb,\n"
                    f"  true\n"
                    f")\n"
                    f"ON CONFLICT (slug, lang) DO UPDATE SET\n"
                    f"  best_for = EXCLUDED.best_for,\n"
                    f"  description = EXCLUDED.description,\n"
                    f"  description_long = EXCLUDED.description_long,\n"
                    f"  pros = EXCLUDED.pros,\n"
                    f"  cons = EXCLUDED.cons,\n"
                    f"  faq = EXCLUDED.faq;"
                )
                time.sleep(0.3)
            except Exception as e:
                print(f'    ERROR: {e}')

    sql = '\n\n'.join([
        '-- FAQ translations for 13 tools — 7 languages',
        '-- Run in Supabase SQL Editor',
        '-- Then: python3 scripts/generate-lang-tool-pages.py && git push',
        '',
    ] + update_lines + insert_lines)

    out = 'scripts/tool_faq_translated.sql'
    with open(out, 'w', encoding='utf-8') as f:
        f.write(sql)

    print(f'\nDone — {len(update_lines)} UPDATEs + {len(insert_lines)} INSERTs → {out}')
    print('Next: paste into Supabase → python3 scripts/generate-lang-tool-pages.py → git push')

if __name__ == '__main__':
    main()
