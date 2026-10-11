-- Дата проверки фактов (last_updated) для карточек, переписанных по аудиту.
--
-- apply_card_audit.py меняет текст карточки, но поле last_updated не трогал,
-- и на страницах осталась старая дата или никакой. Ставим день, когда аудит
-- сверял карточку с сайтом вендора. Идемпотентно.

-- аудит 2026-10-06: 84 карточек
UPDATE tools SET last_updated = '2026-10-06'
 WHERE slug IN ('adobe-firefly', 'adobe-podcast', 'aider', 'akkio', 'autogpt', 'beautiful-ai', 'bolt-new', 'bubble', 'canva-ai', 'capcut', 'character-ai', 'chatgpt', 'claude', 'claude-code', 'claude-design', 'clearscope', 'comfyui', 'consensus', 'copy-ai', 'coursera-coach', 'cursor', 'deepl', 'deepseek', 'descript', 'devin', 'duolingo-max', 'elicit', 'figma-ai', 'fireflies-ai', 'flux', 'frase', 'gamma', 'github-copilot', 'glide', 'google-veo-3', 'grammarly', 'grok', 'hemingway-editor', 'heygen', 'ideogram', 'jasper', 'julius-ai', 'krea-ai', 'lindy', 'looka', 'looker-studio', 'lovable', 'make', 'meta-ai', 'microsoft-copilot', 'microsoft-copilot-studio', 'midjourney', 'mistral-le-chat', 'motion', 'n8n', 'nano-banana', 'notebooklm', 'notion-ai', 'otter-ai', 'perplexity', 'photomath', 'pika', 'pitch', 'prezi', 'quillbot', 'reclaim-ai', 'remove-bg', 'runway', 'scite', 'semrush', 'softr', 'speechify', 'stable-diffusion', 'suno', 'surferseo', 'synthesia', 'tableau-ai', 'uxpilot', 'v0-by-vercel', 'webflow', 'whisper', 'windsurf', 'writesonic', 'zapier-ai');

-- аудит 2026-09-29: 27 карточек
UPDATE tools SET last_updated = '2026-09-29'
 WHERE slug IN ('adcreative-ai', 'cline', 'fiscal-ai', 'flutterflow', 'hex', 'humata', 'khanmigo', 'kiro', 'koyfin', 'leonardo-ai', 'manus', 'murf-ai', 'opencode', 'relevance-ai', 'relume', 'replit', 'retool-ai', 'semantic-scholar', 'slidesgo', 'synthesis', 'tickeron', 'tradingview', 'udio', 'uizard', 'whimsical-ai', 'youlearn', 'zed');
