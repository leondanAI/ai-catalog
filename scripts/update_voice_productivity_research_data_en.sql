-- Update EN content: voice, productivity, research, data categories
-- Run in Supabase SQL Editor
-- After running: python3 scripts/translate-tools.py ru es de ua he fr pt --slugs=elevenlabs,suno,notion-ai,perplexity,notebooklm,julius-ai

-- ============================================================
-- VOICE
-- ============================================================

UPDATE tools SET
  description = 'Best TTS with voice cloning in 32+ languages. Eleven Music, conversational AI agents, sound effects. $11B valuation. Free → Creator $22/mo → Pro $99/mo.',
  description_long = 'ElevenLabs is the leading AI voice platform, covering text-to-speech, voice cloning, dubbing, sound effects, music generation, and conversational AI agents — all under one unified credit system. Founded in 2022, it reached an $11 billion valuation by mid-2025 and is used by publishers, game studios, audiobook producers, and app developers worldwide.

The core TTS product supports 32+ languages with voice cloning accuracy that sets the industry benchmark. Instant Voice Cloning creates a clone from as little as one minute of audio; Professional Voice Cloning produces studio-grade clones from longer samples. The voice library includes 3,000+ pre-made voices across accents, ages, and styles.

Eleven Music, launched in late 2025, added AI music generation trained on licensed content — ElevenLabs secured partnerships with Merlin and Kobalt, meaning the music model is built on rights-cleared material. This distinguishes it from Suno and Udio, which face ongoing copyright litigation.

Conversational AI Agents allow developers to build real-time voice agents that listen, reason, and respond in under 500ms — suitable for customer support bots, voice assistants, and interactive applications.

Pricing: Free ($0 — 10,000 characters/month), Starter ($5/mo), Creator ($22/mo — 100,000 chars, commercial use), Pro ($99/mo — 500,000 chars, professional cloning), Scale ($330/mo). All paid tiers include commercial use rights.

Best for publishers, game developers, content creators, and developers building voice-driven applications who need high-quality, licensable voice AI.',
  pros = ARRAY[
    'Best TTS quality with voice cloning in 32+ languages — industry benchmark',
    'Eleven Music trained on licensed content (Merlin, Kobalt) — commercially safe unlike Suno/Udio',
    'Conversational AI Agents for real-time voice applications under 500ms latency',
    'All-in-one: TTS, cloning, dubbing, sound effects, music, agents under one credit system'
  ],
  cons = ARRAY[
    'Pro tier at $99/mo expensive for individual creators who only need occasional voice generation',
    'Music generation less mature than dedicated tools like Suno for creative music production'
  ]
WHERE slug = 'elevenlabs' AND lang = 'en';

UPDATE tools SET
  description = 'Suno v4.5 (2026): AI music in any genre with commercial rights. WMG partnership resolves copyright. Pro $10/mo, Premier $30/mo with Suno Studio DAW.',
  description_long = 'Suno is the most popular AI music generator for consumer creators, producing complete songs — vocals, instruments, lyrics — from a text prompt in any genre. It is used by over 10 million people globally for creative music production, content creation, and entertainment.

Suno v4.5, released in early 2026, is the current model and leads on output quality across most genre categories — pop, rock, electronic, ambient, and orchestral. Songs generated sound production-ready with full arrangement, mixing, and vocal performance.

A major development in November 2025: Warner Music Group and Suno announced a partnership settling their copyright litigation. Suno is building new AI models trained exclusively on licensed music from rights holders, to launch in 2026. This resolves the biggest legal overhang on the platform and positions Suno for broader commercial deployment.

Pricing: Free (50 credits/day, non-commercial only), Pro ($10/month — 2,500 monthly credits, commercial rights), Premier ($30/month — 10,000 monthly credits, commercial rights, Suno Studio DAW for post-production). Commercial rights persist for songs created while subscribed, even after cancellation.

Udio is a close competitor at similar pricing, with a different aesthetic — generally considered stronger on jazz, classical, and genre-blending tracks, while Suno leads on pop and mainstream genres.

Best for content creators, social media producers, filmmakers, and musicians who want commercially usable AI-generated music quickly.',
  pros = ARRAY[
    'v4.5 leads on quality across pop, rock, electronic and ambient genres',
    'WMG partnership resolves copyright litigation — licensed model in development for 2026',
    'Commercial rights included on Pro ($10/mo) — songs stay licensable after cancellation',
    'Suno Studio DAW on Premier plan for post-production and arrangement editing'
  ],
  cons = ARRAY[
    'Current v4.5 models trained on uncleared data — lawsuits still pending until licensed models launch',
    'Less control over arrangement and structure vs dedicated DAW or human composition'
  ]
WHERE slug = 'suno' AND lang = 'en';

-- ============================================================
-- PRODUCTIVITY
-- ============================================================

UPDATE tools SET
  description = 'Notion 3.0 with AI Agents, Workers for Agents (April 2026), and access to GPT-5.4, Claude Opus and Gemini 3. AI assistant, meeting transcription, image gen built in.',
  description_long = 'Notion is an all-in-one workspace combining notes, wikis, databases, project management, and now AI agents. With 100 million users, it is one of the most widely used productivity platforms globally.

Notion 3.0 through 3.4 (2026) represents a fundamental shift from a document tool to an AI-powered work operating system. Key additions: autonomous AI Agents that perform multi-step tasks across your workspace, Custom Agents that run across Slack and email (not just inside Notion), built-in meeting transcription, AI image generation, dashboard views, and a presentation mode. Workers for Agents, launched April 2026, allows teams to deploy persistent background agents that monitor projects, update databases, and surface insights automatically.

The AI layer inside Notion supports multiple frontier models: GPT-5.4, Claude Opus, and Gemini 3 can be selected per workspace or per task. This multi-model approach lets power users choose the best model for different job types without leaving the platform.

Notion AI is available as an add-on ($10/user/month) on top of base Notion plans, or included in the AI-bundled Plus plan. Free and Plus plans are capped at 20 AI responses per day — heavy AI users should budget for the full Notion AI add-on.

Best for teams who want to consolidate docs, wikis, project tracking, and AI workflows into a single platform — particularly knowledge-worker teams and startups.',
  pros = ARRAY[
    'AI Agents and Workers for Agents handle multi-step tasks across Notion, Slack and email',
    'Multi-model: choose GPT-5.4, Claude Opus or Gemini 3 per task inside one workspace',
    'Built-in meeting transcription, AI image generation and presentation mode',
    '100M+ users — largest ecosystem of Notion templates, integrations and community resources'
  ],
  cons = ARRAY[
    'AI capped at 20 responses/day on Free and Plus — add-on at $10/user/mo needed for heavy use',
    'Can feel overwhelming — too many features for users who need a simple note-taking tool'
  ]
WHERE slug = 'notion-ai' AND lang = 'en';

-- ============================================================
-- RESEARCH
-- ============================================================

UPDATE tools SET
  users = '45M+',
  description = 'AI search engine with cited sources. 45M+ monthly users, $20B valuation. Deep Research for multi-page analysis. Pro $20/mo.',
  description_long = 'Perplexity is an AI-powered search engine that answers questions with real-time web sources and citations — combining search, synthesis, and answer generation in a single interface. It has become the leading alternative to traditional search for knowledge workers, researchers, and professionals.

As of early 2026, Perplexity has 45 million monthly active users, up from 22 million at the start of 2025 — more than doubling in one year. The platform processes approximately 780 million search queries per month. Perplexity is valued at $20 billion following a $200 million funding round in September 2025, with annual recurring revenue projected to reach $656 million in 2026.

The free tier provides unlimited basic searches with citations. Perplexity Pro ($20/month) adds Deep Research mode — which executes multi-step research plans, reads dozens of sources, and produces detailed analytical reports similar to a research assistant. Pro also includes file uploads, image generation, and Academic Focus mode for peer-reviewed sources only.

Every answer includes clickable source citations, making it easy to verify claims or dive deeper. This transparency distinguishes Perplexity from AI chatbots that generate answers without source attribution.

Perplexity has expanded into Perplexity Pages (shareable research documents), internal search for enterprise, and an API for developers building search-augmented applications.

Best for knowledge workers, researchers, students, and professionals who want fast, cited answers — not a blank page AI that might hallucinate.',
  pros = ARRAY[
    '45M+ monthly users — fastest-growing AI search engine, $20B valuation',
    'Every answer includes clickable citations — verifiable and transparent by design',
    'Deep Research mode produces multi-page analytical reports from dozens of sources',
    'Academic Focus mode filters to peer-reviewed papers only — ideal for research tasks'
  ],
  cons = ARRAY[
    'Deep Research and file uploads require Pro at $20/month',
    'Less suitable for creative tasks or long-form generation — purpose-built for search and research'
  ]
WHERE slug = 'perplexity' AND lang = 'en';

UPDATE tools SET
  description = 'Google''s AI notebook. Cinematic Video Overviews (March 2026), slide editing, EPUB support. Free; Plus via Google AI Pro $19.99/mo.',
  description_long = 'NotebookLM is Google''s AI research and synthesis tool, designed for analyzing your own documents rather than searching the web. You upload sources — PDFs, Google Docs, YouTube links, audio files, EPUB books — and NotebookLM becomes an expert on that material, answering questions, generating summaries, and creating study aids grounded entirely in your uploaded content.

The Audio Overview feature generates a realistic two-host podcast discussion of your sources — one of the most distinctive AI output formats available. It was one of the first features to go viral and remains a core differentiator.

2026 updates are substantial. Cinematic Video Overviews, launched March 2026, generate fluid animated narrative videos from your sources — a significant upgrade over static slides with voiceover (currently available on Google AI Ultra plan). Slide editing now allows targeting individual slides with prompt-based instructions rather than regenerating the entire deck. EPUB file support added. NotebookLM integrated into Google Classroom for educators in higher education.

NotebookLM is free with standard limits. NotebookLM Plus, available through Google AI Pro at $19.99/month, unlocks higher usage thresholds, more sources per notebook, additional chat queries, expanded study tools, and Cinematic Video Overviews.

Best for students, researchers, lawyers, and analysts who need to synthesize and interrogate large bodies of their own documents rather than search the open web.',
  pros = ARRAY[
    'Grounds all answers in your uploaded sources — no hallucinations from outside the material',
    'Audio Overview generates a realistic podcast discussion of your documents automatically',
    'Cinematic Video Overviews (March 2026) create animated narrative videos from your notes',
    'Free tier genuinely capable — Plus ($19.99/mo via Google AI Pro) for higher limits'
  ],
  cons = ARRAY[
    'Cinematic Video Overviews require Google AI Ultra plan — not available on standard Plus',
    'Not designed for open-web research — use Perplexity if you need live source discovery'
  ]
WHERE slug = 'notebooklm' AND lang = 'en';

-- ============================================================
-- DATA
-- ============================================================

UPDATE tools SET
  description = 'AI data analyst — upload CSV, connect database, get charts and insights. Learning Sub Agent adapts to your data structure. Pro from $20/mo.',
  pros = ARRAY[
    'Upload CSV or connect database — get charts, forecasts and insights with no code',
    'Learning Sub Agent adapts to your database schema over time for better accuracy',
    'Explains every insight in plain language alongside the visualization',
    'Free basic plan available — Pro from $20/mo for higher limits'
  ],
  cons = ARRAY[
    'Less powerful than Hex or Python notebooks for complex multi-step data engineering',
    'Best suited for business analysts — data scientists may find it too constrained'
  ]
WHERE slug = 'julius-ai' AND lang = 'en';
