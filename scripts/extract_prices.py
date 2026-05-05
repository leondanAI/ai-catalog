#!/usr/bin/env python3
"""
Extract starting price from description_long and write to users field.
Usage:
  python3 scripts/extract_prices.py --slugs=devin,lindy,make,...
  python3 scripts/extract_prices.py --category=agents
  python3 scripts/extract_prices.py --all
"""
import os, sys, json, time, re, urllib.request
import anthropic

SB_URL     = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON    = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
SB_SERVICE = os.environ.get('SB_SERVICE_KEY', '')

def h(write=False):
    key = SB_SERVICE if (write and SB_SERVICE) else SB_ANON
    return {'apikey': key, 'Authorization': f'Bearer {key}', 'Content-Type': 'application/json'}

def sb_get(path):
    req = urllib.request.Request(f'{SB_URL}/rest/v1/{path}', headers=h())
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

def sb_patch(slug, users):
    data = json.dumps({'users': users}).encode()
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tools?slug=eq.{slug}&lang=eq.en',
        data=data, method='PATCH', headers=h(write=True)
    )
    with urllib.request.urlopen(req) as r:
        return r.status

def extract_price(client, tool):
    prompt = f"""Extract the starting price for this AI tool from the description below.

Return ONLY a short price string, examples:
- "Free"
- "Free / from $20/mo"
- "from $10/mo"
- "from $9/mo"
- "from $49/mo"

Rules:
- If the tool is completely free: return "Free"
- If it has a free tier AND paid plans: return "Free / from $X/mo"
- If it's paid only (no free tier): return "from $X/mo"
- Use the LOWEST paid plan price
- Never return more than 20 characters
- Never include currency other than $

Tool: {tool['name']}
Badge: {tool['badge']}
Description: {tool.get('description_long', '') or tool.get('description', '')}"""

    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=30,
        messages=[{'role': 'user', 'content': prompt}]
    )
    return msg.content[0].text.strip().strip('"\'')

def main():
    args = sys.argv[1:]

    api_key = os.environ.get('ANTHROPIC_API_KEY')
    if not api_key:
        print('ERROR: Set ANTHROPIC_API_KEY'); sys.exit(1)
    if not SB_SERVICE:
        print('ERROR: Set SB_SERVICE_KEY'); sys.exit(1)

    client = anthropic.Anthropic(api_key=api_key)

    print('Fetching tools…')
    tools = sb_get('tools?lang=eq.en&select=slug,name,badge,users,description,description_long,category&limit=200')

    slugs = None
    category = None
    for a in args:
        if a.startswith('--slugs='):
            slugs = a.split('=')[1].split(',')
        elif a.startswith('--category='):
            category = a.split('=')[1]
        elif a == '--all':
            pass

    if slugs:
        tools = [t for t in tools if t['slug'] in slugs]
    elif category:
        tools = [t for t in tools if t['category'] == category]

    print(f'{len(tools)} tools to process\n')

    for i, tool in enumerate(tools):
        slug = tool['slug']
        current = tool.get('users') or ''
        print(f'[{i+1}/{len(tools)}] {slug} (current: "{current}")...', end='', flush=True)
        try:
            price = extract_price(client, tool)
            sb_patch(slug, price)
            print(f' → "{price}" ✓')
            time.sleep(3)
        except Exception as e:
            print(f' ERROR: {e}')

    print('\nDone.')

if __name__ == '__main__':
    main()
