#!/usr/bin/env python3
"""
Translate AI tool content into target languages and save to tools table.
One row per tool per language: (slug, lang, best_for, description, description_long, pros, cons)

Usage:
  export ANTHROPIC_API_KEY=sk-ant-...
  python3 scripts/translate-tools.py es
  python3 scripts/translate-tools.py es fr de pt uk he

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
        f'{SB_URL}/rest/v1/tools?on_conflict=slug,lang',
        data=data, method='POST',
        headers={**headers(write=True), 'Prefer': 'resolution=merge-duplicates,return=minimal'}
    )
    with urllib.request.urlopen(req) as r:
        return r.status

def translate(client, tool, lang, skip_long_desc=False):
    name = tool['name']
    fields = {
        'best_for':    tool.get('best_for') or '',
        'description': tool.get('description') or '',
        'pros':        tool.get('pros') or [],
        'cons':        tool.get('cons') or [],
    }
    if not skip_long_desc:
        fields['description_long'] = tool.get('description_long') or ''

    keys = ', '.join(fields.keys()) + ('' if skip_long_desc else ', description_long')
    prompt = f"""Translate this AI tool info into language "{lang}".
Keep tool name "{name}" unchanged. Keep brand/product names in English.
Return ONLY valid JSON with keys: {', '.join(fields.keys())}.

{json.dumps(fields, ensure_ascii=False)}"""

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
    args = sys.argv[1:]
    skip_long_desc = '--no-long-desc' in args
    force = '--force' in args
    langs = [a for a in args if not a.startswith('--')] or ['ru']

    api_key = os.environ.get('ANTHROPIC_API_KEY')
    if not api_key:
        print('ERROR: Set ANTHROPIC_API_KEY'); sys.exit(1)

    try:
        import anthropic
    except ImportError:
        print('ERROR: pip install anthropic'); sys.exit(1)

    client = anthropic.Anthropic(api_key=api_key)

    print('Fetching English tools…')
    tools = sb_get('tools?lang=eq.en&order=name.asc&limit=200')
    print(f'  {len(tools)} tools')

    print('Fetching existing translations…')
    existing = sb_get('tools?select=slug,lang,description&limit=10000')
    done = {(r['slug'], r['lang']) for r in existing if r.get('description')}
    print(f'  {len(done)} rows already translated')

    for lang in langs:
        to_do = tools if force else [t for t in tools if (t['slug'], lang) not in done]
        print(f'\n→ {lang}: {len(to_do)} to translate ({len(tools)-len(to_do)} already done)')

        for i, tool in enumerate(to_do):
            slug = tool['slug']
            print(f'  [{i+1}/{len(to_do)}] {slug}…', end='', flush=True)
            try:
                t = translate(client, tool, lang, skip_long_desc=skip_long_desc)
                # Start with all English fields, override lang + translated fields
                row = {k: v for k, v in tool.items() if k != 'id'}
                row['lang']        = lang
                row['best_for']    = t.get('best_for', '')
                row['description'] = t.get('description', '')
                row['pros']        = t.get('pros', [])
                row['cons']        = t.get('cons', [])
                if not skip_long_desc:
                    row['description_long'] = t.get('description_long', '')
                sb_upsert(row)
                done.add((slug, lang))
                print(' ✓')
                time.sleep(0.2)
            except Exception as e:
                print(f' ERROR: {e}')

    print('\nDone.')

if __name__ == '__main__':
    main()
