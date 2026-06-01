-- Tool updates: Claude Opus 4.8, Claude Code Dynamic Workflows, Gemini 3.5 Flash, Devin FAQ
-- EN only — paste in Supabase SQL Editor → Run
-- After: python3 scripts/generate-pages.py && python3 scripts/generate-compare-pages.py

-- ─────────────────────────────────────────────────────────────
-- 1. CLAUDE — description, description_long, pros, cons
-- ─────────────────────────────────────────────────────────────

UPDATE tools SET
  description = $d$Claude by Anthropic. Opus 4.8 (May 2026): 96.7% on USAMO math — the highest reasoning benchmark ever recorded by a public AI. 1M token context. Free tier on Sonnet 4.6.$d$,
  description_long = $dl$Claude is Anthropic's AI assistant, recognized in 2026 for the strongest instruction-following and reasoning quality among major AI assistants. Claude Opus 4.8, released May 28, 2026, marks a generational leap: it achieves 96.7% on USAMO 2026 math, up from 69.3% on the previous Opus 4.7 — the highest score ever recorded by a public AI model on an elite math competition. API pricing is unchanged at $5/$25 per million input/output tokens.

Alongside the Opus 4.8 release, Claude Code gained Dynamic Workflows: a lead agent can now fan out up to 1,000 parallel Claude Code subagents simultaneously for repository-scale autonomous tasks. Fast mode API pricing was cut from $30/$150 to $10/$50 per million tokens — a 3x cost reduction for high-throughput workflows.

Rate limits across all paid tiers were doubled in 2026: Pro, Max, Team, and Enterprise users can now send twice as many messages per hour, and peak-hour rate reductions have been removed. This makes Claude dramatically more usable for professional workflows that previously hit frustrating pauses.

Claude Design, a product from Anthropic Labs, extends Claude's capabilities into visual outputs — users can generate presentation slides, design mockups, and interactive prototypes directly through conversation. Available to Pro plan subscribers and above at no extra cost.

Pricing: Free (Sonnet 4.6, limited daily messages), Pro $20/month, Max $100/month, Max $200/month. The Max tiers offer substantially higher throughput for power users and development teams.

Claude is the best choice for users who need precise, reliable responses to complex instructions — especially mathematical reasoning, document analysis, code review, and long-context tasks.$dl$,
  pros = ARRAY[
    'Claude Opus 4.8 achieves 96.7% on USAMO 2026 — best math/reasoning score of any public model',
    'Best at following complex multi-step instructions without losing context',
    '1M token context — analyze entire codebases, PDFs or book-length documents in one go',
    'Web search and file uploads included on the free tier'
  ],
  cons = ARRAY[
    'No image generation — Claude cannot render images, unlike ChatGPT or Gemini',
    'Free tier uses Sonnet 4.6 (~15–40 messages per 5h window); Opus 4.8 requires Pro $20/mo'
  ]
WHERE slug = 'claude' AND lang = 'en';

-- ─────────────────────────────────────────────────────────────
-- 2. CLAUDE CODE — description, description_long, pros
-- ─────────────────────────────────────────────────────────────

UPDATE tools SET
  description = $d$Anthropic's CLI agent for autonomous coding. Dynamic Workflows (May 2026): fan out up to 1,000 parallel subagents for repo-scale tasks.$d$,
  description_long = $dl$Claude Code is Anthropic's agentic coding tool available as a CLI, desktop app, and VS Code/JetBrains extension. It operates directly in your local development environment — reading the full codebase, planning multi-file changes, writing and editing code, running tests, and committing to git — all from natural language instructions. Unlike sandbox-based tools, Claude Code runs in your actual filesystem with no artificial limitations.

Dynamic Workflows, launched May 28, 2026, dramatically expand multi-agent orchestration: a lead agent can now fan out up to 1,000 parallel Claude Code subagents simultaneously. Each subagent receives the full codebase context and operates independently, enabling massive parallelism for repository-scale tasks — running entire test suites, refactoring multiple modules, and updating documentation all at once.

Key capabilities include cross-repository awareness, autonomous git operations (commit, branch, PR creation), bash command execution, and iterative debugging. The desktop app adds a split-pane interface with a plan sidebar for tracking long-running agentic tasks. The Model Context Protocol (MCP) enables integration with external tools and custom data sources.

Pricing: Claude Code is included with Claude Pro at $20 per month. Claude Max plans at $100 and $200 per month provide significantly higher usage limits for heavy users. Fast mode pricing for API usage dropped from $30/$150 to $10/$50 per million tokens with the Opus 4.8 launch.

Limitations: Claude Code requires terminal familiarity and has a steeper learning curve than GUI-based tools. Heavy usage exceeds Pro plan limits quickly, and the Max plans are expensive. It has no built-in UI preview or design-to-code features.

Best for developers and teams who want an autonomous AI engineer that can execute entire feature cycles — from understanding requirements to writing code, running tests, and committing — without constant hand-holding.$dl$,
  pros = ARRAY[
    'Dynamic Workflows: fan out 1,000 parallel subagents for repo-scale tasks — launched May 2026',
    'Best at complex, long-context development tasks — entire repo in context',
    'Terminal-native — works in any environment without IDE plugin',
    'Handles complete feature cycles: design, code, tests, refactor autonomously'
  ]
WHERE slug = 'claude-code' AND lang = 'en';

-- ─────────────────────────────────────────────────────────────
-- 3. GEMINI — description, description_long, pros, faq
-- ─────────────────────────────────────────────────────────────

UPDATE tools SET
  description = $d$Google's flagship AI with deepest Google Workspace integration. Gemini 3.5 Flash (Google I/O 2026): flagship-class intelligence at Flash pricing. Most generous free tier in 2026.$d$,
  description_long = $dl$Google Gemini is the AI assistant and model family from Google DeepMind. It is the primary AI layer across Google's consumer and enterprise products — Gmail, Docs, Sheets, Drive, YouTube, and Search.

Gemini 3.5 Flash, announced at Google I/O 2026, delivers flagship-class reasoning at fast-model speed and cost — the best price-to-intelligence ratio in Google's lineup. The free plan now includes Gemini 3.5 Flash access, along with Deep Research, Gemini Live (real-time voice conversations), Canvas, and Gems (custom AI personas). Free users also get 100 monthly AI credits for video generation. This makes it the most generous free tier of any AI assistant in 2026.

Paid tiers: AI Pro at $19.99/month adds full Gemini 3.5 Flash and Pro access, unlimited Deep Research, Veo 3 video generation, and native audio generation. AI Ultra at $124.99 per quarter (~$41.67/month) unlocks the highest-tier Gemini models and 25,000 monthly AI credits for power users.

Google I/O 2026 also introduced Veo 3 video generation with native audio — AI-generated video with synchronized sound — along with major upgrades to Search AI, Workspace AI agents, and Project Astra for real-world visual AI.

Limitations: Gemini is less precise than Claude on complex multi-step instruction following. The model lineup can be confusing, and the best capabilities require a paid tier.

Best for users embedded in the Google ecosystem who want AI that works natively inside Gmail, Docs, and Drive.$dl$,
  pros = ARRAY[
    'Best Google Workspace integration — Gmail, Docs, Sheets, Drive native',
    'Gemini 3.5 Flash brings flagship intelligence at fast-model speed and cost',
    'Leading video and audio generation with Veo 3 including native audio',
    'Most generous free tier: Deep Research + Gemini Live + 100 video credits/month'
  ],
  faq = $faq$[
    {"q": "Is Gemini better than ChatGPT in 2026?", "a": "On Google Workspace tasks and multimodal work (video, audio, images), Gemini is the stronger choice. On general reasoning and instruction-following, Claude Opus 4.8 leads, while ChatGPT remains the most feature-rich (image generation, voice, code interpreter). Gemini 3.5 Flash is now highly competitive on speed and cost. Gemini wins for Google users; ChatGPT wins for breadth of features."},
    {"q": "Is Gemini free?", "a": "Yes. Gemini is free with access to Gemini 3.5 Flash, Deep Research, Gemini Live, and 100 monthly video credits. Google AI Pro ($19.99/month) unlocks higher usage limits and Veo 3 video generation. AI Ultra ($124.99/quarter) adds the highest-tier models and 25,000 monthly AI credits."},
    {"q": "Can Gemini generate images?", "a": "Yes. Gemini can generate images using Google's Imagen model, and as of Google I/O 2026, also generates video with native audio via Veo 3. Image quality is competitive but generally rated below Midjourney for artistic output. It's the most convenient option for image and video creation within the Google ecosystem."},
    {"q": "What is the difference between Gemini and Google Bard?", "a": "Bard was Google's original AI chatbot, rebranded as Gemini in February 2024. They are the same product — if you used Bard, you are now using Gemini. The rebrand accompanied a major upgrade in model capabilities, and subsequent releases (Gemini 2.5, Gemini 3, Gemini 3.5 Flash) have dramatically improved quality."}
  ]$faq$
WHERE slug = 'gemini' AND lang = 'en';

-- ─────────────────────────────────────────────────────────────
-- 4. DEVIN — faq only (pricing answer was outdated)
-- ─────────────────────────────────────────────────────────────

UPDATE tools SET
  faq = $faq$[
    {"q": "What is Devin AI?", "a": "Devin is an autonomous AI software engineer by Cognition AI. It runs in its own sandboxed environment with a browser, terminal, and code editor, and can complete multi-step engineering tasks — planning, implementing, testing, and debugging — with minimal human input."},
    {"q": "How much does Devin cost?", "a": "Devin 2.0 is publicly available. The Core plan starts at $20/month and includes 10 ACUs (Agent Compute Units). Additional ACUs are billed at $2 each. The Team plan is $500/month with 250 ACUs. Enterprise pricing is available on request. This is a 96% price reduction from the original $500/month plan."},
    {"q": "Is Devin better than GitHub Copilot?", "a": "They serve different purposes. Devin is an autonomous agent that completes entire tasks end-to-end. Copilot is an assistant that helps developers as they write code. Devin replaces engineering effort on defined tasks; Copilot amplifies developer productivity. Both can be used together."},
    {"q": "What can Copilot Studio build?", "a": "Copilot Studio can build customer service chatbots, HR assistants, IT helpdesk bots, internal knowledge bases with Q&A, and automated workflows connected to Microsoft 365 data. It is designed for business use cases, not software engineering automation."}
  ]$faq$
WHERE slug = 'devin' AND lang = 'en';

-- ─────────────────────────────────────────────────────────────
-- 5. COMPARISONS — chatgpt-vs-claude FAQ (outdated Claude 3.7 ref)
-- ─────────────────────────────────────────────────────────────

UPDATE comparisons SET
  faq = $faq$[
    {"q": "Is Claude better than ChatGPT?", "a": "It depends on the task. Claude Opus 4.8 leads on math, reasoning, and long-document analysis — it scored 96.7% on USAMO 2026, the highest ever recorded. ChatGPT has more features (image generation, voice, plugins) and a larger app ecosystem. On coding, both are excellent — Claude Code is the stronger agentic tool, while ChatGPT excels at data analysis with code interpreter."},
    {"q": "Which is free — ChatGPT or Claude?", "a": "Both have free plans. ChatGPT Free uses GPT-5.5 with limited access. Claude Free uses Sonnet 4.6 with limited daily messages. Both paid plans ($20/month) unlock significantly better models and higher usage limits. Opus 4.8 requires Claude Pro or Max."},
    {"q": "Can ChatGPT generate images?", "a": "Yes. ChatGPT Plus and higher plans include ChatGPT Images 2.0 (gpt-image-2) for high-quality image generation. Claude does not generate images — it is text and code only."},
    {"q": "Which AI is better for coding — ChatGPT or Claude?", "a": "Claude Opus 4.8 leads on complex, long-context coding tasks — entire repo rewrites, multi-file refactors, and autonomous development via Claude Code. ChatGPT with code interpreter excels at data analysis and running code snippets. For terminal-based autonomous coding, Claude Code is the strongest tool available in 2026."}
  ]$faq$
WHERE slug = 'chatgpt-vs-claude' AND lang = 'en';

-- ─────────────────────────────────────────────────────────────
-- 6. COMPARISONS — gemini-vs-chatgpt FAQ (outdated Gemini 1.5/2.0 refs)
-- ─────────────────────────────────────────────────────────────

UPDATE comparisons SET
  faq = $faq$[
    {"q": "Is Gemini better than ChatGPT in 2026?", "a": "On Google Workspace tasks, Gemini is the clear choice. Gemini 3.5 Flash delivers flagship-class reasoning at fast-model cost. ChatGPT has more features (image generation, voice, DALL-E, Sora) and the largest third-party ecosystem. Gemini wins for Google users and video/audio tasks; ChatGPT wins for feature breadth."},
    {"q": "Is Gemini free?", "a": "Yes. Gemini is free with access to Gemini 3.5 Flash, Deep Research, Gemini Live, and 100 monthly video credits. Google AI Pro ($19.99/month) adds higher limits and Veo 3. ChatGPT is also free with GPT-5.5 access, with Go ($8/mo), Plus ($20/mo), and Pro ($100/mo) tiers above."},
    {"q": "Can Gemini generate images?", "a": "Yes. Gemini uses Google's Imagen model for image generation, and Veo 3 for video with native audio (announced Google I/O 2026). ChatGPT uses ChatGPT Images 2.0 (gpt-image-2) for image generation and Sora for video. Both are strong — Gemini is better integrated with Google Drive and Docs."},
    {"q": "What is the difference between Gemini and Google Bard?", "a": "Bard was Google's original AI chatbot, rebranded as Gemini in February 2024. They are the same product. The rebrand accompanied a major capability upgrade, and subsequent releases including Gemini 3.5 Flash have made it highly competitive with GPT-5.5."}
  ]$faq$
WHERE slug = 'gemini-vs-chatgpt' AND lang = 'en';
