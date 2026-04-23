#!/usr/bin/env python3
"""
Seed comparisons table in Supabase with all comparisons × all languages.
Uses Anthropic API for translations.

Usage:
  export ANTHROPIC_API_KEY=sk-ant-...
  export SB_SERVICE_KEY=...
  python3 scripts/seed-comparisons.py

Skips rows that already exist. Use --force to re-translate all.
"""

import os, sys, re, json, time
import urllib.request

SB_URL     = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON    = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
SB_SERVICE = os.environ.get('SB_SERVICE_KEY', '')

LANGUAGES = ['es', 'fr', 'pt', 'ru', 'de', 'ua', 'he']

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
        f'{SB_URL}/rest/v1/comparisons?on_conflict=slug,lang',
        data=data, method='POST',
        headers={**headers(write=True), 'Prefer': 'resolution=merge-duplicates,return=minimal'}
    )
    with urllib.request.urlopen(req) as r:
        return r.status

# ── Source data (English) ──────────────────────────────────────────────────────

COMPARISONS = [
  {
    'slug': 'chatgpt-vs-claude',
    'tool_a': 'ChatGPT', 'tool_b': 'Claude',
    'tool_a_slug': 'chatgpt', 'tool_b_slug': 'claude',
    'tool_a_url': 'https://chat.openai.com', 'tool_b_url': 'https://claude.ai',
    'title': 'ChatGPT vs Claude 2026 — Side by Side Comparison | MyPedia',
    'meta_desc': 'ChatGPT vs Claude: detailed comparison of features, pricing, pros and cons. Which AI assistant is right for you? Updated 2026.',
    'intro': 'ChatGPT and Claude are the two most widely used AI assistants in 2026. Both handle text, code, and analysis — but they have different strengths. This comparison helps you pick the right one for your workflow.',
    'table_data': [
      ['Provider',       'OpenAI',                 'Anthropic'],
      ['Free tier',      'GPT-4o mini, limited',   'Claude 3.5 Haiku, limited'],
      ['Paid plan',      '$20/mo (Plus)',           '$20/mo (Pro)'],
      ['Context window', '128K tokens',            '200K tokens'],
      ['Best for',       'General tasks, plugins', 'Long docs, deep analysis'],
      ['Image input',    '✅ Yes',                 '✅ Yes'],
      ['API available',  '✅ Yes',                 '✅ Yes'],
      ['Mobile app',     '✅ iOS & Android',       '✅ iOS & Android'],
    ],
    'best_a': [
      'Everyday tasks and quick answers',
      'Access to GPT Store with 1M+ custom GPTs',
      'Deep integrations with third-party apps via Actions',
    ],
    'best_b': [
      'Analyzing long documents and PDFs (200K context)',
      'Complex coding, refactoring and technical writing',
      'More careful responses with fewer hallucinations',
    ],
    'verdict_a': 'you want the largest ecosystem, plugin support, or image generation via DALL·E.',
    'verdict_b': 'you work with long documents, need precise code, or prefer thoughtful responses.',
  },
  {
    'slug': 'cursor-vs-copilot',
    'tool_a': 'Cursor', 'tool_b': 'GitHub Copilot',
    'tool_a_slug': 'cursor', 'tool_b_slug': 'github-copilot',
    'tool_a_url': 'https://cursor.com', 'tool_b_url': 'https://github.com/features/copilot',
    'title': 'Cursor vs GitHub Copilot 2026 — Side by Side Comparison | MyPedia',
    'meta_desc': 'Cursor vs GitHub Copilot: which AI coding tool is better in 2026? Compare features, pricing and use cases.',
    'intro': 'Cursor and GitHub Copilot are the leading AI coding tools in 2026. Cursor is a full AI-native IDE, while Copilot is an extension that works inside your existing editor. Here is how they compare.',
    'table_data': [
      ['Provider',      'Anysphere',              'GitHub / Microsoft'],
      ['Free tier',     '2-week trial',           'Free for students & OSS'],
      ['Paid plan',     '$20/mo (Pro)',            '$10/mo'],
      ['Type',          'Full IDE (VS Code fork)', 'Editor extension'],
      ['AI models',     'Claude, GPT-4o, custom', 'GPT-4o, Claude'],
      ['Codebase chat', '✅ Full repo context',   '✅ Workspace context'],
      ['Autocomplete',  '✅ Yes',                 '✅ Yes'],
      ['Inline edit',   '✅ Yes',                 '✅ Yes'],
    ],
    'best_a': [
      'AI-first workflow with deep codebase understanding',
      'Large refactors and multi-file edits with full context',
      'Developers who want the fastest iteration with AI',
    ],
    'best_b': [
      'Staying in your current IDE (JetBrains, Neovim, etc.)',
      'Teams already on GitHub with existing workflows',
      'Lightweight code completion without switching editors',
    ],
    'verdict_a': 'you want the most powerful AI coding experience and are ready to switch to a new IDE.',
    'verdict_b': 'you want AI assistance inside your existing editor without changing your setup.',
  },
  {
    'slug': 'midjourney-vs-flux',
    'tool_a': 'Midjourney', 'tool_b': 'Flux',
    'tool_a_slug': 'midjourney', 'tool_b_slug': 'flux',
    'tool_a_url': 'https://midjourney.com', 'tool_b_url': 'https://blackforestlabs.ai',
    'title': 'Midjourney vs Flux 2026 — Side by Side Comparison | MyPedia',
    'meta_desc': 'Midjourney vs Flux: which AI image generator wins in 2026? Compare style, pricing, API and use cases.',
    'intro': 'Midjourney and Flux are two of the best AI image generators in 2026. Midjourney is known for its distinctive artistic style, while Flux leads in photorealism and speed. Here is a detailed comparison.',
    'table_data': [
      ['Provider',      'Midjourney Inc.',       'Black Forest Labs'],
      ['Free tier',     '❌ No',                 '✅ API free tier'],
      ['Paid plan',     'From $10/mo',           'Pay-per-image or API'],
      ['Interface',     'Web + Discord',         'API + third-party apps'],
      ['Style',         'Artistic, stylized',    'Photorealistic'],
      ['Speed',         'Moderate',              'Fast'],
      ['API available', '✅ Yes',                '✅ Yes'],
      ['Style control', '✅ Strong',             '✅ Strong'],
    ],
    'best_a': [
      'Artistic and stylized imagery with a unique aesthetic',
      'Creative projects, concept art and visual storytelling',
      'Users who want a curated community and style library',
    ],
    'best_b': [
      'Photorealistic product shots and portrait generation',
      'Developers building image generation into apps via API',
      'High-volume generation where speed and cost matter',
    ],
    'verdict_a': 'you want distinctive artistic results and access to a large creative community.',
    'verdict_b': 'you need photorealistic images, fast API access, or are building a product.',
  },
  {
    'slug': 'suno-vs-udio',
    'tool_a': 'Suno', 'tool_b': 'Udio',
    'tool_a_slug': 'suno', 'tool_b_slug': 'udio',
    'tool_a_url': 'https://suno.com', 'tool_b_url': 'https://udio.com',
    'title': 'Suno vs Udio 2026 — Side by Side Comparison | MyPedia',
    'meta_desc': 'Suno vs Udio: which AI music generator is better in 2026? Compare sound quality, features and pricing.',
    'intro': 'Suno and Udio are the two leading AI music generators in 2026. Both can create full songs from a text prompt — but they differ in style, quality and features. Here is how they compare.',
    'table_data': [
      ['Provider',      'Suno AI',               'Udio'],
      ['Free tier',     '✅ 50 songs/day',        '✅ 10 songs/day'],
      ['Paid plan',     'From $8/mo',             'From $10/mo'],
      ['Output length', 'Up to 4 min',            'Up to 1.5 min (extendable)'],
      ['Vocals',        '✅ Yes',                 '✅ Yes'],
      ['Instrumentals', '✅ Yes',                 '✅ Yes'],
      ['Custom lyrics', '✅ Yes',                 '✅ Yes'],
      ['API available', '✅ Yes',                 '❌ No'],
    ],
    'best_a': [
      'Longer complete songs with consistent structure',
      'Developers building music generation into apps via API',
      'Users who want a simple prompt-to-song experience',
    ],
    'best_b': [
      'Higher audio fidelity and more realistic sound quality',
      'Experimental and diverse musical styles',
      'Users focused on short clips and musical experimentation',
    ],
    'verdict_a': 'you want longer songs, API access, or a straightforward music generation workflow.',
    'verdict_b': 'you prioritize audio quality and want to experiment with diverse musical styles.',
  },
  {
    'slug': 'kling-vs-runway',
    'tool_a': 'Kling AI', 'tool_b': 'Runway',
    'tool_a_slug': 'kling-ai', 'tool_b_slug': 'runway',
    'tool_a_url': 'https://klingai.com', 'tool_b_url': 'https://runwayml.com',
    'title': 'Kling AI vs Runway 2026 — Side by Side Comparison | MyPedia',
    'meta_desc': 'Kling AI vs Runway: which AI video generator is better in 2026? Compare video quality, features and pricing.',
    'intro': 'Kling AI and Runway are two of the most powerful AI video generators in 2026. Kling impresses with its realistic motion physics, while Runway offers a broader creative toolkit. Here is a detailed comparison.',
    'table_data': [
      ['Provider',      'Kuaishou',              'Runway AI'],
      ['Free tier',     '✅ Limited credits',    '✅ 125 credits/mo'],
      ['Paid plan',     'From $8/mo',            'From $15/mo'],
      ['Max length',    'Up to 3 min',           'Up to 16 sec (Gen-3)'],
      ['Resolution',    'Up to 1080p',           'Up to 4K'],
      ['Motion quality','✅ Excellent physics',  '✅ Strong'],
      ['Image to video','✅ Yes',                '✅ Yes'],
      ['API available', '✅ Yes',                '✅ Yes'],
    ],
    'best_a': [
      'Realistic human motion and physical simulations',
      'Longer video sequences at a lower cost',
      'Users who want high quality at an affordable price',
    ],
    'best_b': [
      'Professional video editing and production workflows',
      'Full creative toolkit (inpainting, motion brush, etc.)',
      'Studios and creators who need 4K output',
    ],
    'verdict_a': 'you need realistic motion, longer videos or a more affordable plan.',
    'verdict_b': 'you need a professional creative suite with editing tools and 4K output.',
  },
]

# ── Translation ────────────────────────────────────────────────────────────────

def translate(client, c, lang):
    fields = {
        'title':      c['title'],
        'meta_desc':  c['meta_desc'],
        'intro':      c['intro'],
        'table_data': c['table_data'],
        'best_a':     c['best_a'],
        'best_b':     c['best_b'],
        'verdict_a':  c['verdict_a'],
        'verdict_b':  c['verdict_b'],
    }
    prompt = f"""Translate this comparison page content into language "{lang}".
Keep brand/tool names unchanged: {c['tool_a']}, {c['tool_b']}, MyPedia, GitHub.
Keep table values like prices ($20/mo), emojis (✅ ❌), tech specs, and "MyPedia" unchanged.
Return ONLY valid JSON with the same keys.

{json.dumps(fields, ensure_ascii=False)}"""

    msg = client.messages.create(
        model='claude-sonnet-4-6',
        max_tokens=3000,
        messages=[{'role': 'user', 'content': prompt}]
    )
    raw = msg.content[0].text.strip()
    raw = re.sub(r'^```(?:json)?\n?', '', raw)
    raw = re.sub(r'\n?```$', '', raw)
    return json.loads(raw)

# ── Main ───────────────────────────────────────────────────────────────────────

def main():
    force = '--force' in sys.argv

    api_key = os.environ.get('ANTHROPIC_API_KEY')
    if not api_key:
        print('ERROR: Set ANTHROPIC_API_KEY'); sys.exit(1)
    if not SB_SERVICE:
        print('ERROR: Set SB_SERVICE_KEY'); sys.exit(1)

    try:
        import anthropic
    except ImportError:
        print('ERROR: pip install anthropic'); sys.exit(1)

    client = anthropic.Anthropic(api_key=api_key)

    print('Fetching existing rows…')
    existing = sb_get('comparisons?select=slug,lang&limit=1000')
    done = {(r['slug'], r['lang']) for r in existing}
    print(f'  {len(done)} existing rows')

    for c in COMPARISONS:
        print(f'\n── {c["slug"]} ──')

        # English
        if force or (c['slug'], 'en') not in done:
            row = {k: v for k, v in c.items()}
            row['lang'] = 'en'
            sb_upsert(row)
            done.add((c['slug'], 'en'))
            print('  ✓ en (seeded)')
        else:
            print('  – en (skip)')

        # Languages
        for lang in LANGUAGES:
            if not force and (c['slug'], lang) in done:
                print(f'  – {lang} (skip)')
                continue
            print(f'  Translating {lang}…', end='', flush=True)
            try:
                t = translate(client, c, lang)
                row = {k: v for k, v in c.items()}
                row['lang']       = lang
                row['title']      = t.get('title', c['title'])
                row['meta_desc']  = t.get('meta_desc', c['meta_desc'])
                row['intro']      = t.get('intro', c['intro'])
                row['table_data'] = t.get('table_data', c['table_data'])
                row['best_a']     = t.get('best_a', c['best_a'])
                row['best_b']     = t.get('best_b', c['best_b'])
                row['verdict_a']  = t.get('verdict_a', c['verdict_a'])
                row['verdict_b']  = t.get('verdict_b', c['verdict_b'])
                sb_upsert(row)
                done.add((c['slug'], lang))
                print(' ✓')
                time.sleep(0.3)
            except Exception as e:
                print(f' ERROR: {e}')

    print('\nDone.')

if __name__ == '__main__':
    main()
