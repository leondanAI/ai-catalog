#!/usr/bin/env python3
"""
Translate AI tool content into target languages and save to tool_translations table.
One row per tool per language: (slug, lang, best_for, description, description_long, pros, cons)

Usage:
  export ANTHROPIC_API_KEY=sk-ant-...
  python3 scripts/translate-tools.py ru
  python3 scripts/translate-tools.py ru es fr de pt uk he

Skips rows that already exist. Re-run safely at any time.
Requires: pip install anthropic
"""

import urllib.request, json, os, sys, time, re

SB_URL     = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON    = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
SB_SERVICE = os.environ.get('SB_SERVICE_KEY', '')

def headers(write=False):
    key = SB_SERVICE if (write and SB_SERVICE) else SB_ANON
    return {'apikey': key, 'Authorization': f'Bearer {key}', 'Content-Type': 'application/json'}

def sb_get(path):
    req = urllib.request.Request(f'{SB_URL}/rest/v1/{path}', headers=headers())
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

def sb_upsert(row):
    data = json.dumps([row]).encode()
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tool_translations?on_conflict=slug,lang',
        data=data, method='POST',
        headers={**headers(write=True), 'Prefer': 'resolution=merge-duplicates,return=minimal'}
    )
    with urllib.request.urlopen(req) as r:
        return r.status

def translate(client, tool, lang):
    name = tool['name']
    prompt = f"""Translate this AI tool info into language "{lang}".
Keep tool name "{name}" unchanged. Keep brand/product names in English.
Return ONLY valid JSON with keys: best_for, description, description_long, pros (array), cons (array).

{json.dumps({
    'best_for':         tool.get('best_for') or '',
    'description':      tool.get('description') or '',
    'description_long': tool.get('description_long') or '',
    'pros':             tool.get('pros') or [],
    'cons':             tool.get('cons') or [],
}, ensure_ascii=False)}"""

    msg = client.messages.create(
        model='claude-sonnet-4-6',
        max_tokens=2048,
        messages=[{'role': 'user', 'content': prompt}]
    )
    raw = msg.content[0].text.strip()
    raw = re.sub(r'^```(?:json)?\n?', '', raw)
    raw = re.sub(r'\n?```$', '', raw)
    return json.loads(raw)

def main():
    langs = sys.argv[1:] if len(sys.argv) > 1 else ['ru']

    api_key = os.environ.get('ANTHROPIC_API_KEY')
    if not api_key:
        print('ERROR: Set ANTHROPIC_API_KEY'); sys.exit(1)

    try:
        import anthropic
    except ImportError:
        print('ERROR: pip install anthropic'); sys.exit(1)

    client = anthropic.Anthropic(api_key=api_key)

    print('Fetching English tools…')
    tools = sb_get('tools?order=name.asc&limit=200&select=slug,name,best_for,description,description_long,pros,cons')
    print(f'  {len(tools)} tools')

    print('Fetching existing translations…')
    existing = sb_get('tool_translations?select=slug,lang,description_long&limit=10000')
    done = {(r['slug'], r['lang']) for r in existing if r.get('description_long')}
    print(f'  {len(done)} rows already complete (with description_long)')

    for lang in langs:
        to_do = [t for t in tools if (t['slug'], lang) not in done]
        print(f'\n→ {lang}: {len(to_do)} to translate ({len(tools)-len(to_do)} already done)')

        for i, tool in enumerate(to_do):
            slug = tool['slug']
            print(f'  [{i+1}/{len(to_do)}] {slug}…', end='', flush=True)
            try:
                t = translate(client, tool, lang)
                sb_upsert({
                    'slug':             slug,
                    'lang':             lang,
                    'best_for':         t.get('best_for', ''),
                    'description':      t.get('description', ''),
                    'description_long': t.get('description_long', ''),
                    'pros':             t.get('pros', []),
                    'cons':             t.get('cons', []),
                })
                done.add((slug, lang))
                print(' ✓')
                time.sleep(0.2)
            except Exception as e:
                print(f' ERROR: {e}')

    print('\nDone.')

if __name__ == '__main__':
    main()
