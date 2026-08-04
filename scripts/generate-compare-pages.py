#!/usr/bin/env python3
"""
Generate STATIC comparison pages — content baked into HTML at build time.
Tool data is fetched from Supabase once per (slug, lang); the resulting page
contains the full comparison table in static HTML so Google indexes the real
content without executing JavaScript. Only the ratings block stays dynamic.

Usage:  python3 scripts/generate-compare-pages.py
"""

import os, re, json, html as _html, hashlib, socket, time
import urllib.request, urllib.parse, urllib.error

ROOT     = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
BASE_URL = 'https://aitoolfit.ai'

SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

LANGUAGES   = ['es', 'ru', 'de', 'ua', 'he', 'fr', 'pt']
LANG_FLAGS  = {'en':'🇬🇧','ru':'🇷🇺','es':'🇪🇸','fr':'🇫🇷','pt':'🇧🇷','de':'🇩🇪','ua':'🇺🇦','he':'🇮🇱'}
LANG_LABELS = {'ua': 'UA'}
LANG_RTL    = {'he'}

COMPARISONS = [
    # ── Chat (leader: ChatGPT, #2: Claude) ───────────────────────────────────
    {'slug': 'chatgpt-vs-claude',                    'a': 'chatgpt',                'b': 'claude',                'cat': 'chat',     'label': 'ChatGPT vs Claude'},
    {'slug': 'gemini-vs-chatgpt',                    'a': 'gemini',                 'b': 'chatgpt',               'cat': 'chat',     'label': 'Gemini vs ChatGPT'},
    {'slug': 'deepseek-vs-chatgpt',                  'a': 'deepseek',               'b': 'chatgpt',               'cat': 'chat',     'label': 'DeepSeek vs ChatGPT'},
    {'slug': 'microsoft-copilot-vs-chatgpt',         'a': 'microsoft-copilot',      'b': 'chatgpt',               'cat': 'chat',     'label': 'Microsoft Copilot vs ChatGPT'},
    {'slug': 'meta-ai-vs-chatgpt',                   'a': 'meta-ai',                'b': 'chatgpt',               'cat': 'chat',     'label': 'Meta AI vs ChatGPT'},
    {'slug': 'grok-vs-chatgpt',                      'a': 'grok',                   'b': 'chatgpt',               'cat': 'chat',     'label': 'Grok vs ChatGPT'},
    {'slug': 'mistral-le-chat-vs-chatgpt',           'a': 'mistral-le-chat',        'b': 'chatgpt',               'cat': 'chat',     'label': 'Mistral Le Chat vs ChatGPT'},
    {'slug': 'character-ai-vs-chatgpt',              'a': 'character-ai',           'b': 'chatgpt',               'cat': 'chat',     'label': 'Character.AI vs ChatGPT'},
    # ── Agents (leader: Microsoft Copilot Studio, #2: Manus) ─────────────────
    {'slug': 'copilot-studio-vs-manus',              'a': 'microsoft-copilot-studio','b': 'manus',                'cat': 'agents',   'label': 'Copilot Studio vs Manus'},
    {'slug': 'n8n-vs-copilot-studio',                'a': 'n8n',                    'b': 'microsoft-copilot-studio','cat': 'agents',  'label': 'n8n vs Copilot Studio'},
    {'slug': 'make-vs-copilot-studio',               'a': 'make',                   'b': 'microsoft-copilot-studio','cat': 'agents',  'label': 'Make vs Copilot Studio'},
    {'slug': 'lindy-vs-copilot-studio',              'a': 'lindy',                  'b': 'microsoft-copilot-studio','cat': 'agents',  'label': 'Lindy vs Copilot Studio'},
    {'slug': 'relevance-ai-vs-copilot-studio',       'a': 'relevance-ai',           'b': 'microsoft-copilot-studio','cat': 'agents',  'label': 'Relevance AI vs Copilot Studio'},
    {'slug': 'devin-vs-copilot-studio',              'a': 'devin',                  'b': 'microsoft-copilot-studio','cat': 'agents',  'label': 'Devin vs Copilot Studio'},
    {'slug': 'make-vs-n8n',                          'a': 'make',                   'b': 'n8n',                   'cat': 'agents',   'label': 'Make vs n8n'},
    # ── Code (leader: GitHub Copilot, #2: Cursor) ────────────────────────────
    {'slug': 'cursor-vs-copilot',                    'a': 'cursor',                 'b': 'github-copilot',        'cat': 'code',     'label': 'Cursor vs GitHub Copilot'},
    {'slug': 'windsurf-vs-cursor',                   'a': 'windsurf',               'b': 'cursor',                'cat': 'code',     'label': 'Windsurf vs Cursor'},
    {'slug': 'claude-code-vs-github-copilot',        'a': 'claude-code',            'b': 'github-copilot',        'cat': 'code',     'label': 'Claude Code vs GitHub Copilot'},
    {'slug': 'replit-vs-github-copilot',             'a': 'replit',                 'b': 'github-copilot',        'cat': 'code',     'label': 'Replit vs GitHub Copilot'},
    {'slug': 'bolt-new-vs-cursor',                   'a': 'bolt-new',               'b': 'cursor',                'cat': 'code',     'label': 'Bolt.new vs Cursor'},
    {'slug': 'v0-by-vercel-vs-cursor',               'a': 'v0-by-vercel',           'b': 'cursor',                'cat': 'code',     'label': 'v0 by Vercel vs Cursor'},
    {'slug': 'cline-vs-github-copilot',              'a': 'cline',                  'b': 'github-copilot',        'cat': 'code',     'label': 'Cline vs GitHub Copilot'},
    {'slug': 'aider-vs-github-copilot',              'a': 'aider',                  'b': 'github-copilot',        'cat': 'code',     'label': 'Aider vs GitHub Copilot'},
    {'slug': 'windsurf-vs-github-copilot',           'a': 'windsurf',               'b': 'github-copilot',        'cat': 'code',     'label': 'Windsurf vs GitHub Copilot'},
    # ── Writing (leader: DeepL, #2: Grammarly) ───────────────────────────────
    {'slug': 'deepl-vs-grammarly',                   'a': 'deepl',                  'b': 'grammarly',             'cat': 'writing',  'label': 'DeepL vs Grammarly'},
    {'slug': 'quillbot-vs-grammarly',                'a': 'quillbot',               'b': 'grammarly',             'cat': 'writing',  'label': 'QuillBot vs Grammarly'},
    {'slug': 'jasper-vs-writesonic',                 'a': 'jasper',                 'b': 'writesonic',            'cat': 'writing',  'label': 'Jasper vs Writesonic'},
    {'slug': 'writesonic-vs-grammarly',              'a': 'writesonic',             'b': 'grammarly',             'cat': 'writing',  'label': 'Writesonic vs Grammarly'},
    {'slug': 'hemingway-editor-vs-grammarly',        'a': 'hemingway-editor',       'b': 'grammarly',             'cat': 'writing',  'label': 'Hemingway Editor vs Grammarly'},
    # ── Marketing (leader: Semrush, #2: Copy.ai) ─────────────────────────────
    {'slug': 'semrush-vs-copy-ai',                   'a': 'semrush',                'b': 'copy-ai',               'cat': 'marketing','label': 'Semrush vs Copy.ai'},
    {'slug': 'surferseo-vs-semrush',                 'a': 'surferseo',              'b': 'semrush',               'cat': 'marketing','label': 'SurferSEO vs Semrush'},
    {'slug': 'frase-vs-semrush',                     'a': 'frase',                  'b': 'semrush',               'cat': 'marketing','label': 'Frase vs Semrush'},
    {'slug': 'clearscope-vs-surferseo',              'a': 'clearscope',             'b': 'surferseo',             'cat': 'marketing','label': 'Clearscope vs SurferSEO'},
    {'slug': 'copy-ai-vs-jasper',                    'a': 'copy-ai',                'b': 'jasper',                'cat': 'marketing','label': 'Copy.ai vs Jasper'},
    # ── Image (leader: Midjourney, #2: Stable Diffusion) ─────────────────────
    {'slug': 'midjourney-vs-flux',                   'a': 'midjourney',             'b': 'flux',                  'cat': 'image',    'label': 'Midjourney vs Flux'},
    {'slug': 'midjourney-vs-stable-diffusion',       'a': 'midjourney',             'b': 'stable-diffusion',      'cat': 'image',    'label': 'Midjourney vs Stable Diffusion'},
    {'slug': 'ideogram-vs-midjourney',               'a': 'ideogram',               'b': 'midjourney',            'cat': 'image',    'label': 'Ideogram vs Midjourney'},
    {'slug': 'adobe-firefly-vs-midjourney',          'a': 'adobe-firefly',          'b': 'midjourney',            'cat': 'image',    'label': 'Adobe Firefly vs Midjourney'},
    {'slug': 'recraft-ai-vs-midjourney',             'a': 'recraft-ai',             'b': 'midjourney',            'cat': 'image',    'label': 'Recraft AI vs Midjourney'},
    {'slug': 'flux-vs-stable-diffusion',             'a': 'flux',                   'b': 'stable-diffusion',      'cat': 'image',    'label': 'Flux vs Stable Diffusion'},
    {'slug': 'leonardo-ai-vs-midjourney',            'a': 'leonardo-ai',            'b': 'midjourney',            'cat': 'image',    'label': 'Leonardo.ai vs Midjourney'},
    # ── Video (leader: CapCut, #2: Kling AI) ─────────────────────────────────
    {'slug': 'kling-vs-runway',                      'a': 'kling-ai',               'b': 'runway',                'cat': 'video',    'label': 'Kling AI vs Runway'},
    {'slug': 'capcut-vs-kling-ai',                   'a': 'capcut',                 'b': 'kling-ai',              'cat': 'video',    'label': 'CapCut vs Kling AI'},
    {'slug': 'runway-vs-capcut',                     'a': 'runway',                 'b': 'capcut',                'cat': 'video',    'label': 'Runway vs CapCut'},
    {'slug': 'heygen-vs-synthesia',                  'a': 'heygen',                 'b': 'synthesia',             'cat': 'video',    'label': 'HeyGen vs Synthesia'},
    {'slug': 'pika-vs-kling-ai',                     'a': 'pika',                   'b': 'kling-ai',              'cat': 'video',    'label': 'Pika vs Kling AI'},
    {'slug': 'luma-ai-vs-runway',                    'a': 'luma-ai',                'b': 'runway',                'cat': 'video',    'label': 'Luma AI vs Runway'},
    {'slug': 'google-veo-3-vs-runway',               'a': 'google-veo-3',           'b': 'runway',                'cat': 'video',    'label': 'Google Veo 3 vs Runway'},
    # ── Design (leader: Canva AI, #2: Figma AI) ──────────────────────────────
    {'slug': 'canva-ai-vs-figma-ai',                 'a': 'canva-ai',               'b': 'figma-ai',              'cat': 'design',   'label': 'Canva AI vs Figma AI'},
    {'slug': 'figma-ai-vs-canva-ai',                 'a': 'figma-ai',               'b': 'canva-ai',              'cat': 'design',   'label': 'Figma AI vs Canva AI'},
    {'slug': 'framer-ai-vs-canva-ai',                'a': 'framer-ai',              'b': 'canva-ai',              'cat': 'design',   'label': 'Framer AI vs Canva AI'},
    {'slug': 'looka-vs-canva-ai',                    'a': 'looka',                  'b': 'canva-ai',              'cat': 'design',   'label': 'Looka vs Canva AI'},
    {'slug': 'uizard-vs-figma-ai',                   'a': 'uizard',                 'b': 'figma-ai',              'cat': 'design',   'label': 'Uizard vs Figma AI'},
    {'slug': 'uxpilot-vs-figma-ai',                  'a': 'uxpilot',                'b': 'figma-ai',              'cat': 'design',   'label': 'UXPilot vs Figma AI'},
    {'slug': 'relume-vs-framer-ai',                  'a': 'relume',                 'b': 'framer-ai',             'cat': 'design',   'label': 'Relume vs Framer AI'},
    {'slug': 'whimsical-ai-vs-figma-ai',             'a': 'whimsical-ai',           'b': 'figma-ai',              'cat': 'design',   'label': 'Whimsical AI vs Figma AI'},
    # ── Voice (leader: Speechify, #2: ElevenLabs) ────────────────────────────
    {'slug': 'suno-vs-udio',                         'a': 'suno',                   'b': 'udio',                  'cat': 'music',    'label': 'Suno vs Udio'},
    {'slug': 'speechify-vs-elevenlabs',              'a': 'speechify',              'b': 'elevenlabs',            'cat': 'voice',    'label': 'Speechify vs ElevenLabs'},
    {'slug': 'elevenlabs-vs-murf-ai',                'a': 'elevenlabs',             'b': 'murf-ai',               'cat': 'voice',    'label': 'ElevenLabs vs Murf AI'},
    {'slug': 'elevenlabs-vs-playht',                 'a': 'elevenlabs',             'b': 'playht',                'cat': 'voice',    'label': 'ElevenLabs vs PlayHT'},
    {'slug': 'descript-vs-adobe-podcast',            'a': 'descript',               'b': 'adobe-podcast',         'cat': 'voice',    'label': 'Descript vs Adobe Podcast'},
    {'slug': 'suno-vs-elevenlabs',                   'a': 'suno',                   'b': 'elevenlabs',            'cat': 'voice',    'label': 'Suno vs ElevenLabs'},
    # ── Productivity (leader: Notion AI, #2: Zapier AI) ──────────────────────
    {'slug': 'notion-ai-vs-zapier-ai',               'a': 'notion-ai',              'b': 'zapier-ai',             'cat': 'productivity','label': 'Notion AI vs Zapier AI'},
    {'slug': 'gamma-vs-notion-ai',                   'a': 'gamma',                  'b': 'notion-ai',             'cat': 'productivity','label': 'Gamma vs Notion AI'},
    {'slug': 'otter-ai-vs-fireflies-ai',             'a': 'otter-ai',               'b': 'fireflies-ai',          'cat': 'productivity','label': 'Otter.ai vs Fireflies.ai'},
    {'slug': 'motion-vs-reclaim-ai',                 'a': 'motion',                 'b': 'reclaim-ai',            'cat': 'productivity','label': 'Motion vs Reclaim.ai'},
    {'slug': 'zapier-ai-vs-make',                    'a': 'zapier-ai',              'b': 'make',                  'cat': 'productivity','label': 'Zapier AI vs Make'},
    # ── Research (leader: Perplexity, #2: NotebookLM) ────────────────────────
    {'slug': 'perplexity-vs-notebooklm',             'a': 'perplexity',             'b': 'notebooklm',            'cat': 'research',  'label': 'Perplexity vs NotebookLM'},
    {'slug': 'elicit-vs-consensus',                  'a': 'elicit',                 'b': 'consensus',             'cat': 'research',  'label': 'Elicit vs Consensus'},
    {'slug': 'consensus-vs-perplexity',              'a': 'consensus',              'b': 'perplexity',            'cat': 'research',  'label': 'Consensus vs Perplexity'},
    {'slug': 'notebooklm-vs-humata',                 'a': 'notebooklm',             'b': 'humata',                'cat': 'research',  'label': 'NotebookLM vs Humata'},
    {'slug': 'scite-vs-semantic-scholar',            'a': 'scite',                  'b': 'semantic-scholar',      'cat': 'research',  'label': 'Scite vs Semantic Scholar'},
    # ── Data (leader: Looker Studio, #2: Tableau AI) ─────────────────────────
    {'slug': 'looker-studio-vs-tableau-ai',          'a': 'looker-studio',          'b': 'tableau-ai',            'cat': 'data',      'label': 'Looker Studio vs Tableau AI'},
    {'slug': 'julius-ai-vs-looker-studio',           'a': 'julius-ai',              'b': 'looker-studio',         'cat': 'data',      'label': 'Julius AI vs Looker Studio'},
    {'slug': 'hex-vs-looker-studio',                 'a': 'hex',                    'b': 'looker-studio',         'cat': 'data',      'label': 'Hex vs Looker Studio'},
    {'slug': 'rows-vs-hex',                          'a': 'rows',                   'b': 'hex',                   'cat': 'data',      'label': 'Rows vs Hex'},
    {'slug': 'retool-ai-vs-looker-studio',           'a': 'retool-ai',              'b': 'looker-studio',         'cat': 'data',      'label': 'Retool AI vs Looker Studio'},
    # ── No-Code (leader: Bubble, #2: Webflow) ────────────────────────────────
    {'slug': 'bubble-vs-webflow',                    'a': 'bubble',                 'b': 'webflow',               'cat': 'nocode',    'label': 'Bubble vs Webflow'},
    {'slug': 'lovable-vs-bubble',                    'a': 'lovable',                'b': 'bubble',                'cat': 'nocode',    'label': 'Lovable vs Bubble'},
    {'slug': 'flutterflow-vs-bubble',                'a': 'flutterflow',            'b': 'bubble',                'cat': 'nocode',    'label': 'FlutterFlow vs Bubble'},
    {'slug': 'glide-vs-bubble',                      'a': 'glide',                  'b': 'bubble',                'cat': 'nocode',    'label': 'Glide vs Bubble'},
    {'slug': 'softr-vs-bubble',                      'a': 'softr',                  'b': 'bubble',                'cat': 'nocode',    'label': 'Softr vs Bubble'},
    {'slug': 'webflow-vs-framer-ai',                 'a': 'webflow',                'b': 'framer-ai',             'cat': 'nocode',    'label': 'Webflow vs Framer AI'},
    # ── Education (leader: Photomath, #2: Duolingo Max) ──────────────────────
    {'slug': 'photomath-vs-duolingo-max',            'a': 'photomath',              'b': 'duolingo-max',          'cat': 'education', 'label': 'Photomath vs Duolingo Max'},
    {'slug': 'khanmigo-vs-photomath',                'a': 'khanmigo',               'b': 'photomath',             'cat': 'education', 'label': 'Khanmigo vs Photomath'},
    {'slug': 'duolingo-max-vs-khanmigo',             'a': 'duolingo-max',           'b': 'khanmigo',              'cat': 'education', 'label': 'Duolingo Max vs Khanmigo'},
    {'slug': 'youlearn-vs-notebooklm',               'a': 'youlearn',               'b': 'notebooklm',            'cat': 'education', 'label': 'YouLearn vs NotebookLM'},
    {'slug': 'synthesis-vs-khanmigo',                'a': 'synthesis',              'b': 'khanmigo',              'cat': 'education', 'label': 'Synthesis vs Khanmigo'},
    # ── Presentations (leader: Gamma, #2: Slidesgo) ──────────────────────────
    {'slug': 'gamma-vs-beautiful-ai',                'a': 'gamma',                  'b': 'beautiful-ai',          'cat': 'presentations','label': 'Gamma vs Beautiful.ai'},
    {'slug': 'gamma-vs-pitch',                       'a': 'gamma',                  'b': 'pitch',                 'cat': 'presentations','label': 'Gamma vs Pitch'},
    {'slug': 'gamma-vs-prezi',                       'a': 'gamma',                  'b': 'prezi',                 'cat': 'presentations','label': 'Gamma vs Prezi'},
    {'slug': 'beautiful-ai-vs-pitch',                'a': 'beautiful-ai',           'b': 'pitch',                 'cat': 'presentations','label': 'Beautiful.ai vs Pitch'},
    {'slug': 'slidesgo-vs-gamma',                    'a': 'slidesgo',               'b': 'gamma',                 'cat': 'presentations','label': 'Slidesgo vs Gamma'},
    # ── Business & Investment (leader: TradingView, #2: Fiscal.ai) ───────────
    {'slug': 'tradingview-vs-fiscal-ai',             'a': 'tradingview',            'b': 'fiscal-ai',               'cat': 'business',      'label': 'TradingView vs Fiscal.ai'},
    {'slug': 'koyfin-vs-tradingview',                'a': 'koyfin',                 'b': 'tradingview',           'cat': 'business',      'label': 'Koyfin vs TradingView'},
    {'slug': 'fiscal-ai-vs-koyfin',                  'a': 'fiscal-ai',                'b': 'koyfin',                'cat': 'business',      'label': 'Fiscal.ai vs Koyfin'},
    {'slug': 'tickeron-vs-tradingview',              'a': 'tickeron',               'b': 'tradingview',           'cat': 'business',      'label': 'Tickeron vs TradingView'},
    {'slug': 'uptrends-ai-vs-koyfin',               'a': 'uptrends-ai',            'b': 'koyfin',                'cat': 'business',      'label': 'Uptrends.ai vs Koyfin'},
    # ── Code (new) ────────────────────────────────────────────────────────────
    {'slug': 'kiro-vs-github-copilot',              'a': 'kiro',                   'b': 'github-copilot',        'cat': 'code',          'label': 'Kiro vs GitHub Copilot'},
    {'slug': 'continue-dev-vs-github-copilot',      'a': 'continue-dev',           'b': 'github-copilot',        'cat': 'code',          'label': 'Continue.dev vs GitHub Copilot'},
    {'slug': 'opencode-vs-claude-code',             'a': 'opencode',               'b': 'claude-code',           'cat': 'code',          'label': 'OpenCode vs Claude Code'},
    {'slug': 'zed-vs-cursor',                       'a': 'zed',                    'b': 'cursor',                'cat': 'code',          'label': 'Zed vs Cursor'},
    {'slug': 'kiro-vs-cursor',                      'a': 'kiro',                   'b': 'cursor',                'cat': 'code',          'label': 'Kiro vs Cursor'},
    # ── Image (new) ───────────────────────────────────────────────────────────
    {'slug': 'comfyui-vs-stable-diffusion',         'a': 'comfyui',                'b': 'stable-diffusion',      'cat': 'image',         'label': 'ComfyUI vs Stable Diffusion'},
    {'slug': 'krea-ai-vs-midjourney',               'a': 'krea-ai',                'b': 'midjourney',            'cat': 'image',         'label': 'Krea AI vs Midjourney'},
    {'slug': 'nano-banana-vs-leonardo-ai',          'a': 'nano-banana',            'b': 'leonardo-ai',           'cat': 'image',         'label': 'Nano Banana vs Leonardo.ai'},
    {'slug': 'chatgpt-images-vs-adobe-firefly',     'a': 'chatgpt-images',         'b': 'adobe-firefly',         'cat': 'image',         'label': 'ChatGPT Images vs Adobe Firefly'},
    # ── Design (new) ──────────────────────────────────────────────────────────
    {'slug': 'claude-design-vs-figma-ai',           'a': 'claude-design',          'b': 'figma-ai',              'cat': 'design',        'label': 'Claude Design vs Figma AI'},
    {'slug': 'google-stitch-vs-figma-ai',           'a': 'google-stitch',          'b': 'figma-ai',              'cat': 'design',        'label': 'Google Stitch vs Figma AI'},
    {'slug': 'recraft-vs-canva-ai',                 'a': 'recraft',                'b': 'canva-ai',              'cat': 'design',        'label': 'Recraft vs Canva AI'},
    {'slug': 'remove-bg-vs-canva-ai',               'a': 'remove-bg',              'b': 'canva-ai',              'cat': 'design',        'label': 'Remove.bg vs Canva AI'},
    # ── Video (new) ───────────────────────────────────────────────────────────
    {'slug': 'seedance-vs-runway',                  'a': 'seedance-2-0',           'b': 'runway',                'cat': 'video',         'label': 'Seedance vs Runway'},
    # ── Voice (new) ───────────────────────────────────────────────────────────
    {'slug': 'whisper-vs-otter-ai',                 'a': 'whisper',                'b': 'otter-ai',              'cat': 'voice',         'label': 'Whisper vs Otter.ai'},
    # ── Marketing (new) ───────────────────────────────────────────────────────
    {'slug': 'adcreative-ai-vs-canva-ai',           'a': 'adcreative-ai',          'b': 'canva-ai',              'cat': 'marketing',     'label': 'AdCreative.ai vs Canva AI'},
    # ── Data (new) ────────────────────────────────────────────────────────────
    {'slug': 'akkio-vs-julius-ai',                  'a': 'akkio',                  'b': 'julius-ai',             'cat': 'data',          'label': 'Akkio vs Julius AI'},
    # ── Agents (new) ──────────────────────────────────────────────────────────
    {'slug': 'autogpt-vs-manus',                    'a': 'autogpt',                'b': 'manus',                 'cat': 'agents',        'label': 'AutoGPT vs Manus'},
    # ── Education (new) ───────────────────────────────────────────────────────
    {'slug': 'coursera-coach-vs-khanmigo',          'a': 'coursera-coach',         'b': 'khanmigo',              'cat': 'education',     'label': 'Coursera Coach vs Khanmigo'},
    {'slug': 'socratic-vs-khanmigo',                'a': 'socratic-by-google',     'b': 'khanmigo',              'cat': 'education',     'label': 'Socratic vs Khanmigo'},
]

# Per-language UI labels — baked into HTML at build time
LABELS = {
    'en': {'ov':'Overview','pr':'Pricing','us':'Users','bf':'Best for','rt':'Rating','ad':'Advantages','ds':'Disadvantages','wb':'Website','vt':'Visit','rv':'Full review','nr':'No reviews yet','vd':'Verdict: Which Should You Choose?','ci_pre':'Choose','ci_suf':'if…','fq':'Frequently Asked Questions'},
    'ru': {'ov':'Обзор','pr':'Цена','us':'Пользователи','bf':'Лучше для','rt':'Рейтинг','ad':'Преимущества','ds':'Недостатки','wb':'Сайт','vt':'Посетить','rv':'Полный обзор','nr':'Нет отзывов','vd':'Вердикт: что выбрать?','ci_pre':'Выбирайте','ci_suf':'если…','fq':'Часто задаваемые вопросы'},
    'es': {'ov':'Descripción','pr':'Precio','us':'Usuarios','bf':'Mejor para','rt':'Calificación','ad':'Ventajas','ds':'Desventajas','wb':'Sitio web','vt':'Visitar','rv':'Reseña completa','nr':'Sin reseñas','vd':'Veredicto: ¿cuál elegir?','ci_pre':'Elige','ci_suf':'si…','fq':'Preguntas frecuentes'},
    'fr': {'ov':'Aperçu','pr':'Prix','us':'Utilisateurs','bf':'Idéal pour','rt':'Évaluation','ad':'Avantages','ds':'Inconvénients','wb':'Site web','vt':'Visiter','rv':'Avis complet','nr':'Aucun avis','vd':'Verdict : lequel choisir ?','ci_pre':'Choisissez','ci_suf':'si…','fq':'Questions fréquentes'},
    'de': {'ov':'Überblick','pr':'Preis','us':'Nutzer','bf':'Am besten für','rt':'Bewertung','ad':'Vorteile','ds':'Nachteile','wb':'Website','vt':'Besuchen','rv':'Vollständige Bewertung','nr':'Noch keine Bewertungen','vd':'Fazit: Was sollten Sie wählen?','ci_pre':'Wählen Sie','ci_suf':'wenn…','fq':'Häufig gestellte Fragen'},
    'pt': {'ov':'Visão geral','pr':'Preço','us':'Usuários','bf':'Melhor para','rt':'Avaliação','ad':'Vantagens','ds':'Desvantagens','wb':'Site','vt':'Visitar','rv':'Avaliação completa','nr':'Sem avaliações','vd':'Veredicto: qual escolher?','ci_pre':'Escolha','ci_suf':'se…','fq':'Perguntas frequentes'},
    'ua': {'ov':'Огляд','pr':'Ціна','us':'Користувачі','bf':'Краще для','rt':'Рейтинг','ad':'Переваги','ds':'Недоліки','wb':'Сайт','vt':'Відвідати','rv':'Повний огляд','nr':'Немає відгуків','vd':'Вердикт: що обрати?','ci_pre':'Обирайте','ci_suf':'якщо…','fq':'Часті запитання'},
    'he': {'ov':'סקירה','pr':'תמחור','us':'משתמשים','bf':'הטוב ביותר עבור','rt':'דירוג','ad':'יתרונות','ds':'חסרונות','wb':'אתר','vt':'בקר','rv':'סקירה מלאה','nr':'אין ביקורות עדיין','vd':'פסיקה: מה לבחור?','ci_pre':'בחר','ci_suf':'אם…','fq':'שאלות נפוצות'},
}

BADGE_LABELS = {
    'en':{'free':'Free','freemium':'Freemium','paid':'Paid'},
    'ru':{'free':'Бесплатно','freemium':'Freemium','paid':'Платно'},
    'es':{'free':'Gratis','freemium':'Freemium','paid':'De pago'},
    'fr':{'free':'Gratuit','freemium':'Freemium','paid':'Payant'},
    'de':{'free':'Kostenlos','freemium':'Freemium','paid':'Bezahlt'},
    'pt':{'free':'Grátis','freemium':'Freemium','paid':'Pago'},
    'ua':{'free':'Безкоштовно','freemium':'Freemium','paid':'Платно'},
    'he':{'free':'חינם','freemium':'Freemium','paid':'בתשלום'},
}

# Per-language title and meta description templates ({a} and {b} are tool names)
META_TEMPLATES = {
    'en': {
        'title': '{a} vs {b} 2026 — Comparison | AItoolFit',
        'desc':  '{a} vs {b}: side-by-side comparison of features, pricing, pros and cons. Pick the right AI tool for your task.',
        'headline': '{a} vs {b}: AI tool comparison 2026',
        'schema_desc': 'Side-by-side comparison of {a} and {b} — features, pricing, pros and cons.',
    },
    'ru': {
        'title': '{a} vs {b} 2026 — Сравнение | AItoolFit',
        'desc':  '{a} против {b}: сравнение функций, цен, плюсов и минусов. Выберите подходящий AI-инструмент для задачи.',
        'headline': '{a} vs {b}: сравнение AI-инструментов 2026',
        'schema_desc': 'Сравнение {a} и {b} — функции, цены, плюсы и минусы.',
    },
    'es': {
        'title': '{a} vs {b} 2026 — Comparación | AItoolFit',
        'desc':  '{a} vs {b}: comparación lado a lado de funciones, precios, ventajas y desventajas. Elige la herramienta de IA adecuada para tu tarea.',
        'headline': '{a} vs {b}: comparación de herramientas de IA 2026',
        'schema_desc': 'Comparación lado a lado de {a} y {b} — funciones, precios, ventajas y desventajas.',
    },
    'fr': {
        'title': '{a} vs {b} 2026 — Comparatif | AItoolFit',
        'desc':  '{a} vs {b} : comparatif des fonctionnalités, prix, avantages et inconvénients. Choisissez le bon outil IA pour votre tâche.',
        'headline': '{a} vs {b} : comparatif des outils IA 2026',
        'schema_desc': 'Comparatif côte à côte de {a} et {b} — fonctionnalités, prix, avantages et inconvénients.',
    },
    'de': {
        'title': '{a} vs {b} 2026 — Vergleich | AItoolFit',
        'desc':  '{a} vs {b}: direkter Vergleich von Funktionen, Preisen, Vor- und Nachteilen. Finden Sie das passende KI-Tool für Ihre Aufgabe.',
        'headline': '{a} vs {b}: KI-Tool-Vergleich 2026',
        'schema_desc': 'Direkter Vergleich von {a} und {b} — Funktionen, Preise, Vor- und Nachteile.',
    },
    'pt': {
        'title': '{a} vs {b} 2026 — Comparação | AItoolFit',
        'desc':  '{a} vs {b}: comparação lado a lado de recursos, preços, prós e contras. Escolha a ferramenta de IA certa para sua tarefa.',
        'headline': '{a} vs {b}: comparação de ferramentas de IA 2026',
        'schema_desc': 'Comparação lado a lado de {a} e {b} — recursos, preços, prós e contras.',
    },
    'ua': {
        'title': '{a} vs {b} 2026 — Порівняння | AItoolFit',
        'desc':  '{a} проти {b}: порівняння функцій, цін, переваг і недоліків. Оберіть AI-інструмент, який підходить для вашого завдання.',
        'headline': '{a} vs {b}: порівняння AI-інструментів 2026',
        'schema_desc': 'Порівняння {a} та {b} — функції, ціни, переваги й недоліки.',
    },
    'he': {
        'title': '{a} vs {b} 2026 — השוואה | AItoolFit',
        'desc':  '{a} מול {b}: השוואה של תכונות, מחירים, יתרונות וחסרונות. בחרו את כלי ה-AI המתאים למשימה שלכם.',
        'headline': '{a} vs {b}: השוואת כלי AI 2026',
        'schema_desc': 'השוואה של {a} ו-{b} — תכונות, מחירים, יתרונות וחסרונות.',
    },
}

# ── Category-specific description templates (multiple per cat for variety) ────
# Pick is deterministic: hash(slug) % len(templates) — same page = same desc.
CATEGORY_DESCS = {
    'en': {
        'chat':          ['{a} or {b}? Compare response quality, reasoning and pricing to find your AI assistant in 2026.',
                          '{a} vs {b}: which chatbot gives smarter answers? Honest side-by-side comparison for everyday tasks.',
                          'Choosing between {a} and {b}? See who wins on speed, accuracy and value — 2026 comparison.',
                          '{a} vs {b} — which AI chat is actually worth it? Full feature and pricing breakdown.'],
        'code':          ['{a} or {b} for coding? Compare autocomplete quality, IDE support and pricing in 2026.',
                          '{a} vs {b}: which AI coding assistant writes better code? Developer-focused 2026 comparison.',
                          'Switching from {b} to {a}? See what\'s different — speed, accuracy and time saved.',
                          '{a} vs {b}: autocomplete, refactoring, debugging — honest breakdown for developers.'],
        'image':         ['{a} vs {b}: which AI generates better images? Compare quality, style control and pricing in 2026.',
                          '{a} or {b} for AI art? See examples, prompting tips and which fits your creative workflow.',
                          'Can {b} match {a} quality? We compare realism, consistency and value — 2026.',
                          '{a} vs {b}: prompt accuracy, output quality and pricing — find the best image generator.'],
        'video':         ['{a} vs {b}: which AI makes better videos? Compare quality, speed and pricing for creators in 2026.',
                          '{a} or {b} for AI video? Full comparison — output quality, control and value.',
                          'Creating AI videos? {a} vs {b} — compare realism, motion quality and pricing in 2026.',
                          '{a} vs {b}: which video AI tool is worth paying for? Honest 2026 breakdown.'],
        'writing':       ['{a} or {b} for AI writing? Compare output quality, tone control and pricing — 2026.',
                          '{a} vs {b}: which writes better content? Full breakdown for bloggers and copywriters.',
                          'Choosing {a} or {b}? Compare writing quality, plagiarism risk and value in 2026.',
                          '{a} vs {b} for content: features, pricing and which actually improves your writing.'],
        'agents':        ['{a} vs {b}: which automates more? Compare workflow capabilities, integrations and pricing in 2026.',
                          'Building AI automations? {a} vs {b} — ease of use, integrations and pricing compared.',
                          '{a} or {b} for workflow automation? Full feature comparison for teams and solo builders.',
                          '{a} vs {b}: which AI agent handles complex workflows better? 2026 comparison.'],
        'design':        ['{a} or {b} for AI design? Compare output quality, templates and pricing in 2026.',
                          '{a} vs {b}: which AI design tool is better? Full comparison for creative teams.',
                          'Designers: {a} vs {b} — compare creative output, ease of use and pricing in 2026.',
                          '{a} vs {b}: UI, branding, illustration — honest AI design tool comparison 2026.'],
        'music':         ['{a} vs {b} for AI music: compare sound quality, genre range and pricing in 2026.',
                          '{a} or {b} — which AI music generator sounds better? Full comparison for creators.',
                          'Creating music with AI? {a} vs {b} — quality, customization and pricing breakdown.'],
        'voice':         ['{a} vs {b} for AI voice: compare naturalness, languages and pricing in 2026.',
                          '{a} or {b} — which sounds more human? Full voice quality and pricing comparison.',
                          'Text-to-speech: {a} vs {b} — voice quality, languages, speed and cost compared.'],
        'business':      ['{a} or {b} for business? Compare features, ROI and pricing — find the right AI tool in 2026.',
                          '{a} vs {b}: which AI business tool delivers more value? Full feature and pricing comparison.',
                          'Running a business? {a} vs {b} — compare automation, reporting and monthly cost.'],
        'marketing':     ['{a} vs {b} for AI marketing: compare content quality, automation and pricing in 2026.',
                          '{a} or {b} — which AI marketing tool drives better results? Full 2026 comparison.',
                          'Marketers: {a} vs {b} — compare ad copy, SEO features and pricing.'],
        'productivity':  ['{a} or {b} for productivity? Compare features, integrations and pricing — work smarter in 2026.',
                          '{a} vs {b}: which AI productivity tool saves more time? Full feature breakdown.',
                          '{a} vs {b}: task management, focus and automation — honest productivity comparison.'],
        'nocode':        ['{a} vs {b} for no-code AI? Compare ease of use, capabilities and pricing in 2026.',
                          'Building without code? {a} vs {b} — compare features, templates and monthly cost.',
                          '{a} or {b} — which no-code AI platform is easier to launch with? 2026 comparison.'],
        'data':          ['{a} vs {b} for AI data analysis: compare capabilities, integrations and pricing in 2026.',
                          '{a} or {b} for data? Full comparison — analysis depth, visualization and cost.',
                          'Data teams: {a} vs {b} — which AI handles your datasets better? 2026 breakdown.'],
        'research':      ['{a} vs {b} for AI research: compare accuracy, sources and pricing in 2026.',
                          '{a} or {b} for research? See which finds more accurate answers — 2026 comparison.',
                          '{a} vs {b}: citation quality, depth and speed — best AI research tool in 2026.'],
        'education':     ['{a} vs {b} for AI learning: compare content quality, personalization and pricing in 2026.',
                          'Learning with AI? {a} vs {b} — compare teaching quality, subjects and cost.',
                          '{a} or {b} for education? Full comparison of features, curriculum and pricing.'],
        'presentations': ['{a} vs {b} for AI presentations: compare design quality, templates and pricing in 2026.',
                          '{a} or {b} — which makes better slides? Full AI presentation tool comparison.',
                          '{a} vs {b}: slide quality, customization and pricing — best AI presentation tool 2026.'],
    },
    'ru': {
        'chat':          ['{a} или {b}? Сравниваем качество ответов, логику и цену — найдите своего AI-ассистента в 2026.',
                          '{a} vs {b}: какой чат-бот умнее? Честное сравнение для повседневных задач.',
                          'Выбираете между {a} и {b}? Сравниваем скорость, точность и ценность — обзор 2026.',
                          '{a} или {b} — кто реально стоит своих денег? Полное сравнение функций и цен.'],
        'code':          ['{a} или {b} для программирования? Сравниваем автодополнение, IDE и цены в 2026.',
                          '{a} vs {b}: какой AI-помощник пишет лучший код? Честное сравнение для разработчиков.',
                          'Переходите с {b} на {a}? Смотрите, что изменится — скорость, точность, время.',
                          '{a} vs {b}: автодополнение, рефакторинг, отладка — честный обзор 2026.'],
        'image':         ['{a} vs {b}: какой AI генерирует лучше изображения? Сравниваем качество и цены в 2026.',
                          '{a} или {b} для AI-арта? Примеры, советы по промптам и честный обзор.',
                          '{a} vs {b}: точность промптов, качество и цена — лучший генератор 2026.',
                          'Может ли {b} сравниться с {a}? Сравниваем реализм, стабильность и ценность.'],
        'video':         ['{a} vs {b}: какой AI снимает лучшее видео? Сравниваем качество и цены для создателей.',
                          '{a} или {b} для AI-видео? Полное сравнение — качество, управление, ценность.',
                          'Создаёте AI-видео? {a} vs {b} — реализм, плавность движений и цены в 2026.',
                          '{a} vs {b}: стоит ли платить? Честный обзор 2026.'],
        'writing':       ['{a} или {b} для AI-текстов? Сравниваем качество, тон и цены — 2026.',
                          '{a} vs {b}: кто пишет лучше? Обзор для блогеров и копирайтеров.',
                          '{a} vs {b}: качество текста, риск плагиата и ценность — сравнение 2026.',
                          '{a} или {b} для контента? Функции, цены и кто реально улучшит ваши тексты.'],
        'agents':        ['{a} vs {b}: кто автоматизирует больше? Сравниваем возможности и цены в 2026.',
                          'Строите автоматизации? {a} vs {b} — простота, интеграции и цены.',
                          '{a} или {b} для автоматизации? Полное сравнение для команд и фрилансеров.',
                          '{a} vs {b}: кто лучше справляется со сложными сценариями? Обзор 2026.'],
        'design':        ['{a} или {b} для дизайна? Сравниваем качество, шаблоны и цены в 2026.',
                          '{a} vs {b}: какой AI-инструмент лучше для дизайна? Полное сравнение 2026.',
                          'Дизайнерам: {a} vs {b} — качество, простота и цены в одном обзоре.'],
        'music':         ['{a} vs {b} для AI-музыки: качество звука, жанры и цены в 2026.',
                          '{a} или {b} — кто звучит лучше? Полное сравнение для музыкантов.',
                          'AI-музыка: {a} vs {b} — качество, кастомизация и цены.'],
        'voice':         ['{a} vs {b} для синтеза речи: естественность, языки и цены в 2026.',
                          '{a} или {b} — кто звучит человечнее? Полное сравнение голосовых AI.',
                          '{a} vs {b}: качество голоса, языки, скорость и стоимость — обзор 2026.'],
        'business':      ['{a} или {b} для бизнеса? Сравниваем функции, ROI и цены в 2026.',
                          '{a} vs {b}: какой AI-инструмент даёт больше пользы? Полное сравнение.',
                          'Бизнес: {a} vs {b} — автоматизация, отчётность и ежемесячные расходы.'],
        'marketing':     ['{a} vs {b} для маркетинга: качество контента, автоматизация и цены в 2026.',
                          '{a} или {b} — кто даёт лучший результат в маркетинге? Обзор 2026.',
                          'Маркетологам: {a} vs {b} — рекламные тексты, SEO и цены.'],
        'productivity':  ['{a} или {b} для продуктивности? Функции, интеграции и цены — 2026.',
                          '{a} vs {b}: кто экономит больше времени? Полное сравнение.',
                          '{a} vs {b}: задачи, фокус и автоматизация — честное сравнение 2026.'],
        'nocode':        ['{a} vs {b} для no-code AI? Простота, возможности и цены в 2026.',
                          'Без кода: {a} vs {b} — функции, шаблоны и месячные расходы.',
                          '{a} или {b} — с какого no-code AI проще стартовать? Обзор 2026.'],
        'data':          ['{a} vs {b} для анализа данных: возможности, интеграции и цены в 2026.',
                          '{a} или {b} для данных? Глубина анализа, визуализация и стоимость.',
                          '{a} vs {b}: кто лучше работает с вашими датасетами? Обзор 2026.'],
        'research':      ['{a} vs {b} для исследований: точность, источники и цены в 2026.',
                          '{a} или {b} — кто находит более точные ответы? Сравнение 2026.',
                          '{a} vs {b}: цитаты, глубина и скорость — лучший AI для исследований.'],
        'education':     ['{a} vs {b} для обучения: качество контента, персонализация и цены в 2026.',
                          'Учитесь с AI? {a} vs {b} — качество, предметы и стоимость.',
                          '{a} или {b} для образования? Полное сравнение функций и цен.'],
        'presentations': ['{a} vs {b} для презентаций: дизайн, шаблоны и цены в 2026.',
                          '{a} или {b} — кто делает слайды лучше? Полное сравнение AI-инструментов.',
                          '{a} vs {b}: качество слайдов, кастомизация и цена — лучший выбор 2026.'],
    },
    'es': {
        'chat':          ['{a} o {b}? Compara calidad de respuesta, razonamiento y precio — encuentra tu asistente AI en 2026.',
                          '{a} vs {b}: ¿cuál chatbot da mejores respuestas? Comparación honesta para tareas cotidianas.',
                          '¿{a} o {b}? Velocidad, precisión y valor — comparación completa 2026.'],
        'code':          ['{a} o {b} para programar? Compara autocompletado, soporte de IDE y precios en 2026.',
                          '{a} vs {b}: ¿cuál asistente AI escribe mejor código? Comparación 2026 para desarrolladores.'],
        'image':         ['{a} vs {b}: ¿cuál AI genera mejores imágenes? Compara calidad, control de estilo y precios 2026.',
                          '{a} o {b} para arte AI? Ejemplos, tips de prompts y cuál encaja en tu flujo creativo.'],
        'video':         ['{a} vs {b}: ¿cuál AI crea mejores videos? Compara calidad, velocidad y precios para creadores.',
                          '{a} o {b} para video AI? Comparación completa — calidad, control y valor 2026.'],
        'writing':       ['{a} o {b} para escritura AI? Compara calidad, tono y precios — comparación 2026.',
                          '{a} vs {b}: ¿cuál escribe mejor contenido? Guía para bloggers y copywriters.'],
        'agents':        ['{a} vs {b}: ¿cuál automatiza más? Compara flujos de trabajo, integraciones y precios 2026.',
                          '¿{a} o {b} para automatización? Comparación completa para equipos y freelancers.'],
        'design':        ['{a} o {b} para diseño AI? Compara calidad, plantillas y precios en 2026.',
                          '{a} vs {b}: ¿cuál herramienta de diseño AI es mejor? Comparación completa 2026.'],
        'music':         ['{a} vs {b} para música AI: compara calidad de sonido, géneros y precios en 2026.'],
        'voice':         ['{a} vs {b} para voz AI: naturalidad, idiomas y precios en 2026.'],
        'business':      ['{a} o {b} para negocios? Compara funciones, ROI y precios en 2026.'],
        'marketing':     ['{a} vs {b} para marketing AI: calidad de contenido, automatización y precios 2026.'],
        'productivity':  ['{a} o {b} para productividad? Funciones, integraciones y precios — 2026.'],
        'nocode':        ['{a} vs {b} para no-code AI? Facilidad, capacidades y precios en 2026.'],
        'data':          ['{a} vs {b} para análisis de datos AI: capacidades, integraciones y precios 2026.'],
        'research':      ['{a} vs {b} para investigación AI: precisión, fuentes y precios en 2026.'],
        'education':     ['{a} vs {b} para aprendizaje AI: calidad, personalización y precios 2026.'],
        'presentations': ['{a} vs {b} para presentaciones AI: diseño, plantillas y precios 2026.'],
    },
    'fr': {
        'chat':          ['{a} ou {b} ? Comparez qualité des réponses, raisonnement et prix — trouvez votre assistant AI en 2026.',
                          '{a} vs {b} : quel chatbot répond le mieux ? Comparaison honnête pour les tâches quotidiennes.',
                          '{a} ou {b} — lequel vaut vraiment son prix ? Comparatif complet des fonctionnalités 2026.'],
        'code':          ['{a} ou {b} pour coder ? Comparez la complétion, le support IDE et les prix en 2026.',
                          '{a} vs {b} : quel assistant AI écrit le meilleur code ? Comparatif développeurs 2026.'],
        'image':         ['{a} vs {b} : quel AI génère les meilleures images ? Qualité, contrôle et prix en 2026.',
                          '{a} ou {b} pour l\'art AI ? Exemples, prompts et quel outil convient à votre workflow.'],
        'video':         ['{a} vs {b} : quel AI crée les meilleures vidéos ? Qualité, vitesse et prix pour créateurs.',
                          '{a} ou {b} pour la vidéo AI ? Comparatif complet — qualité, contrôle et valeur 2026.'],
        'writing':       ['{a} ou {b} pour l\'écriture AI ? Qualité, ton et prix — comparatif 2026.',
                          '{a} vs {b} : lequel écrit le meilleur contenu ? Guide pour blogueurs et copywriters.'],
        'agents':        ['{a} vs {b} : lequel automatise davantage ? Workflows, intégrations et prix 2026.',
                          '{a} ou {b} pour l\'automatisation ? Comparatif complet pour équipes et freelances.'],
        'design':        ['{a} ou {b} pour le design AI ? Qualité, templates et prix en 2026.',
                          '{a} vs {b} : quel outil de design AI est le meilleur ? Comparatif complet 2026.'],
        'music':         ['{a} vs {b} pour la musique AI : qualité sonore, genres et prix en 2026.'],
        'voice':         ['{a} vs {b} pour la voix AI : naturel, langues et prix en 2026.'],
        'business':      ['{a} ou {b} pour les entreprises ? Fonctionnalités, ROI et prix en 2026.'],
        'marketing':     ['{a} vs {b} pour le marketing AI : contenu, automatisation et prix 2026.'],
        'productivity':  ['{a} ou {b} pour la productivité ? Fonctionnalités, intégrations et prix 2026.'],
        'nocode':        ['{a} vs {b} pour le no-code AI ? Facilité, capacités et prix en 2026.'],
        'data':          ['{a} vs {b} pour l\'analyse de données AI : capacités, intégrations et prix 2026.'],
        'research':      ['{a} vs {b} pour la recherche AI : précision, sources et prix en 2026.'],
        'education':     ['{a} vs {b} pour l\'apprentissage AI : qualité, personnalisation et prix 2026.'],
        'presentations': ['{a} vs {b} pour les présentations AI : design, templates et prix 2026.'],
    },
    'de': {
        'chat':          ['{a} oder {b}? Vergleich von Antwortqualität, Logik und Preis — finden Sie Ihren KI-Assistenten 2026.',
                          '{a} vs {b}: Welcher Chatbot ist intelligenter? Ehrlicher Vergleich für Alltagsaufgaben.',
                          '{a} vs {b} — welches KI-Chat lohnt sich wirklich? Vollständiger Funktions- und Preisvergleich.'],
        'code':          ['{a} oder {b} für Programmierung? Autovervollständigung, IDE-Unterstützung und Preise im Vergleich.',
                          '{a} vs {b}: Welcher KI-Coding-Assistent schreibt besseren Code? Entwicklervergleich 2026.'],
        'image':         ['{a} vs {b}: Welche KI generiert bessere Bilder? Qualität, Stilkontrolle und Preise 2026.',
                          '{a} oder {b} für KI-Kunst? Beispiele, Prompting-Tipps und ehrlicher Vergleich.'],
        'video':         ['{a} vs {b}: Welche KI erstellt bessere Videos? Qualität, Geschwindigkeit und Preise 2026.',
                          '{a} oder {b} für KI-Video? Vollständiger Vergleich — Qualität, Kontrolle, Wert.'],
        'writing':       ['{a} oder {b} für KI-Texte? Qualität, Ton und Preise — Vergleich 2026.',
                          '{a} vs {b}: Wer schreibt bessere Inhalte? Leitfaden für Blogger und Texter.'],
        'agents':        ['{a} vs {b}: Wer automatisiert mehr? Workflows, Integrationen und Preise 2026.',
                          '{a} oder {b} für Automatisierung? Vollständiger Vergleich für Teams und Freelancer.'],
        'design':        ['{a} oder {b} für KI-Design? Qualität, Vorlagen und Preise im Vergleich 2026.'],
        'music':         ['{a} vs {b} für KI-Musik: Klangqualität, Genres und Preise 2026.'],
        'voice':         ['{a} vs {b} für KI-Stimme: Natürlichkeit, Sprachen und Preise 2026.'],
        'business':      ['{a} oder {b} für Unternehmen? Funktionen, ROI und Preise im Vergleich 2026.'],
        'marketing':     ['{a} vs {b} für KI-Marketing: Inhaltsqualität, Automatisierung und Preise 2026.'],
        'productivity':  ['{a} oder {b} für Produktivität? Funktionen, Integrationen und Preise 2026.'],
        'nocode':        ['{a} vs {b} für No-Code-KI? Benutzerfreundlichkeit, Funktionen und Preise 2026.'],
        'data':          ['{a} vs {b} für KI-Datenanalyse: Funktionen, Integrationen und Preise 2026.'],
        'research':      ['{a} vs {b} für KI-Recherche: Genauigkeit, Quellen und Preise 2026.'],
        'education':     ['{a} vs {b} für KI-Lernen: Qualität, Personalisierung und Preise 2026.'],
        'presentations': ['{a} vs {b} für KI-Präsentationen: Design, Vorlagen und Preise 2026.'],
    },
    'pt': {
        'chat':          ['{a} ou {b}? Compare qualidade de respostas, raciocínio e preço — encontre seu assistente AI em 2026.',
                          '{a} vs {b}: qual chatbot responde melhor? Comparação honesta para tarefas do dia a dia.',
                          '{a} ou {b} — qual vale realmente a pena? Comparação completa de funções e preços.'],
        'code':          ['{a} ou {b} para programar? Compare autocompletar, suporte a IDE e preços em 2026.',
                          '{a} vs {b}: qual assistente AI escreve código melhor? Comparação para devs 2026.'],
        'image':         ['{a} vs {b}: qual AI gera imagens melhores? Qualidade, controle de estilo e preços 2026.',
                          '{a} ou {b} para arte AI? Exemplos, dicas de prompts e comparação honesta.'],
        'video':         ['{a} vs {b}: qual AI cria vídeos melhores? Qualidade, velocidade e preços para criadores.',
                          '{a} ou {b} para vídeo AI? Comparação completa — qualidade, controle e valor 2026.'],
        'writing':       ['{a} ou {b} para escrita AI? Qualidade, tom e preços — comparação 2026.',
                          '{a} vs {b}: qual escreve conteúdo melhor? Guia para blogueiros e copywriters.'],
        'agents':        ['{a} vs {b}: qual automatiza mais? Fluxos de trabalho, integrações e preços 2026.',
                          '{a} ou {b} para automação? Comparação completa para equipes e freelancers.'],
        'design':        ['{a} ou {b} para design AI? Qualidade, templates e preços em 2026.'],
        'music':         ['{a} vs {b} para música AI: qualidade de som, gêneros e preços em 2026.'],
        'voice':         ['{a} vs {b} para voz AI: naturalidade, idiomas e preços em 2026.'],
        'business':      ['{a} ou {b} para negócios? Funções, ROI e preços em 2026.'],
        'marketing':     ['{a} vs {b} para marketing AI: conteúdo, automação e preços 2026.'],
        'productivity':  ['{a} ou {b} para produtividade? Funções, integrações e preços 2026.'],
        'nocode':        ['{a} vs {b} para no-code AI? Facilidade, capacidades e preços em 2026.'],
        'data':          ['{a} vs {b} para análise de dados AI: capacidades, integrações e preços 2026.'],
        'research':      ['{a} vs {b} para pesquisa AI: precisão, fontes e preços em 2026.'],
        'education':     ['{a} vs {b} para aprendizado AI: qualidade, personalização e preços 2026.'],
        'presentations': ['{a} vs {b} para apresentações AI: design, templates e preços 2026.'],
    },
    'ua': {
        'chat':          ['{a} чи {b}? Порівнюємо якість відповідей, логіку та ціну — знайдіть свого AI-асистента 2026.',
                          '{a} vs {b}: який чат-бот розумніший? Чесне порівняння для щоденних задач.',
                          '{a} vs {b} — хто реально вартий своїх грошей? Повне порівняння 2026.'],
        'code':          ['{a} чи {b} для програмування? Автодоповнення, підтримка IDE та ціни в 2026.',
                          '{a} vs {b}: який AI пише кращий код? Чесне порівняння для розробників 2026.'],
        'image':         ['{a} vs {b}: який AI генерує кращі зображення? Якість, контроль і ціни 2026.',
                          '{a} чи {b} для AI-арту? Приклади, поради та чесний огляд.'],
        'video':         ['{a} vs {b}: який AI створює кращі відео? Якість, швидкість і ціни для творців.',
                          '{a} чи {b} для AI-відео? Повне порівняння — якість, контроль, цінність 2026.'],
        'writing':       ['{a} чи {b} для AI-текстів? Якість, тон і ціни — порівняння 2026.',
                          '{a} vs {b}: хто пише кращий контент? Огляд для блогерів і копірайтерів.'],
        'agents':        ['{a} vs {b}: хто автоматизує більше? Воркфлоу, інтеграції та ціни 2026.',
                          '{a} чи {b} для автоматизації? Повне порівняння для команд і фрілансерів.'],
        'design':        ['{a} чи {b} для дизайну AI? Якість, шаблони та ціни в 2026.'],
        'music':         ['{a} vs {b} для AI-музики: якість звуку, жанри та ціни в 2026.'],
        'voice':         ['{a} vs {b} для синтезу мовлення: природність, мови та ціни 2026.'],
        'business':      ['{a} чи {b} для бізнесу? Функції, ROI та ціни в 2026.'],
        'marketing':     ['{a} vs {b} для маркетингу AI: контент, автоматизація та ціни 2026.'],
        'productivity':  ['{a} чи {b} для продуктивності? Функції, інтеграції та ціни 2026.'],
        'nocode':        ['{a} vs {b} для no-code AI? Простота, можливості та ціни в 2026.'],
        'data':          ['{a} vs {b} для аналізу даних AI: можливості, інтеграції та ціни 2026.'],
        'research':      ['{a} vs {b} для досліджень AI: точність, джерела та ціни 2026.'],
        'education':     ['{a} vs {b} для навчання AI: якість, персоналізація та ціни 2026.'],
        'presentations': ['{a} vs {b} для презентацій AI: дизайн, шаблони та ціни 2026.'],
    },
    'he': {
        'chat':          ['{a} או {b}? השווה איכות תשובות, מחירים ויכולות — מצא את עוזר ה-AI שלך ב-2026.',
                          '{a} vs {b}: איזה צ\'אטבוט נותן תשובות חכמות יותר? השוואה אמיתית למשימות יומיומיות.',
                          '{a} vs {b} — מי באמת שווה את הכסף? השוואת תכונות ומחירים מלאה 2026.'],
        'code':          ['{a} או {b} לתכנות? השווה השלמה אוטומטית, תמיכת IDE ומחירים ב-2026.',
                          '{a} vs {b}: איזה עוזר AI כותב קוד טוב יותר? השוואה למפתחים 2026.'],
        'image':         ['{a} vs {b}: איזה AI מייצר תמונות טובות יותר? איכות, שליטה בסגנון ומחירים 2026.',
                          '{a} או {b} ליצירת תמונות AI? דוגמאות, טיפים ואיזה מתאים לתהליך העבודה שלך.'],
        'video':         ['{a} vs {b}: איזה AI יוצר סרטונים טובים יותר? איכות, מהירות ומחירים ליוצרים.',
                          '{a} או {b} לווידאו AI? השוואה מלאה — איכות, שליטה וערך 2026.'],
        'writing':       ['{a} או {b} לכתיבה AI? השווה איכות, טון ומחירים — 2026.',
                          '{a} vs {b}: מי כותב תוכן טוב יותר? מדריך לבלוגרים וקופירייטרים.'],
        'agents':        ['{a} vs {b}: מי מאוטמט יותר? תהליכי עבודה, אינטגרציות ומחירים 2026.',
                          '{a} או {b} לאוטומציה? השוואה מלאה לצוותים ופרילנסרים.'],
        'design':        ['{a} או {b} לעיצוב AI? איכות, תבניות ומחירים ב-2026.'],
        'music':         ['{a} vs {b} למוזיקת AI: איכות סאונד, ז\'אנרים ומחירים ב-2026.'],
        'voice':         ['{a} vs {b} לקול AI: טבעיות, שפות ומחירים ב-2026.'],
        'business':      ['{a} או {b} לעסקים? תכונות, ROI ומחירים ב-2026.'],
        'marketing':     ['{a} vs {b} לשיווק AI: תוכן, אוטומציה ומחירים 2026.'],
        'productivity':  ['{a} או {b} לפרודוקטיביות? תכונות, אינטגרציות ומחירים 2026.'],
        'nocode':        ['{a} vs {b} לנו-קוד AI? קלות שימוש, יכולות ומחירים ב-2026.'],
        'data':          ['{a} vs {b} לניתוח נתונים AI: יכולות, אינטגרציות ומחירים 2026.'],
        'research':      ['{a} vs {b} למחקר AI: דיוק, מקורות ומחירים ב-2026.'],
        'education':     ['{a} vs {b} ללמידה AI: איכות, התאמה אישית ומחירים 2026.'],
        'presentations': ['{a} vs {b} למצגות AI: עיצוב, תבניות ומחירים 2026.'],
    },
}

# Хвост описания: шаблоны CATEGORY_DESCS дают всего 57–83 символа, из-за чего
# 926 compare-страниц имели meta description вдвое короче полезной длины —
# половина сниппета в выдаче не использовалась. Дописываем best_for первого
# инструмента: это и удлиняет описание, и делает его уникальным для страницы.
DESC_TAIL = {
    'en': ' {a} is best for {f}.',
    'es': ' {a} destaca en: {f}.',
    'de': ' {a} eignet sich für: {f}.',
    'ru': ' {a} — для задач: {f}.',
    'ua': ' {a} — для завдань: {f}.',
    'he': ' {a} מתאים ל־{f}.',
    'fr': ' {a} excelle pour : {f}.',
    'pt': ' {a} se destaca em: {f}.',
}
DESC_TARGET = 158


def _extend_desc(head, lang, a):
    """Дотянуть описание до полезной длины фактом best_for, обрезав по слову."""
    best_for = (a or {}).get('best_for') or ''
    if not best_for or len(head) >= DESC_TARGET - 30:
        return head
    tmpl = DESC_TAIL.get(lang, DESC_TAIL['en'])
    room = DESC_TARGET - len(head) - len(tmpl.format(a=a.get('name', ''), f=''))
    if room < 20:
        return head
    f = best_for.rstrip(' .')
    if len(f) > room:
        cut = f[:room]
        if ' ' in cut:
            cut = cut.rsplit(' ', 1)[0]
        f = cut.rstrip(' ,;–—-')
        # не обрывать на предлоге/союзе: «…wireframes con.», «…видео и.»
        while f and len(f.rsplit(' ', 1)[-1]) <= 3 and ' ' in f:
            f = f.rsplit(' ', 1)[0].rstrip(' ,;–—-')
        if len(f) < 15:
            return head
    return head + tmpl.format(a=a.get('name', ''), f=f[0].lower() + f[1:] if f else f)


def pick_cat_desc(slug, cat, lang, a_name, b_name, a=None):
    """Pick a deterministic category-specific description. Falls back to generic."""
    lang_descs = CATEGORY_DESCS.get(lang, CATEGORY_DESCS.get('en', {}))
    templates = lang_descs.get(cat)
    if not templates:
        # fallback to generic META_TEMPLATES desc
        M = META_TEMPLATES.get(lang, META_TEMPLATES['en'])
        raw = M['desc'].format(a=a_name, b=b_name)
    else:
        idx = int(hashlib.md5(slug.encode()).hexdigest(), 16) % len(templates)
        raw = templates[idx].format(a=a_name, b=b_name)
    raw = _extend_desc(raw, lang, a)
    return raw[:157] + '...' if len(raw) > 160 else raw

# ── HTTP / data ───────────────────────────────────────────────────────────────
def sb_get(slug, lang):
    """Fetch a single tool by slug+lang from Supabase. Returns dict or None."""
    qs = urllib.parse.urlencode({
        'slug': f'eq.{slug}',
        'lang': f'eq.{lang}',
        'select': 'slug,name,description,best_for,pros,cons,badge,url,domain,users,rating',
    })
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tools?{qs}',
        headers={'apikey': SB_ANON, 'Authorization': f'Bearer {SB_ANON}'}
    )
    last_err = None
    for attempt in range(4):
        try:
            with urllib.request.urlopen(req, timeout=30) as resp:
                rows = json.load(resp)
            return rows[0] if rows else None
        except (urllib.error.URLError, socket.timeout, TimeoutError) as e:
            last_err = e
            time.sleep(1.5 * (attempt + 1))
    raise last_err

def fetch_tool(slug, lang):
    """Fetch with EN fallback if requested lang has no row."""
    row = sb_get(slug, lang)
    if not row and lang != 'en':
        row = sb_get(slug, 'en')
    return row

def fetch_comparison(slug, lang):
    """Fetch verdict + FAQ from comparisons table. Falls back to EN."""
    for l in ([lang] if lang == 'en' else [lang, 'en']):
        qs = urllib.parse.urlencode({
            'slug': f'eq.{slug}',
            'lang': f'eq.{l}',
            'select': 'choose_a,choose_b,faq',
        })
        req = urllib.request.Request(
            f'{SB_URL}/rest/v1/comparisons?{qs}',
            headers={'apikey': SB_ANON, 'Authorization': f'Bearer {SB_ANON}'}
        )
        try:
            with urllib.request.urlopen(req, timeout=10) as resp:
                rows = json.load(resp)
            if rows and (rows[0].get('choose_a') or rows[0].get('faq')):
                return rows[0]
        except Exception:
            pass
    return None

def build_verdict_faq_html(comp, a_name, b_name, lang='en', L=None):
    """Build the Verdict + FAQ section HTML from comparisons table data."""
    if L is None:
        L = LABELS.get(lang, LABELS['en'])
    if not comp:
        return ''
    choose_a = comp.get('choose_a')
    choose_b = comp.get('choose_b')
    faq = comp.get('faq')
    if not (choose_a or faq):
        return ''

    if isinstance(choose_a, str):
        try: choose_a = json.loads(choose_a)
        except Exception: choose_a = []
    if isinstance(choose_b, str):
        try: choose_b = json.loads(choose_b)
        except Exception: choose_b = []
    choose_a = choose_a or []
    choose_b = choose_b or []
    faq = faq or []

    ca_html = ''.join(
        f'<li style="display:flex;gap:6px;align-items:flex-start;font-size:14px;color:var(--text2);line-height:1.6;margin-bottom:8px">'
        f'<span style="min-width:0;word-break:break-word">{esc(b)}</span></li>' for b in choose_a
    )
    cb_html = ''.join(
        f'<li style="display:flex;gap:6px;align-items:flex-start;font-size:14px;color:var(--text2);line-height:1.6;margin-bottom:8px">'
        f'<span style="min-width:0;word-break:break-word">{esc(b)}</span></li>' for b in choose_b
    )
    faq_html = ''
    for item in faq:
        faq_html += (
            f'<div style="background:var(--bg2);padding:1.25rem;border-bottom:1px solid var(--border)" '
            f'itemscope itemprop="mainEntity" itemtype="https://schema.org/Question">'
            f'<div style="font-family:var(--font-display);font-size:15px;font-weight:600;margin-bottom:0.5rem" itemprop="name">{esc(item.get("q",""))}</div>'
            f'<div style="font-size:14px;color:var(--text2);line-height:1.65" itemscope itemprop="acceptedAnswer" itemtype="https://schema.org/Answer">'
            f'<span itemprop="text">{esc(item.get("a",""))}</span></div></div>'
        )

    verdict_block = ''
    if choose_a or choose_b:
        verdict_block = (
            f'<style>.vgrid{{display:grid;grid-template-columns:minmax(0,1fr) minmax(0,1fr);gap:16px;margin-bottom:2.5rem}}@media(max-width:600px){{.vgrid{{grid-template-columns:1fr}}}}</style>'
            f'<h2 style="font-family:var(--font-display);font-size:22px;font-weight:700;margin-bottom:1.25rem">{esc(L.get("vd","Verdict: Which Should You Choose?"))}</h2>'
            f'<div class="vgrid">'
            f'<div style="background:var(--bg2);border:1px solid rgba(124,106,247,0.25);border-radius:14px;padding:1.25rem">'
            f'<div style="font-family:var(--font-display);font-size:14px;font-weight:700;color:var(--accent);margin-bottom:0.75rem;word-break:break-word">{esc(L.get("ci_pre","Choose"))} {esc(a_name)} {esc(L.get("ci_suf","if…"))}</div>'
            f'<ul style="list-style:none;padding:0;margin:0">{ca_html}</ul></div>'
            f'<div style="background:var(--bg2);border:1px solid rgba(124,106,247,0.25);border-radius:14px;padding:1.25rem">'
            f'<div style="font-family:var(--font-display);font-size:14px;font-weight:700;color:var(--accent);margin-bottom:0.75rem;word-break:break-word">{esc(L.get("ci_pre","Choose"))} {esc(b_name)} {esc(L.get("ci_suf","if…"))}</div>'
            f'<ul style="list-style:none;padding:0;margin:0">{cb_html}</ul></div></div>'
        )

    faq_section = ''
    if faq_html:
        faq_section = (
            f'<h2 style="font-family:var(--font-display);font-size:22px;font-weight:700;margin-bottom:1.25rem">{esc(L.get("fq","Frequently Asked Questions"))}</h2>'
            f'<div style="border:1px solid var(--border);border-radius:14px;overflow:hidden" itemscope itemtype="https://schema.org/FAQPage">'
            f'{faq_html}</div>'
        )

    return f'\n  <div style="margin-top:2.5rem">\n    {verdict_block}\n    {faq_section}\n  </div>'

# ── helpers ───────────────────────────────────────────────────────────────────
def esc(s):
    return _html.escape(str(s) if s is not None else '', quote=True)

def get_domain(url):
    return (url or '').replace('https://', '').replace('http://', '').split('/')[0]

def list_html(items, icon):
    if not items:
        return '<span style="color:var(--text3)">—</span>'
    return ''.join(
        f'<div style="display:flex;gap:6px;align-items:flex-start;font-size:13px;color:var(--text2);margin-bottom:6px">'
        f'<span>{icon}</span><span>{esc(p)}</span></div>'
        for p in items
    )

def badge_html(badge, lang):
    label = BADGE_LABELS.get(lang, BADGE_LABELS['en']).get(badge, badge or '')
    return f'<span class="badge badge-{esc(badge or "")}">{esc(label)}</span>'

def comparison_table_html(a, b, lang):
    """Render the entire comparison table — server-side."""
    L = LABELS.get(lang, LABELS['en'])
    dom_a = get_domain(a.get('url'))
    dom_b = get_domain(b.get('url'))

    visit_a = a.get('url') or '#'
    visit_b = b.get('url') or '#'
    base = '' if lang == 'en' else f'/{lang}'
    review_a = f'{base}/tools/{esc(a["slug"])}.html'
    review_b = f'{base}/tools/{esc(b["slug"])}.html'

    rows = [
        (L['ov'], esc(a.get('description') or '—'),       esc(b.get('description') or '—')),
        (L['pr'], badge_html(a.get('badge'), lang),       badge_html(b.get('badge'), lang)),
        (L['us'], esc(a.get('users') or '—'),             esc(b.get('users') or '—')),
        (L['ad'], list_html(a.get('pros'), '✅'),         list_html(b.get('pros'), '✅')),
        (L['ds'], list_html(a.get('cons'), '❌'),         list_html(b.get('cons'), '❌')),
        (L['wb'],
         f'<a href="{esc(visit_a)}" target="_blank" rel="noopener" style="color:var(--accent)">{esc(dom_a)}</a>' if dom_a else '—',
         f'<a href="{esc(visit_b)}" target="_blank" rel="noopener" style="color:var(--accent)">{esc(dom_b)}</a>' if dom_b else '—'),
        ('',
         f'<div style="display:flex;gap:8px;flex-wrap:wrap"><a class="tool-aff" href="{esc(visit_a)}" target="_blank" rel="noopener">{L["vt"]} →</a><a class="tool-review" href="{review_a}">{L["rv"]}</a></div>',
         f'<div style="display:flex;gap:8px;flex-wrap:wrap"><a class="tool-aff" href="{esc(visit_b)}" target="_blank" rel="noopener">{L["vt"]} →</a><a class="tool-review" href="{review_b}">{L["rv"]}</a></div>'),
    ]
    rows_html = '\n'.join(
        f'<tr><th>{th}</th><td class="hl">{va}</td><td class="hl">{vb}</td></tr>'
        for th, va, vb in rows
    )
    rating_row_html = (
        f'<tr><th>{L["rt"]}</th>'
        f'<td class="hl"><span data-rating-slot="{esc(a["slug"])}" style="color:var(--text3);font-size:13px">…</span></td>'
        f'<td class="hl"><span data-rating-slot="{esc(b["slug"])}" style="color:var(--text3);font-size:13px">…</span></td>'
        f'</tr>'
    )
    rows_html_with_rating = rows_html.replace(
        f'<tr><th>{L["wb"]}</th>',
        rating_row_html + f'<tr><th>{L["wb"]}</th>',
        1
    )

    return (
        f'<div class="compare-wrap fade-up"><table class="compare-table"><thead><tr><th></th>'
        f'<td><div class="tool-col-head">'
        f'<div class="tool-col-avatar" style="background:#7c6af722"><img src="https://www.google.com/s2/favicons?sz=64&amp;domain={esc(dom_a)}" width="30" height="30" style="border-radius:6px" alt="{esc(a.get("name",""))} logo"></div>'
        f'<div class="tool-col-name">{esc(a.get("name") or "")}</div>'
        f'<div class="tool-col-bestfor"><strong>{L["bf"]}:</strong> {esc(a.get("best_for") or "—")}</div>'
        f'</div></td>'
        f'<td><div class="tool-col-head">'
        f'<div class="tool-col-avatar" style="background:#7c6af722"><img src="https://www.google.com/s2/favicons?sz=64&amp;domain={esc(dom_b)}" width="30" height="30" style="border-radius:6px" alt="{esc(b.get("name",""))} logo"></div>'
        f'<div class="tool-col-name">{esc(b.get("name") or "")}</div>'
        f'<div class="tool-col-bestfor"><strong>{L["bf"]}:</strong> {esc(b.get("best_for") or "—")}</div>'
        f'</div></td></tr></thead><tbody>{rows_html_with_rating}</tbody></table></div>'
    )

# Verified starting price (USD/month) for paid tools without a price in `users`.
# Fill with real, checked prices only; unlisted paid tools omit offers rather
# than guess. Keep in sync with generate-lang-tool-pages.py / generate-pages.py.
PAID_PRICES = {
    # 'beautiful-ai': '12',
}

def _sw_app_schema(t):
    """SoftwareApplication node enriched with a verified offer + editorial review
    so it satisfies Google's Software App rich-result requirements."""
    node = {"@type": "SoftwareApplication", "name": t.get('name'), "url": t.get('url')}
    badge = t.get('badge')
    price = None
    if badge in ('free', 'freemium'):
        price = "0"
    elif badge == 'paid':
        m = re.search(r'\$([0-9]+(?:\.[0-9]{1,2})?)', t.get('users') or '')
        if m:
            price = m.group(1)
        elif t.get('slug') in PAID_PRICES:
            price = PAID_PRICES[t['slug']]
    if price is not None:
        node["offers"] = {"@type": "Offer", "price": price, "priceCurrency": "USD"}
    try:
        ed = float(t.get('rating')) if t.get('rating') not in (None, '') else 0.0
    except (TypeError, ValueError):
        ed = 0.0
    if ed > 0:
        node["review"] = {
            "@type": "Review",
            "author": {"@type": "Organization", "name": "AItoolFit"},
            "reviewRating": {"@type": "Rating", "ratingValue": str(ed), "bestRating": "5", "worstRating": "1"},
        }
    return node

def schema_org_jsonld(a, b, canonical_url, lang):
    M = META_TEMPLATES.get(lang, META_TEMPLATES['en'])
    schema = {
        "@context": "https://schema.org",
        "@type": "Article",
        "inLanguage": lang,
        "headline": M['headline'].format(a=a.get('name'), b=b.get('name')),
        "description": M['schema_desc'].format(a=a.get('name'), b=b.get('name')),
        "url": canonical_url,
        "datePublished": "2026-04-29",
        "author": {"@type": "Organization", "name": "AItoolFit"},
        "publisher": {"@type": "Organization", "name": "AItoolFit", "url": "https://aitoolfit.ai"},
        "about": [
            _sw_app_schema(a),
            _sw_app_schema(b),
        ],
    }
    return f'<script type="application/ld+json">{json.dumps(schema, ensure_ascii=False)}</script>'

# ── Category compare titles per language ──────────────────────────────────────
CAT_COMPARE_LABELS = {
    'en': 'Compare in this category',
    'ru': 'Сравнения в этой категории',
    'es': 'Comparar en esta categoría',
    'de': 'Vergleiche in dieser Kategorie',
    'ua': 'Порівняння в цій категорії',
    'he': 'השוואות בקטגוריה זו',
    'fr': 'Comparatifs dans cette catégorie',
    'pt': 'Comparações nesta categoria',
}

# ── footer (sourced from /<lang>/compare.html, QUICK COMPARE replaced by category links) ──
def load_footer(lang, current_slug=None, current_cat=None):
    src = os.path.join(ROOT, lang, 'compare.html') if lang != 'en' else os.path.join(ROOT, 'compare.html')
    if not os.path.exists(src):
        return ''
    txt = open(src, encoding='utf-8').read()
    m = re.search(r'<footer\s+class="site-footer"[^>]*>.*?</footer>', txt, re.DOTALL)
    footer = m.group(0) if m else ''

    # Replace QUICK COMPARE section with category-specific links
    if current_cat and current_slug:
        base = '' if lang == 'en' else f'/{lang}'
        siblings = [c for c in COMPARISONS if c.get('cat') == current_cat and c['slug'] != current_slug]
        if siblings:
            label = CAT_COMPARE_LABELS.get(lang, 'Compare in this category')
            links = '\n'.join(
                f'        <a href="{base}/compare/{c["slug"]}.html">'
                f'{esc_foot(c.get("label", c["slug"]))}</a>'
                for c in siblings[:7]
            )
            new_section = f'      <div class="footer-col-title">{label}</div>\n      <div class="footer-col-links">\n{links}\n      </div>'
            # Replace existing QUICK COMPARE block (any language variant)
            footer = re.sub(
                r'<div class="footer-col-title">(?:QUICK COMPARE|БЫСТРОЕ СРАВНЕНИЕ|SCHNELLVERGLEICH|'
                r'COMPARACIÓN RÁPIDA|COMPARAISON RAPIDE|ШВИДКЕ ПОРІВНЯННЯ|השוואה מהירה|COMPARAÇÃO RÁPIDA)'
                r'</div>\s*<div class="footer-col-links">.*?</div>',
                new_section, footer, flags=re.DOTALL
            )
    return footer

def esc_foot(s):
    return _html.escape(s, quote=True)

# ── full page ─────────────────────────────────────────────────────────────────
def build_page(cmp, lang, canonical_url, flag, label, rtl=False):
    a = fetch_tool(cmp['a'], lang)
    b = fetch_tool(cmp['b'], lang)
    if not a or not b:
        print(f'  ! missing tool data for {cmp["slug"]} / {lang}: a={bool(a)} b={bool(b)}')
        return None

    dir_attr    = ' dir="rtl"' if rtl else ''
    html_lang   = 'uk' if lang == 'ua' else lang
    base        = '' if lang == 'en' else f'/{lang}'
    L           = LABELS.get(lang, LABELS['en'])
    M           = META_TEMPLATES.get(lang, META_TEMPLATES['en'])
    title       = M['title'].format(a=a['name'], b=b['name'])
    description = pick_cat_desc(cmp['slug'], cmp.get('cat', ''), lang, a['name'], b['name'], a)

    hreflang_tags = '\n'.join(
        [f'<link rel="alternate" hreflang="x-default" href="{BASE_URL}/compare/{cmp["slug"]}.html">',
         f'<link rel="alternate" hreflang="en" href="{BASE_URL}/compare/{cmp["slug"]}.html">'] +
        [f'<link rel="alternate" hreflang="{"uk" if lc == "ua" else lc}" href="{BASE_URL}/{lc}/compare/{cmp["slug"]}.html">' for lc in LANGUAGES]
    )
    table_html     = comparison_table_html(a, b, lang)
    schema         = schema_org_jsonld(a, b, canonical_url, lang)
    footer_html    = load_footer(lang, cmp['slug'], cmp.get('cat'))
    lang_script    = '' if lang == 'en' else f'<script>localStorage.setItem("lang","{lang}");</script>\n'
    comp_row       = fetch_comparison(cmp['slug'], lang)
    verdict_faq    = build_verdict_faq_html(comp_row, a['name'], b['name'], lang, L)

    return f'''<!DOCTYPE html>
<html lang="{html_lang}"{dir_attr}>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{esc(title)}</title>
<meta name="description" content="{esc(description)}">
<link rel="canonical" href="{canonical_url}">
<link rel="icon" type="image/svg+xml" href="/favicon.svg">
<meta property="og:title" content="{esc(title)}">
<meta property="og:description" content="{esc(description)}">
<meta property="og:url" content="{canonical_url}">
<meta property="og:type" content="article">
<meta property="og:site_name" content="AItoolFit">
<meta property="og:image" content="https://aitoolfit.ai/og-image.png">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="{esc(title)}">
<meta name="twitter:description" content="{esc(description)}">
<meta name="twitter:image" content="https://aitoolfit.ai/og-image.png">
{schema}
<script async src="https://www.googletagmanager.com/gtag/js?id=G-WW59K11Y2Z"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){{dataLayer.push(arguments);}}gtag("js",new Date());gtag("config","G-WW59K11Y2Z");</script>
{lang_script}<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@300;400;500&family=Space+Grotesk:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">
{hreflang_tags}
<style>
.cmp-wrap{{max-width:900px;margin:0 auto;padding:2rem 1.5rem 4rem}}
.cmp-hero{{text-align:center;margin-bottom:2rem}}
.cmp-hero h1{{font-family:var(--font-display);font-size:clamp(24px,4vw,38px);font-weight:700;margin-bottom:.75rem}}
.cmp-hero p{{font-size:15px;color:var(--text2);line-height:1.75;max-width:640px;margin:0 auto}}
.compare-wrap{{background:var(--bg2);border:1px solid var(--border);border-radius:var(--radius);overflow:hidden}}
.compare-table{{width:100%;border-collapse:collapse}}
.compare-table th,.compare-table td{{padding:14px 16px;text-align:start;border-bottom:1px solid var(--border);font-size:14px;vertical-align:top}}
.compare-table th{{font-family:var(--font-display);font-size:13px;font-weight:500;color:var(--text3);width:28%}}
.compare-table td{{color:var(--text2)}}
.compare-table td.hl{{color:var(--text)}}
.tool-col-head{{display:flex;flex-direction:column;align-items:flex-start;gap:8px;padding:1.5rem 1rem;vertical-align:top}}
.tool-col-avatar{{width:52px;height:52px;border-radius:12px;display:flex;align-items:center;justify-content:center;font-family:var(--font-display);font-size:22px;font-weight:700}}
.tool-col-name{{font-family:var(--font-display);font-size:16px;font-weight:600}}
.tool-col-bestfor{{margin-top:6px;font-size:13px;color:var(--text);background:rgba(124,106,247,0.08);border-inline-start:3px solid var(--accent);padding:8px 12px;border-radius:6px;line-height:1.45;text-align:start;max-width:280px}}
.tool-col-bestfor strong{{color:var(--accent);font-weight:600;margin-inline-end:6px}}
@media(max-width:600px){{.compare-table th{{width:35%;font-size:12px}}.compare-table th,.compare-table td{{padding:10px;font-size:13px}}}}
</style>
</head>
<body>
<header class="site-header">
  <div class="header-inner">
    <a href="{base}/" class="logo"><svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26"><rect width="26" height="26" rx="7" fill="#7c6af7"/><text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text></svg>aitoolfit</a>
    <nav class="nav-links">
      <a href="{base}/"                class="nav-link" data-i18n="nav.home">Find AI</a>
      <a href="{base}/directory.html"  class="nav-link" data-i18n="nav.directory">Best AI Tools</a>
      <a href="{base}/compare.html"    class="nav-link active" data-i18n="nav.compare">Compare</a>
      <a href="{base}/news.html"       class="nav-link" data-i18n="nav.news">News</a>
    </nav>
    <div class="lang-picker">
      <button class="lang-btn" id="langBtn" onclick="toggleLangMenu()">{flag} {label} <span style="opacity:.5;font-size:10px" id="langArrow">▾</span></button>
      <div class="lang-menu" id="langMenu"></div>
    </div>
    <button class="btn-hamburger" onclick="toggleMenu()">&#9776;</button>
  </div>
  <nav class="mobile-menu" id="mobileMenu">
    <a href="{base}/"                class="nav-link" data-i18n="nav.home">Find AI</a>
    <a href="{base}/directory.html"  class="nav-link" data-i18n="nav.directory">Best AI Tools</a>
    <a href="{base}/compare.html"    class="nav-link active" data-i18n="nav.compare">Compare</a>
    <a href="{base}/news.html"       class="nav-link" data-i18n="nav.news">News</a>
  </nav>
</header>

<main class="cmp-wrap">
  <div class="cmp-hero">
    <h1>{esc(a["name"])} vs {esc(b["name"])}</h1>
    <p>{esc(description)}</p>
  </div>
  {table_html}
{verdict_faq}
</main>

{footer_html}

<script src="/js/i18n.js"></script>
<script src="/js/main.js"></script>
<script>
// Ratings only — load asynchronously, doesn't block static content
(function() {{
  var SB = '{SB_URL}', KEY = '{SB_ANON}', NR = '{L["nr"]}';
  function fetchRating(slug) {{
    return fetch(SB+'/rest/v1/comments?tool_slug=eq.'+slug+'&approved=eq.true&select=rating',
      {{headers:{{apikey:KEY,Authorization:'Bearer '+KEY}}}}).then(function(r){{return r.json();}});
  }}
  function starsHtml(avg, count) {{
    if (!count) return '<span style="color:var(--text3);font-size:13px">'+NR+'</span>';
    var full = Math.round(avg);
    return '<span style="color:#f59e0b;font-size:13px;letter-spacing:1px">' + '★'.repeat(full) + '</span>' +
           '<span style="color:#555;font-size:13px;letter-spacing:1px">'   + '★'.repeat(5-full) + '</span>' +
           '<span style="font-size:13px;font-weight:600;color:#f0f0f0;margin-left:4px">' + avg.toFixed(1) +
           '</span><span style="font-size:11px;color:var(--text3);margin-left:4px">('+count+')</span>';
  }}
  ['{cmp["a"]}', '{cmp["b"]}'].forEach(function(slug) {{
    fetchRating(slug).then(function(rows) {{
      var arr = Array.isArray(rows) ? rows : [];
      var avg = arr.length ? arr.reduce(function(s,c){{return s+(+c.rating||0);}},0)/arr.length : 0;
      var slot = document.querySelector('[data-rating-slot="'+slug+'"]');
      if (slot) slot.innerHTML = starsHtml(avg, arr.length);
    }}).catch(function() {{
      var slot = document.querySelector('[data-rating-slot="'+slug+'"]');
      if (slot) slot.innerHTML = '<span style="color:var(--text3);font-size:13px">'+NR+'</span>';
    }});
  }});
}})();
</script>
</body>
</html>'''

def main():
    compare_dir = os.path.join(ROOT, 'compare')
    os.makedirs(compare_dir, exist_ok=True)

    total = 0
    skipped = 0
    for cmp in COMPARISONS:
        # English
        html = build_page(cmp, 'en', f'{BASE_URL}/compare/{cmp["slug"]}.html', '🇬🇧', 'EN')
        if html:
            with open(os.path.join(compare_dir, f'{cmp["slug"]}.html'), 'w', encoding='utf-8') as f:
                f.write(html)
            total += 1
        else:
            skipped += 1

        # Language versions
        for lang in LANGUAGES:
            flag  = LANG_FLAGS.get(lang, '🌐')
            label = LANG_LABELS.get(lang, lang.upper())
            rtl   = lang in LANG_RTL
            lang_dir = os.path.join(ROOT, lang, 'compare')
            os.makedirs(lang_dir, exist_ok=True)
            html = build_page(cmp, lang, f'{BASE_URL}/{lang}/compare/{cmp["slug"]}.html', flag, label, rtl)
            if html:
                with open(os.path.join(lang_dir, f'{cmp["slug"]}.html'), 'w', encoding='utf-8') as f:
                    f.write(html)
                total += 1
            else:
                skipped += 1

    print(f'Generated {total} comparison pages ({len(COMPARISONS)} comparisons × {1+len(LANGUAGES)} languages){"" if not skipped else f" ({skipped} skipped)"}')

if __name__ == '__main__':
    main()
