#!/usr/bin/env python3
"""
Extract choose_if + faq from compare DATA and generate SQL for tools table.
Priority: first appearance as tool_a; fallback to tool_b.
"""

import json, sys, os
sys.path.insert(0, os.path.dirname(__file__))

# ── COMPARISONS (slug → a_slug, b_slug) ─────────────────────────────────────
COMPARISONS = [
    {'slug': 'chatgpt-vs-claude',                    'a': 'chatgpt',                'b': 'claude'},
    {'slug': 'gemini-vs-chatgpt',                    'a': 'gemini',                 'b': 'chatgpt'},
    {'slug': 'deepseek-vs-chatgpt',                  'a': 'deepseek',               'b': 'chatgpt'},
    {'slug': 'microsoft-copilot-vs-chatgpt',         'a': 'microsoft-copilot',      'b': 'chatgpt'},
    {'slug': 'meta-ai-vs-chatgpt',                   'a': 'meta-ai',                'b': 'chatgpt'},
    {'slug': 'grok-vs-chatgpt',                      'a': 'grok',                   'b': 'chatgpt'},
    {'slug': 'mistral-le-chat-vs-chatgpt',           'a': 'mistral-le-chat',        'b': 'chatgpt'},
    {'slug': 'character-ai-vs-chatgpt',              'a': 'character-ai',           'b': 'chatgpt'},
    {'slug': 'copilot-studio-vs-manus',              'a': 'microsoft-copilot-studio','b': 'manus'},
    {'slug': 'n8n-vs-copilot-studio',                'a': 'n8n',                    'b': 'microsoft-copilot-studio'},
    {'slug': 'make-vs-copilot-studio',               'a': 'make',                   'b': 'microsoft-copilot-studio'},
    {'slug': 'lindy-vs-copilot-studio',              'a': 'lindy',                  'b': 'microsoft-copilot-studio'},
    {'slug': 'relevance-ai-vs-copilot-studio',       'a': 'relevance-ai',           'b': 'microsoft-copilot-studio'},
    {'slug': 'devin-vs-copilot-studio',              'a': 'devin',                  'b': 'microsoft-copilot-studio'},
    {'slug': 'make-vs-n8n',                          'a': 'make',                   'b': 'n8n'},
    {'slug': 'cursor-vs-copilot',                    'a': 'cursor',                 'b': 'github-copilot'},
    {'slug': 'windsurf-vs-cursor',                   'a': 'windsurf',               'b': 'cursor'},
    {'slug': 'claude-code-vs-github-copilot',        'a': 'claude-code',            'b': 'github-copilot'},
    {'slug': 'replit-vs-github-copilot',             'a': 'replit',                 'b': 'github-copilot'},
    {'slug': 'bolt-new-vs-cursor',                   'a': 'bolt-new',               'b': 'cursor'},
    {'slug': 'v0-by-vercel-vs-cursor',               'a': 'v0-by-vercel',           'b': 'cursor'},
    {'slug': 'cline-vs-github-copilot',              'a': 'cline',                  'b': 'github-copilot'},
    {'slug': 'aider-vs-github-copilot',              'a': 'aider',                  'b': 'github-copilot'},
    {'slug': 'windsurf-vs-github-copilot',           'a': 'windsurf',               'b': 'github-copilot'},
    {'slug': 'deepl-vs-grammarly',                   'a': 'deepl',                  'b': 'grammarly'},
    {'slug': 'quillbot-vs-grammarly',                'a': 'quillbot',               'b': 'grammarly'},
    {'slug': 'jasper-vs-writesonic',                 'a': 'jasper',                 'b': 'writesonic'},
    {'slug': 'writesonic-vs-grammarly',              'a': 'writesonic',             'b': 'grammarly'},
    {'slug': 'hemingway-editor-vs-grammarly',        'a': 'hemingway-editor',       'b': 'grammarly'},
    {'slug': 'semrush-vs-copy-ai',                   'a': 'semrush',                'b': 'copy-ai'},
    {'slug': 'surferseo-vs-semrush',                 'a': 'surferseo',              'b': 'semrush'},
    {'slug': 'frase-vs-semrush',                     'a': 'frase',                  'b': 'semrush'},
    {'slug': 'clearscope-vs-surferseo',              'a': 'clearscope',             'b': 'surferseo'},
    {'slug': 'copy-ai-vs-jasper',                    'a': 'copy-ai',                'b': 'jasper'},
    {'slug': 'midjourney-vs-flux',                   'a': 'midjourney',             'b': 'flux'},
    {'slug': 'midjourney-vs-stable-diffusion',       'a': 'midjourney',             'b': 'stable-diffusion'},
    {'slug': 'ideogram-vs-midjourney',               'a': 'ideogram',               'b': 'midjourney'},
    {'slug': 'adobe-firefly-vs-midjourney',          'a': 'adobe-firefly',          'b': 'midjourney'},
    {'slug': 'recraft-ai-vs-midjourney',             'a': 'recraft-ai',             'b': 'midjourney'},
    {'slug': 'flux-vs-stable-diffusion',             'a': 'flux',                   'b': 'stable-diffusion'},
    {'slug': 'leonardo-ai-vs-midjourney',            'a': 'leonardo-ai',            'b': 'midjourney'},
    {'slug': 'kling-vs-runway',                      'a': 'kling-ai',               'b': 'runway'},
    {'slug': 'capcut-vs-kling-ai',                   'a': 'capcut',                 'b': 'kling-ai'},
    {'slug': 'runway-vs-capcut',                     'a': 'runway',                 'b': 'capcut'},
    {'slug': 'heygen-vs-synthesia',                  'a': 'heygen',                 'b': 'synthesia'},
    {'slug': 'pika-vs-kling-ai',                     'a': 'pika',                   'b': 'kling-ai'},
    {'slug': 'luma-ai-vs-runway',                    'a': 'luma-ai',                'b': 'runway'},
    {'slug': 'google-veo-3-vs-runway',               'a': 'google-veo-3',           'b': 'runway'},
    {'slug': 'canva-ai-vs-figma-ai',                 'a': 'canva-ai',               'b': 'figma-ai'},
    {'slug': 'figma-ai-vs-canva-ai',                 'a': 'figma-ai',               'b': 'canva-ai'},
    {'slug': 'framer-ai-vs-canva-ai',                'a': 'framer-ai',              'b': 'canva-ai'},
    {'slug': 'looka-vs-canva-ai',                    'a': 'looka',                  'b': 'canva-ai'},
    {'slug': 'uizard-vs-figma-ai',                   'a': 'uizard',                 'b': 'figma-ai'},
    {'slug': 'uxpilot-vs-figma-ai',                  'a': 'uxpilot',                'b': 'figma-ai'},
    {'slug': 'relume-vs-framer-ai',                  'a': 'relume',                 'b': 'framer-ai'},
    {'slug': 'whimsical-ai-vs-figma-ai',             'a': 'whimsical-ai',           'b': 'figma-ai'},
    {'slug': 'suno-vs-udio',                         'a': 'suno',                   'b': 'udio'},
    {'slug': 'speechify-vs-elevenlabs',              'a': 'speechify',              'b': 'elevenlabs'},
    {'slug': 'elevenlabs-vs-murf-ai',                'a': 'elevenlabs',             'b': 'murf-ai'},
    {'slug': 'elevenlabs-vs-playht',                 'a': 'elevenlabs',             'b': 'playht'},
    {'slug': 'descript-vs-adobe-podcast',            'a': 'descript',               'b': 'adobe-podcast'},
    {'slug': 'suno-vs-elevenlabs',                   'a': 'suno',                   'b': 'elevenlabs'},
    {'slug': 'notion-ai-vs-zapier-ai',               'a': 'notion-ai',              'b': 'zapier-ai'},
    {'slug': 'gamma-vs-notion-ai',                   'a': 'gamma',                  'b': 'notion-ai'},
    {'slug': 'otter-ai-vs-fireflies-ai',             'a': 'otter-ai',               'b': 'fireflies-ai'},
    {'slug': 'motion-vs-reclaim-ai',                 'a': 'motion',                 'b': 'reclaim-ai'},
    {'slug': 'zapier-ai-vs-make',                    'a': 'zapier-ai',              'b': 'make'},
    {'slug': 'perplexity-vs-notebooklm',             'a': 'perplexity',             'b': 'notebooklm'},
    {'slug': 'elicit-vs-consensus',                  'a': 'elicit',                 'b': 'consensus'},
    {'slug': 'consensus-vs-perplexity',              'a': 'consensus',              'b': 'perplexity'},
    {'slug': 'notebooklm-vs-humata',                 'a': 'notebooklm',             'b': 'humata'},
    {'slug': 'scite-vs-semantic-scholar',            'a': 'scite',                  'b': 'semantic-scholar'},
    {'slug': 'looker-studio-vs-tableau-ai',          'a': 'looker-studio',          'b': 'tableau-ai'},
    {'slug': 'julius-ai-vs-looker-studio',           'a': 'julius-ai',              'b': 'looker-studio'},
    {'slug': 'hex-vs-looker-studio',                 'a': 'hex',                    'b': 'looker-studio'},
    {'slug': 'rows-vs-hex',                          'a': 'rows',                   'b': 'hex'},
    {'slug': 'retool-ai-vs-looker-studio',           'a': 'retool-ai',              'b': 'looker-studio'},
    {'slug': 'bubble-vs-webflow',                    'a': 'bubble',                 'b': 'webflow'},
    {'slug': 'lovable-vs-bubble',                    'a': 'lovable',                'b': 'bubble'},
    {'slug': 'flutterflow-vs-bubble',                'a': 'flutterflow',            'b': 'bubble'},
    {'slug': 'glide-vs-bubble',                      'a': 'glide',                  'b': 'bubble'},
    {'slug': 'softr-vs-bubble',                      'a': 'softr',                  'b': 'bubble'},
    {'slug': 'webflow-vs-framer-ai',                 'a': 'webflow',                'b': 'framer-ai'},
    {'slug': 'photomath-vs-duolingo-max',            'a': 'photomath',              'b': 'duolingo-max'},
    {'slug': 'khanmigo-vs-photomath',                'a': 'khanmigo',               'b': 'photomath'},
    {'slug': 'duolingo-max-vs-khanmigo',             'a': 'duolingo-max',           'b': 'khanmigo'},
    {'slug': 'youlearn-vs-notebooklm',               'a': 'youlearn',               'b': 'notebooklm'},
    {'slug': 'synthesis-vs-khanmigo',                'a': 'synthesis',              'b': 'khanmigo'},
    {'slug': 'gamma-vs-beautiful-ai',                'a': 'gamma',                  'b': 'beautiful-ai'},
    {'slug': 'gamma-vs-pitch',                       'a': 'gamma',                  'b': 'pitch'},
    {'slug': 'gamma-vs-prezi',                       'a': 'gamma',                  'b': 'prezi'},
    {'slug': 'beautiful-ai-vs-pitch',                'a': 'beautiful-ai',           'b': 'pitch'},
    {'slug': 'slidesgo-vs-gamma',                    'a': 'slidesgo',               'b': 'gamma'},
    {'slug': 'tradingview-vs-fiscal-ai',             'a': 'tradingview',            'b': 'finchat'},
    {'slug': 'koyfin-vs-tradingview',                'a': 'koyfin',                 'b': 'tradingview'},
    {'slug': 'fiscal-ai-vs-koyfin',                  'a': 'finchat',                'b': 'koyfin'},
    {'slug': 'tickeron-vs-tradingview',              'a': 'tickeron',               'b': 'tradingview'},
    {'slug': 'uptrends-ai-vs-koyfin',               'a': 'uptrends-ai',            'b': 'koyfin'},
    {'slug': 'amazon-q-developer-vs-github-copilot','a': 'amazon-q-developer',     'b': 'github-copilot'},
    {'slug': 'continue-dev-vs-github-copilot',      'a': 'continue-dev',           'b': 'github-copilot'},
    {'slug': 'opencode-vs-claude-code',             'a': 'opencode',               'b': 'claude-code'},
    {'slug': 'zed-vs-cursor',                       'a': 'zed',                    'b': 'cursor'},
    {'slug': 'comfyui-vs-stable-diffusion',         'a': 'comfyui',                'b': 'stable-diffusion'},
    {'slug': 'krea-ai-vs-midjourney',               'a': 'krea-ai',                'b': 'midjourney'},
    {'slug': 'nano-banana-vs-leonardo-ai',          'a': 'nano-banana',            'b': 'leonardo-ai'},
    {'slug': 'chatgpt-images-vs-adobe-firefly',     'a': 'chatgpt-images',         'b': 'adobe-firefly'},
    {'slug': 'claude-design-vs-figma-ai',           'a': 'claude-design',          'b': 'figma-ai'},
    {'slug': 'google-stitch-vs-figma-ai',           'a': 'google-stitch',          'b': 'figma-ai'},
    {'slug': 'recraft-vs-canva-ai',                 'a': 'recraft',                'b': 'canva-ai'},
    {'slug': 'remove-bg-vs-canva-ai',               'a': 'remove-bg',              'b': 'canva-ai'},
    {'slug': 'seedance-vs-runway',                  'a': 'seedance-2-0',           'b': 'runway'},
    {'slug': 'whisper-vs-otter-ai',                 'a': 'whisper',                'b': 'otter-ai'},
    {'slug': 'adcreative-ai-vs-canva-ai',           'a': 'adcreative-ai',          'b': 'canva-ai'},
    {'slug': 'akkio-vs-julius-ai',                  'a': 'akkio',                  'b': 'julius-ai'},
    {'slug': 'autogpt-vs-manus',                    'a': 'autogpt',                'b': 'manus'},
    {'slug': 'coursera-coach-vs-khanmigo',          'a': 'coursera-coach',         'b': 'khanmigo'},
    {'slug': 'socratic-vs-khanmigo',                'a': 'socratic-by-google',     'b': 'khanmigo'},
]

# ── Load DATA from inject script ─────────────────────────────────────────────
inject_path = os.path.join(os.path.dirname(__file__), 'inject_compare_content.py')
src = open(inject_path).read()
# Extract DATA dict: from DATA = { to the line before def build_section
start = src.index('DATA = {')
end = src.index('\n# Template for the verdict')
data_src = src[start:end].rstrip()
exec(data_src)

# ── Build tool_slug → {choose_if, faq} ──────────────────────────────────────
# Priority: first appearance as tool_a wins; tool_b only fills if no tool_a entry yet
tool_data = {}  # slug → {'choose_if': [...], 'faq': [...]}

comp_by_slug = {c['slug']: c for c in COMPARISONS}

for cmp_slug, d in DATA.items():
    comp = comp_by_slug.get(cmp_slug)
    if not comp:
        continue
    a_slug = comp['a']
    b_slug = comp['b']

    # Fix '' SQL escaping back to real apostrophes
    def fix(s): return s.replace("''", "'")
    choose_a = [fix(x) for x in d['choose_a']]
    choose_b = [fix(x) for x in d['choose_b']]
    faq      = [{'q': fix(x['q']), 'a': fix(x['a'])} for x in d['faq']]

    # tool_a: set if not already set (first wins)
    if a_slug not in tool_data:
        tool_data[a_slug] = {'choose_if': choose_a, 'faq': faq}

    # tool_b: only fill if no entry yet
    if b_slug not in tool_data:
        tool_data[b_slug] = {'choose_if': choose_b, 'faq': faq}

print(f"Extracted data for {len(tool_data)} tools", file=sys.stderr)

# ── Generate SQL ─────────────────────────────────────────────────────────────
lines = [
    '-- Add choose_if and faq columns to tools table',
    '-- Run in Supabase SQL editor',
    '',
    'ALTER TABLE tools ADD COLUMN IF NOT EXISTS choose_if JSONB;',
    'ALTER TABLE tools ADD COLUMN IF NOT EXISTS faq JSONB;',
    '',
    '-- Populate choose_if and faq for all EN rows (other langs will copy from EN)',
    '',
]

for i, (tool_slug, td) in enumerate(sorted(tool_data.items())):
    ci_json  = json.dumps(td['choose_if'], ensure_ascii=False)
    faq_json = json.dumps(td['faq'], ensure_ascii=False)
    tag = f't{i}'
    lines.append(
        f"UPDATE tools SET"
        f" choose_if = ${tag}ci${ci_json}${tag}ci$::JSONB,"
        f" faq = ${tag}fq${faq_json}${tag}fq$::JSONB"
        f" WHERE slug = '{tool_slug}' AND lang = 'en';"
    )

sql = '\n'.join(lines)
print(sql)
