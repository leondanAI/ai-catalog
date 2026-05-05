-- Update EN content for chat category tools
-- Run in Supabase SQL Editor
-- After running: python3 scripts/translate-tools.py ru es de ua he fr pt --slugs=meta-ai,microsoft-copilot,gemini,deepseek,claude,character-ai,mistral-le-chat

-- ============================================================
-- META AI
-- ============================================================
UPDATE tools SET
  users = '1B+',
  description = 'Free AI assistant by Meta built into WhatsApp, Instagram and Messenger. Powered by Llama 4 Scout and Maverick. Over 1 billion monthly active users.',
  description_long = 'Meta AI is the AI assistant built directly into Meta''s family of apps — WhatsApp, Instagram, Facebook, and Messenger — giving it the largest distribution of any AI assistant in the world. Unlike standalone AI products, Meta AI requires no extra signup or download if you already use Meta platforms.

The underlying models are Llama 4 Scout and Llama 4 Maverick, released in April 2025. Maverick is a 400B parameter mixture-of-experts model that matches or exceeds GPT-4o and Gemini 1.5 Pro on most benchmarks, including multilingual tasks. Scout is a faster, more lightweight variant. Both are natively multimodal, handling text and images. The full Llama 4 Behemoth model remains in training.

Meta AI is completely free with no usage limits, no subscription tiers, and no rate throttling on the consumer interface. It can answer questions, help with writing, analyze images, and generate images via the Imagine feature. Real-time web search is built in across all platforms.

As of early 2026, Meta AI has surpassed 1 billion monthly active users — more than any other AI assistant. Weekly active users stand at 185 million who interact with it intentionally as an AI tool rather than passively through platform features.

Key limitation: Meta uses conversation data to improve its models and inform advertising, which is a significant privacy tradeoff for users who share sensitive information. The model is less capable than Claude or GPT-5.5 on complex multi-step reasoning and professional tasks.

Best for everyday users already on Meta platforms who want a free, capable AI without switching apps or paying for a subscription.',
  pros = ARRAY[
    'Completely free with no usage limits or subscriptions',
    'Built into WhatsApp, Instagram, Messenger and Facebook — no extra app needed',
    'Llama 4 Maverick is competitive with frontier models at zero cost',
    'Real-time web search and image generation included for free'
  ],
  cons = ARRAY[
    'Meta uses conversations to improve ad targeting — significant privacy concern',
    'Less capable than Claude or GPT-5.5 on complex multi-step reasoning tasks'
  ]
WHERE slug = 'meta-ai' AND lang = 'en';

-- ============================================================
-- MICROSOFT COPILOT
-- ============================================================
UPDATE tools SET
  description = 'AI assistant built into Windows 11, Edge and Microsoft 365. GPT-5.2 powered with Bing search. Free for all Windows users.',
  description_long = 'Microsoft Copilot is Microsoft''s consumer AI assistant, available for free in Windows 11, Edge browser, and at copilot.microsoft.com. It is distinct from Microsoft 365 Copilot, which is the enterprise product integrated into Word, Excel, Outlook, and Teams.

The consumer version runs on OpenAI''s GPT-5.2 (as of April 2026), with Bing search integrated for real-time web access. Copilot Chat also offers GPT-5.5 as an option for deeper reasoning. In March 2026, Microsoft added a Claude model option inside Copilot in Word, giving users a choice between OpenAI and Anthropic models for drafting and editing tasks.

The free tier is broad: Bing-powered search, image generation via Designer (formerly DALL·E), document analysis, and voice interaction in Edge. Windows 11 users get access through the dedicated Copilot key on newer keyboards or the taskbar button.

The enterprise Microsoft 365 Copilot adds deeply integrated AI inside Word, Excel, Outlook, PowerPoint, and Teams at an additional $30 per user per month on top of an existing Microsoft 365 subscription. This is the version that drives business adoption.

Limitations: the consumer product quality is inconsistent compared to using ChatGPT or Claude directly. The underlying models are often newer OpenAI releases with additional Microsoft fine-tuning, which sometimes changes behavior unexpectedly.

Best for Windows and Microsoft 365 users who want AI without a separate subscription, or organizations already paying for Microsoft 365.',
  pros = ARRAY[
    'Free for all Windows 11 users — no signup or extra subscription required',
    'Deep Office 365 integration: Word, Excel, Outlook, Teams, PowerPoint',
    'Bing search built-in for real-time, up-to-date answers',
    'GPT-5.2 and Claude model option for drafting in Microsoft 365 apps'
  ],
  cons = ARRAY[
    'Quality inconsistent compared to using ChatGPT or Claude directly',
    'Full Microsoft 365 Copilot costs an extra $30/user/month on top of M365 subscription'
  ]
WHERE slug = 'microsoft-copilot' AND lang = 'en';

-- ============================================================
-- GEMINI
-- ============================================================
UPDATE tools SET
  description = 'Google''s flagship AI with deepest Google Workspace integration. Gemini 2.5 Pro and Gemini 3 for subscribers. Most generous free tier in 2026.',
  description_long = 'Google Gemini is the AI assistant and model family from Google DeepMind. It is the primary AI layer across Google''s consumer and enterprise products — Gmail, Docs, Sheets, Drive, YouTube, and Search.

The free plan includes Gemini 2.5 Flash and limited Gemini 2.5 Pro access, plus Deep Research, Gemini Live (real-time voice conversations), Canvas, and Gems (custom AI personas). Free users also get 100 monthly AI credits for video generation via Flow and Whisk. This makes it the most generous free tier of any AI assistant in 2026.

Paid tiers: AI Pro at $19.99/month adds full Gemini 2.5 Pro, unlimited Deep Research, Veo 3.1 video generation, and access to the Gemini 3 model for US subscribers. AI Ultra at $124.99 per quarter ($41.67/month effective) unlocks Gemini 3.1 Pro, Gemini 2.5 Deep Think, and 25,000 monthly AI credits — a premium tier priced for power users.

Gemini 3 is Google''s most advanced model, leading on video and audio understanding benchmarks, and available for Pro and Ultra subscribers. The free Gemini Live feature for real-time voice conversations is unique among free-tier AI products.

Limitations: Gemini is less precise than Claude on complex multi-step instruction following. The model lineup (Flash, Pro, 3, 3.1) can be confusing, and the best capabilities require a paid tier.

Best for users embedded in the Google ecosystem who want AI that works natively inside Gmail, Docs, and Drive.',
  pros = ARRAY[
    'Best Google Workspace integration — Gmail, Docs, Sheets, Drive native',
    'Leading video and audio analysis with Veo 3.1 and Gemini 3',
    'Most generous free tier: Deep Research + Gemini Live + 100 video credits/month',
    'Gemini 3.1 Pro available on Ultra plan for power users'
  ],
  cons = ARRAY[
    'Less precise than Claude on complex instruction-following tasks',
    'AI Ultra requires quarterly billing ($124.99 per quarter, ~$42/mo) — no flexible monthly option at top tier'
  ]
WHERE slug = 'gemini' AND lang = 'en';

-- ============================================================
-- DEEPSEEK
-- ============================================================
UPDATE tools SET
  users = '96M+',
  description = 'Frontier-class Chinese AI completely free to use. DeepSeek V4 (April 2026): 1.6 trillion parameters, 1M context. Open-source weights available.',
  description_long = 'DeepSeek is an AI lab based in Hangzhou, China, that has consistently released open-weight models rivaling or exceeding the performance of leading closed models — at a fraction of the cost to train and run.

DeepSeek V4, released on April 24, 2026, is the current flagship. It comes in two variants: V4-Pro with 1.6 trillion parameters (49B activated via mixture-of-experts architecture) and V4-Flash with 284B parameters (13B activated). Both support a 1 million token context window. V4-Pro benchmarks place it alongside GPT-5.5 and Claude on most reasoning, coding, and math tasks.

The web interface at chat.deepseek.com remains completely free with no rate limits in standard mode. Open-source weights are available for local and commercial deployment. API pricing is extremely competitive: V4-Flash is among the cheapest frontier-quality APIs available.

As of April 2025, DeepSeek had 96.88 million monthly active users worldwide — a figure that has continued to grow with V4''s release. It ranks as the #1 most downloaded app in the App Store in over 156 countries.

Key limitation: DeepSeek is a Chinese company, and its servers are operated in China. This creates data privacy concerns for users handling sensitive business, legal, or government information. The Chinese government has broad data access rights. Server availability can also be slow during peak hours.

Best for developers, researchers, and cost-conscious users who want frontier-quality AI for free, and are comfortable with the data privacy tradeoffs of a Chinese-hosted service.',
  pros = ARRAY[
    'DeepSeek V4 matches GPT-5.5-class quality — completely free on web interface',
    'Fully open-source weights available for local and commercial deployment',
    'Exceptional math, coding and reasoning benchmarks at near-zero API cost',
    '1M token context window on V4, same as leading paid models'
  ],
  cons = ARRAY[
    'Chinese company — significant data privacy concerns for sensitive or confidential content',
    'Servers can be slow or temporarily unavailable during peak global usage hours'
  ]
WHERE slug = 'deepseek' AND lang = 'en';

-- ============================================================
-- CLAUDE
-- ============================================================
UPDATE tools SET
  description = 'AI assistant by Anthropic. Best for long documents, analysis and code. 1M token context window with Claude 4.',
  description_long = 'Claude is the AI assistant from Anthropic, a safety-focused AI lab founded by former OpenAI researchers. It is consistently rated as one of the best models for instruction following, long-context analysis, and code generation.

Claude 4 is the current model family (2026), with Sonnet 4.6 and Opus 4.7 as the flagship models. All Claude 4.x models support a 1 million token context window — enough to analyze entire codebases, research databases, or multi-volume documents in a single conversation. The Sonnet 4.6 model balances speed and intelligence; Opus 4.7 is the most capable option available on Max and API tiers.

Pricing: Free tier includes Projects, Artifacts, web search, and file uploads (up to 20 files per chat). Claude Pro at $20/month provides 5x more usage and access to all models. Max at $100/month or $200/month offers up to 20x usage for heavy users.

Claude does not generate images natively — this is a genuine gap compared to ChatGPT and Gemini. Web search is available on the free tier. Claude is especially strong at following nuanced multi-step instructions, editing long documents, and writing accurate code with minimal hallucinations.

API access via Anthropic''s platform offers Sonnet 4.6 at standard per-token pricing with prompt caching to reduce costs on repeated system prompts.

Best for professionals and developers who need reliable instruction following, long-context analysis, and high-accuracy code generation — and who don''t need image generation.',
  pros = ARRAY[
    'Best at following complex multi-step instructions without losing context',
    '1M token context — analyze entire codebases, PDFs or book-length documents in one go',
    'Fewest hallucinations of any frontier model — most accurate and careful',
    'Web search and file uploads included on the free tier'
  ],
  cons = ARRAY[
    'No image generation — Claude cannot render images, unlike ChatGPT or Gemini',
    'Free tier limited to ~15–40 messages per 5-hour window on Sonnet 4.6'
  ]
WHERE slug = 'claude' AND lang = 'en';

-- ============================================================
-- CHARACTER.AI
-- ============================================================
UPDATE tools SET
  users = '20M+',
  description = 'Platform for creating and chatting with AI characters. 20M+ monthly active users for roleplay, storytelling and entertainment.',
  description_long = 'Character.AI is a platform built specifically for conversational roleplay with AI-powered personas. Users can chat with millions of community-created characters — fictional, historical, celebrity-inspired, or entirely original — or create their own. It is the largest AI character platform in existence.

The platform has 20 million monthly active users spending an average of 75 minutes per day on the app — one of the highest engagement figures in consumer AI. Over 10 million characters have been created by the community. In February 2026, c.ai Labs launched as an experimental feature space for new AI entertainment formats before wider release.

The free tier offers unlimited character chats with no message limits. The paid c.ai+ plan at $9.99/month (or $120/year) adds faster response speeds, priority access during peak hours, voice call features, and the Imagine Gallery AI image generator for use within conversations.

Character.AI is designed purely for entertainment and creative use — it maintains character personas consistently across long conversations without breaking immersion. It is not suitable for factual research, professional tasks, or anything requiring accurate information.

Content moderation is inconsistent. Some inappropriate characters reach the public library before being removed. This is an ongoing challenge given the volume of community-created content.

Best for creative writers, roleplay enthusiasts, and users who want interactive storytelling or entertainment — not for professional or research use cases.',
  pros = ARRAY[
    '20M+ monthly active users with the largest library of AI characters available',
    'Characters maintain persona and memory across long conversations without breaking character',
    'Completely free with unlimited chat — no message limits on standard tier',
    'c.ai Labs offers experimental interactive entertainment formats'
  ],
  cons = ARRAY[
    'Not suitable for factual research or professional tasks — optimised for entertainment only',
    'Content moderation inconsistent — some inappropriate characters reach the public library'
  ]
WHERE slug = 'character-ai' AND lang = 'en';

-- ============================================================
-- MISTRAL LE CHAT
-- ============================================================
UPDATE tools SET
  description = 'AI assistant by Mistral AI — Europe''s leading AI lab. Powered by Mistral Large 3. Multilingual, with web search, canvas, and image generation. Pro at $14.99/mo.',
  description_long = 'Mistral Le Chat is the consumer AI assistant from Mistral AI, the leading European AI lab based in Paris. It is built on Mistral''s own open-weight models and is positioned as the European alternative to ChatGPT and Gemini, with a strong emphasis on privacy, GDPR compliance, and multilingual capability.

The current model stack (as of late 2025 – 2026) includes Mistral Large 3 for advanced reasoning, Ministral 3 for fast responses, Devstral 2 for coding, and Devstral Small 2 for lightweight tasks. Le Chat selects the appropriate model based on context. Mistral models are especially strong in European languages — French, German, Spanish, Italian, and Portuguese — due to European training data emphasis.

The free tier includes access to the latest models, web search, image generation, document uploads, and canvas (an artifact-style editor). Free usage is limited to approximately 25 messages per day on mid-tier models. The Pro tier at $14.99/month provides roughly 6x the daily message limit (~150/day), priority access, and API discounts. A Student plan is available at $7.04/month.

Enterprise plans (Team/Enterprise) are available for businesses requiring data residency in Europe, on-premises deployment, or strict GDPR compliance — making Mistral a serious option for European companies with regulatory requirements.

Limitations: Mistral has a smaller plugin and integration ecosystem compared to ChatGPT or Gemini. Brand recognition is low outside Europe, and the third-party tooling ecosystem is still developing.

Best for European users, multilingual use cases, and organizations requiring EU data residency or GDPR-compliant AI.',
  pros = ARRAY[
    'Best-in-class multilingual support — particularly strong in European languages',
    'Built on open-weight models (Mistral Large 3) — transparency and reproducibility',
    'Free tier includes web search, image generation, and canvas with no signup friction',
    'GDPR-compliant with EU data residency options for enterprise users'
  ],
  cons = ARRAY[
    'Smaller plugin and integration ecosystem compared to ChatGPT or Gemini',
    'Brand recognition lower outside Europe — community and third-party tooling still developing'
  ]
WHERE slug = 'mistral-le-chat' AND lang = 'en';
