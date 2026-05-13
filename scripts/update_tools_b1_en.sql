-- ============================================================
-- Update 5 tools (EN) — May 2026
-- Tools: amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin
-- Run in Supabase SQL Editor
-- After running: translate to es, de, ru, ua, he, fr, pt
-- ============================================================

-- ============================================================
-- 1. AMAZON Q DEVELOPER
-- ============================================================
UPDATE tools SET
  name        = 'Amazon Q Developer',
  url         = 'https://aws.amazon.com/q/developer/',
  domain      = 'aws.amazon.com',
  badge       = 'freemium',
  best_for    = 'AWS-integrated AI coding, cloud development',
  description = $d1$Amazon Q Developer is AWS's AI coding assistant. The IDE plugin is being replaced by Kiro (kiro.dev), a spec-driven agentic IDE launching in 2026.$d1$,
  description_long = $dl1$Amazon Q Developer is AWS's AI-powered coding assistant, deeply integrated into the AWS ecosystem. It helps developers write, debug, and transform code inside their IDE, AWS Console, documentation portal, and communication tools like Slack and Teams.

As of May 2026, Amazon Q Developer is undergoing a significant transition. The IDE plugin is being retired and replaced by Kiro — a new agentic IDE available at kiro.dev. New IDE plugin signups are blocked from May 15, 2026, and full IDE plugin support ends April 30, 2027. All other surfaces — AWS Console, documentation, mobile app, and Slack/Teams integrations — continue operating normally and are not affected by this change.

Kiro, the successor IDE, introduces two flagship concepts. Specs convert natural-language requirements into full implementation plans and working code, bridging the gap between product specs and production-ready software. Hooks are event-driven automations that trigger on developer actions such as file save or git commit, running tasks like test generation, documentation updates, or security scans automatically.

A notable capability exclusive to Kiro is access to Claude Opus 4.7, Anthropic's most powerful model at the time of launch. This model is not available through other AWS channels, making Kiro the only way to access it within an AWS-native workflow.

Amazon Q Developer's freemium tier covers individual developers with a generous free allowance for code completions and chat interactions. Paid tiers scale for teams and enterprises with additional security scanning, transformation features, and SLA guarantees.

Best for AWS-focused development teams who want deep cloud integration, and for early adopters ready to migrate to the new Kiro spec-driven workflow before the IDE plugin sunset in April 2027.$dl1$,
  pros = ARRAY[
    'Deep AWS integration — Console, docs, Slack, Teams, mobile app all supported',
    'Kiro successor introduces Specs: natural language to full implementation automatically',
    'Hooks automate repetitive tasks on file save and git commit events',
    'Exclusive access to Claude Opus 4.7 through the Kiro IDE',
    'Generous free tier for individual developers with code completions and chat'
  ],
  cons = ARRAY[
    'IDE plugin is being retired — new signups blocked May 15, 2026, support ends April 2027',
    'Migration to Kiro required — existing IDE plugin workflows will need rework',
    'Less useful outside the AWS ecosystem compared to GitHub Copilot or Cursor',
    'Kiro is new and unproven — adoption risks for teams in early 2026'
  ]
WHERE slug = 'amazon-q-developer' AND lang = 'en';

-- ============================================================
-- 2. DALL-E 3
-- ============================================================
UPDATE tools SET
  name        = 'DALL-E 3 (Retired)',
  url         = 'https://openai.com/dall-e-3',
  domain      = 'openai.com',
  badge       = 'freemium',
  best_for    = 'AI image generation (retired — migrate to gpt-image-2)',
  description = $d2$DALL-E 3 was officially retired by OpenAI on May 12, 2026. It has been replaced by gpt-image-2, which powers ChatGPT Images 2.0 with native 2K resolution.$d2$,
  description_long = $dl2$DALL-E 3 was OpenAI's third-generation image generation model, widely used through ChatGPT and the OpenAI API from its launch in late 2023 until its official retirement on May 12, 2026. It introduced the ability to render accurate text inside images and to follow complex compositional prompts with high fidelity — a significant leap over DALL-E 2.

OpenAI has replaced DALL-E 3 with gpt-image-2, the model that now powers ChatGPT Images 2.0, launched April 21, 2026. Developers with existing API integrations using DALL-E 3 should migrate to gpt-image-1 (a stable, DALL-E 3-class model maintained for API compatibility) or gpt-image-2 (the current flagship with higher capability). The DALL-E 3 API endpoint is no longer available.

ChatGPT Images 2.0, powered by gpt-image-2, introduces several major improvements over DALL-E 3. Native 2K resolution output is available on paid plans. Up to 8 images can be generated per prompt when using thinking mode. Multilingual text rendering is significantly improved, with accurate text generation in Japanese, Korean, Chinese, and Hindi — languages where DALL-E 3 struggled.

Standard image generation in ChatGPT is now free for all users. Paid ChatGPT subscribers (Plus, Pro) get higher resolution, faster generation, and batch generation capabilities.

For users who built workflows around DALL-E 3 in ChatGPT, the transition to ChatGPT Images 2.0 is seamless — the same interface, but with the new model underneath. API users must explicitly update their model parameter to migrate.$dl2$,
  pros = ARRAY[
    'ChatGPT Images 2.0 replacement is free for all ChatGPT users — no cost to access successor',
    'gpt-image-2 offers native 2K resolution, a major upgrade over DALL-E 3 output',
    'Up to 8 images per prompt in thinking mode — batch generation now built in',
    'Multilingual text rendering improved for Japanese, Korean, Chinese, and Hindi'
  ],
  cons = ARRAY[
    'DALL-E 3 is retired as of May 12, 2026 — API endpoint no longer available',
    'Existing API integrations must be updated to gpt-image-1 or gpt-image-2',
    'Migration requires code changes for any app using the DALL-E 3 API parameter',
    'High-resolution and batch features locked behind paid ChatGPT plans'
  ]
WHERE slug = 'dall-e-3' AND lang = 'en';

-- ============================================================
-- 3. V0 BY VERCEL
-- ============================================================
UPDATE tools SET
  name        = 'V0 by Vercel',
  url         = 'https://v0.app',
  domain      = 'v0.app',
  badge       = 'freemium',
  best_for    = 'Full-stack AI development, UI generation, deployment',
  description = $d3$V0 is Vercel's AI-powered full-stack development platform. Now at v0.app after a domain change, with Git integration, VS Code-style editor, and production deployments on Vercel infrastructure.$d3$,
  description_long = $dl3$V0 is Vercel's AI development platform, originally launched as a UI component generator and now evolved into a full-stack development environment. As of early 2026, V0 moved from v0.dev to v0.app, reflecting its expanded scope beyond single components.

The February 2026 update was transformational. V0 gained Git integration that allows users to create a new branch per chat session and open pull requests directly against the main branch of any connected repository — turning AI conversations into trackable code changes in existing projects. The editor was rebuilt to a VS Code-style interface with file tree navigation, syntax highlighting, and multi-file editing.

Database connectivity expanded to include Snowflake and AWS data sources alongside existing Vercel Postgres support. The production sandbox feature allows users to import any GitHub repository and run it as a live, editable environment — not just scaffold new projects, but modify and deploy real production code.

Agentic workflows are now deployable on Vercel's infrastructure, allowing V0-generated automation pipelines to run as serverless functions or edge workers. This extends V0 from a generation tool into a platform for running AI-driven backend logic at scale.

Pricing switched from a credit-based monthly model to token-based billing, where cost scales with the complexity of each generation. Simpler prompts cost less; multi-file architectural changes cost more. A free tier with limited tokens remains available.

Best for frontend and full-stack developers who want to go from idea to deployed application with minimal boilerplate, and for teams that want AI-assisted code changes tracked in their existing Git workflow.$dl3$,
  pros = ARRAY[
    'Git integration creates branches per chat and opens PRs against main — fits existing workflows',
    'VS Code-style editor with file tree and multi-file editing — not just component snippets',
    'Production sandbox imports any GitHub repo as a live, editable environment',
    'Deploys agentic workflows on Vercel infrastructure as serverless or edge functions',
    'Database connectivity to Snowflake, AWS, and Vercel Postgres built in'
  ],
  cons = ARRAY[
    'Token-based pricing makes cost unpredictable for complex multi-file generations',
    'Domain changed from v0.dev to v0.app — existing bookmarks and links need updating',
    'Still primarily Vercel-ecosystem oriented — less useful if deploying to AWS or other hosts',
    'Learning curve for the new agentic workflow features compared to the original simple UI'
  ]
WHERE slug = 'v0-by-vercel' AND lang = 'en';

-- ============================================================
-- 4. MANUS
-- ============================================================
UPDATE tools SET
  name        = 'Manus',
  url         = 'https://manus.im',
  domain      = 'manus.im',
  badge       = 'freemium',
  best_for    = 'Autonomous AI agent, mobile/web app building, task automation',
  description = $d4$Manus is an autonomous AI agent acquired by Meta in late 2025. Manus 1.6 Max completes complex tasks in under 4 minutes with mobile app development, web app builder, and Slack/WhatsApp/Telegram integrations.$d4$,
  description_long = $dl4$Manus is an autonomous AI agent platform that gained widespread attention in early 2025 for its ability to complete long-horizon tasks without human intervention. Originally developed by a Chinese AI startup, Manus was acquired by Meta in late 2025 and continues to operate as a standalone product.

Manus 1.6 Max, released in 2026, delivers significant performance improvements over earlier versions. The average task completion time has dropped from approximately 15 minutes to under 4 minutes — a 4x speed improvement that makes the agent practical for real-time use cases rather than background batch jobs. The agent handles complex, multi-step tasks such as research synthesis, data collection, form filling, and code execution without requiring user supervision.

New capabilities in 1.6 Max include Mobile App Development, where users describe an app concept in natural language and Manus generates working iOS and Android applications. The Web App Builder allows users to create web applications with a built-in database, Stripe payment integration, and SEO configuration — turning Manus into a lightweight no-code app development platform.

The desktop app release adds local file access, allowing Manus to read, edit, and organize files on the user's own machine rather than operating exclusively in cloud environments. Communication integrations — Slack, WhatsApp, and Telegram — allow users to assign tasks to Manus directly from messaging apps and receive results in the same thread.

Design View is a new interactive image creation mode where users can iteratively design visual assets, mockups, and graphics through conversation rather than manual editing.

Best for power users and small teams who need an AI agent that can complete multi-step tasks autonomously across the web, local files, and third-party services without continuous supervision.$dl4$,
  pros = ARRAY[
    'Task completion time reduced from 15 minutes to under 4 minutes in Manus 1.6 Max',
    'Builds iOS and Android mobile apps from natural language descriptions',
    'Web App Builder includes database, Stripe, and SEO configuration out of the box',
    'Slack, WhatsApp, and Telegram integrations — assign tasks from any messaging app',
    'Desktop app with local file access for on-device task automation'
  ],
  cons = ARRAY[
    'Acquired by Meta — long-term product direction and data privacy policies may change',
    'Autonomous agents occasionally make errors on ambiguous tasks requiring human review',
    'Generated mobile apps may require developer review before App Store submission',
    'Token/credit consumption for long tasks can be significant on complex workflows'
  ]
WHERE slug = 'manus' AND lang = 'en';

-- ============================================================
-- 5. DEVIN
-- ============================================================
UPDATE tools SET
  name        = 'Devin',
  url         = 'https://devin.ai',
  domain      = 'devin.ai',
  badge       = 'paid',
  best_for    = 'Autonomous AI software engineer, junior dev task automation',
  description = $d5$Devin 2.0 completes 83% more junior dev tasks per ACU than Devin 1.0. Price slashed 96% to $20/month. Plans: Core $20, Team $500, Enterprise custom.$d5$,
  description_long = $dl5$Devin is an autonomous AI software engineer built by Cognition AI, introduced in 2024 as the first AI agent capable of completing end-to-end software engineering tasks — including writing code, running tests, debugging, and deploying changes — without human guidance on each step.

Devin 2.0, launched in late 2025 and widely adopted through 2026, represents a major capability leap. On Cognition's internal ACU (Agent Compute Unit) benchmark, Devin 2.0 completes 83% more junior developer tasks per unit of compute compared to Devin 1.0. This translates to meaningfully more work completed per dollar spent, not just raw capability improvement.

The pricing restructure is the most dramatic change in Devin's history. The original plan cost $500 per month, limiting adoption to well-funded engineering teams. Devin 2.0 introduced a Core plan at $20 per month — a 96% price reduction — making autonomous AI engineering accessible to individual developers and small teams for the first time. The Team plan at $500 per month includes 250 ACUs with additional ACUs billed at $2 each. Enterprise pricing is custom for large organizations with compliance and SLA requirements.

Devin integrates with Windsurf's Kanban dashboard, allowing teams to manage AI agent tasks alongside human developer tasks in a unified project view. This positions Devin as a collaborative team member in project management tools rather than a standalone CLI-only tool.

Devin works best on well-defined tasks with clear acceptance criteria — bug fixes from GitHub issues, adding tests to existing code, implementing a specified API endpoint, or updating dependencies. It struggles with open-ended architectural decisions and tasks that require deep product context not captured in the codebase.

Best for engineering teams that want to offload routine junior-level tasks to an AI agent, and for individual developers who want an autonomous assistant at a consumer price point.$dl5$,
  pros = ARRAY[
    '96% price reduction — Core plan now $20/month, down from $500',
    'Devin 2.0 completes 83% more junior dev tasks per ACU vs Devin 1.0',
    'Fully autonomous: writes, tests, debugs, and deploys without step-by-step guidance',
    'Windsurf Kanban integration — manage AI tasks alongside human dev tasks',
    'Team plan ($500/mo) scales with 250 ACUs included and $2/ACU overages'
  ],
  cons = ARRAY[
    'Still paid-only — no free tier even at the new lower price point',
    'Struggles with open-ended architectural decisions and ambiguous requirements',
    'Requires well-documented codebases and clear task specs for best results',
    'ACU consumption on complex tasks can exceed the Core plan allocation quickly'
  ]
WHERE slug = 'devin' AND lang = 'en';
-- ============================================================
-- Update tools 6-10 (EN only): chatgpt, claude, grok, deepseek, cursor
-- Data as of May 2026
-- ============================================================

-- =============================================
-- TOOL 6: CHATGPT
-- =============================================
UPDATE tools SET
  name        = 'ChatGPT',
  url         = 'https://chatgpt.com',
  domain      = 'chatgpt.com',
  badge       = 'freemium',
  best_for    = 'General AI assistant, productivity, coding',
  description = $d6$GPT-5.5 Instant is now the default model — 52.5% fewer hallucinations on high-stakes prompts. Memory pulls from past chats, Gmail, and saved files on Plus/Pro. 700M+ weekly users.$d6$,
  description_long = $dl6$ChatGPT is OpenAI's flagship AI assistant and the world's most widely used AI product, with over 700 million weekly active users as of May 2026. The default model is now GPT-5.5 Instant, launched on May 5, 2026, which delivers 52.5% fewer hallucinations on high-stakes prompts compared to GPT-5.3 and is measurably faster for everyday tasks.

Memory is one of ChatGPT's most significant upgrades in 2026. Plus and Pro subscribers can now have the assistant pull context not only from past conversations but also from Gmail and saved files, giving it a persistent, personalized understanding of who you are and what you're working on across sessions.

The voice and hardware integration story has expanded substantially. CarPlay integration enables hands-free voice access while driving, and spreadsheet integration now covers both Excel and Google Sheets — allowing ChatGPT to read, analyze, and write data directly into spreadsheets without copy-pasting.

ChatGPT is available across five pricing tiers: Free (limited access), Go at $8/month (more daily messages), Plus at $20/month (full GPT-5.5 Instant, file uploads, memory), Pro at $100/month (extended limits, priority access), and Pro at $200/month (maximum usage with all capabilities unlocked).

Compared to Claude and Gemini, ChatGPT has the widest feature surface — it combines a conversational assistant, code interpreter, image generator (DALL-E), video creator (Sora), and deep research tool in a single interface. The tradeoff is occasional inconsistency: Plus users still encounter usage caps at peak hours, and the breadth of features means some capabilities are shallower than dedicated specialized tools.

ChatGPT is the right choice for users who want a single tool that handles the widest range of tasks — writing, coding, research, image creation, voice, and now spreadsheets — without switching platforms.$dl6$,
  pros        = ARRAY[
    'GPT-5.5 Instant default — 52.5% fewer hallucinations on high-stakes prompts vs GPT-5.3',
    'Memory pulls context from past chats, Gmail, and saved files (Plus/Pro)',
    'CarPlay integration for hands-free voice access while driving',
    'Native spreadsheet integration with Excel and Google Sheets',
    'Widest feature set: DALL-E, Sora, code interpreter, deep research, voice — all in one place'
  ],
  cons        = ARRAY[
    'Plus users hit daily usage limits regularly at peak hours',
    'Free and Go tiers have significant capability restrictions vs Plus',
    'Breadth of features means some capabilities are shallower than dedicated tools',
    'Memory and Gmail integration limited to Plus/Pro — not available on Free or Go',
    'Claude and Gemini outperform on instruction-following and long-context tasks'
  ]
WHERE slug = 'chatgpt' AND lang = 'en';

-- =============================================
-- TOOL 7: CLAUDE
-- =============================================
UPDATE tools SET
  name        = 'Claude',
  url         = 'https://claude.ai',
  domain      = 'claude.ai',
  badge       = 'freemium',
  best_for    = 'Writing, coding, analysis, long documents',
  description = $d7$Claude Opus 4.7 delivers improved coding and higher-resolution vision at unchanged pricing. Rate limits doubled for Pro/Max/Team/Enterprise. Claude Code desktop app redesigned with parallel tasks and SSH support.$d7$,
  description_long = $dl7$Claude is Anthropic's AI assistant, recognized in 2026 for the strongest instruction-following and reasoning quality among major AI assistants. The latest release, Claude Opus 4.7, improves coding accuracy and brings higher-resolution vision processing — the ability to analyze detailed images, diagrams, and documents with greater precision — while keeping API pricing unchanged at $5 per million input tokens and $25 per million output tokens.

A major quality-of-life improvement in 2026 is the doubling of rate limits across all paid tiers: Pro, Max, Team, and Enterprise users can now send twice as many messages per hour, and peak-hour rate reductions have been removed entirely. This makes Claude dramatically more usable for professional workflows that previously hit frustrating pauses.

Claude Design, a new product from Anthropic Labs, extends Claude's capabilities into visual outputs — users can generate presentation slides, design mockups, and interactive prototypes directly through conversation with Claude Opus 4.7. It is available to Pro plan subscribers and above at no extra cost.

The Claude Code desktop app has been redesigned with parallel task execution, a session sidebar for managing multiple projects, integrated SSH support for remote development, and an embedded terminal. This makes it one of the most capable AI coding environments available, competing directly with Cursor. Claude Platform is now also available on AWS, expanding deployment options for enterprise customers.

Pricing runs from Free (limited daily messages) to Pro at $20/month, Max at $100/month, and Max at $200/month. The Max tiers offer substantially higher throughput and are designed for power users and development teams.

Claude is the best choice for users who need precise, reliable responses to complex instructions — technical writing, document analysis, code review, and long-context reasoning — without the usage unpredictability of credit-based systems.$dl7$,
  pros        = ARRAY[
    'Claude Opus 4.7 — best instruction-following and long-context reasoning among major assistants',
    'Rate limits doubled for Pro/Max/Team/Enterprise; peak-hour reductions removed',
    'Claude Design included for Pro+ subscribers — generate slides, mockups, and prototypes via conversation',
    'Claude Code desktop app with parallel tasks, session sidebar, SSH support, and integrated terminal',
    'API pricing unchanged: $5/$25 per million input/output tokens — predictable costs'
  ],
  cons        = ARRAY[
    'Free tier has strict daily message limits — not practical for heavy daily use',
    'No native image generation (relies on Claude Design for visual outputs)',
    'Max tiers at $100-$200/month are expensive compared to ChatGPT Plus at $20/month',
    'Less consumer feature breadth than ChatGPT — no built-in video, music, or spreadsheet tools',
    'Claude Design still in Labs preview — not fully released to all users'
  ]
WHERE slug = 'claude' AND lang = 'en';

-- =============================================
-- TOOL 8: GROK
-- =============================================
UPDATE tools SET
  name        = 'Grok',
  url         = 'https://grok.com',
  domain      = 'grok.com',
  badge       = 'freemium',
  best_for    = 'Real-time X data, voice cloning, reasoning',
  description = $d8$Grok 4.3 brings 1M token context, native video input, and built-in reasoning at $1.25/M input tokens via API. Custom Voices API, Speech-to-Text GA, and Quality Mode image generation added.$d8$,
  description_long = $dl8$Grok is xAI's AI assistant, tightly integrated with X (formerly Twitter) and available as a standalone product at grok.com. Grok 4.3, the current release, is a substantial upgrade: it supports a 1 million token context window, accepts native video as input for analysis, and includes built-in step-by-step reasoning without needing to switch to a separate reasoning mode.

The API is priced at $1.25 per million input tokens, positioning Grok 4.3 as a competitive option for developers who need real-time social data access alongside strong general reasoning. Structured outputs are supported, making it straightforward to integrate into applications that require consistent JSON or typed responses.

Three significant new APIs expand Grok's use cases beyond chat. The Custom Voices API allows developers to clone a voice from just seconds of audio and use it for speech synthesis. The Speech-to-Text API, now generally available, adds word-level timestamps and speaker diarization — useful for transcription, meeting notes, and podcast processing. Quality Mode for image generation produces higher-fidelity outputs for use cases that require detailed visuals.

Grok remains free to use on X with daily limits. SuperGrok, the standalone subscription at $30/month, unlocks higher usage limits, API access, and all advanced features including Custom Voices and Quality Mode.

The tool's primary differentiator remains its real-time X data integration — Grok can surface live posts, trending topics, and breaking information that no other major AI assistant has access to. This makes it uniquely valuable for social media monitoring, trend analysis, and real-time research. The tradeoff is a smaller third-party integration ecosystem compared to ChatGPT or Claude.$dl8$,
  pros        = ARRAY[
    'Grok 4.3 — 1M token context, native video input, built-in reasoning',
    'Real-time X (Twitter) data access — unique among all major AI assistants',
    'Custom Voices API: clone a voice from seconds of audio',
    'Speech-to-Text API GA with word-level timestamps and speaker diarization',
    'API at $1.25/M input tokens — competitive pricing with structured output support'
  ],
  cons        = ARRAY[
    'Tightly coupled to X/Twitter ecosystem — less useful without X context',
    'SuperGrok at $30/month offers less usage than Claude Pro or ChatGPT Plus at similar price points',
    'Smaller third-party integration ecosystem than ChatGPT or Claude',
    'Quality and consistency on complex reasoning tasks trails Claude Opus 4.7',
    'Custom Voices and Quality Mode image generation are API/SuperGrok features only — not on free tier'
  ]
WHERE slug = 'grok' AND lang = 'en';

-- =============================================
-- TOOL 9: DEEPSEEK
-- =============================================
UPDATE tools SET
  name        = 'DeepSeek',
  url         = 'https://chat.deepseek.com',
  domain      = 'deepseek.com',
  badge       = 'free',
  best_for    = 'Open-source reasoning, long-context, low-cost API',
  description = $d9$DeepSeek V4 Preview (April 24, 2026) offers two models up to 1.6T params with 1M context. Hybrid Attention cuts FLOPs by 73% at 1M tokens. Three reasoning modes. Open-source.$d9$,
  description_long = $dl9$DeepSeek is a Chinese AI lab that has built a reputation for releasing frontier-quality open-source models at remarkably low cost. DeepSeek V4 Preview, released April 24, 2026, comes in two variants: V4-Pro with 1.6 trillion total parameters (49 billion active) and V4-Flash with 284 billion parameters (13 billion active). Both support a 1 million token context window, enabling analysis of entire codebases, legal documents, or book-length texts in a single session.

The architectural innovation in V4 is the Hybrid Attention system, combining Compressed Sparse Attention (CSA) and Hierarchical Context Aggregation (HCA). At 1 million token context, V4-Pro uses only 27% of the FLOPs required by DeepSeek V3.2 — a dramatic efficiency improvement that makes long-context tasks economically viable at scale.

Three reasoning effort modes — light, standard, and deep — let users trade off response speed against reasoning depth. Light mode is fast and suited for straightforward tasks; deep mode engages extended chain-of-thought for complex multi-step problems. This flexibility is valuable for developers building applications with mixed workloads.

Pricing is aggressive: V4-Flash costs $0.14 per million input tokens and $0.28 per million output tokens. V4-Pro costs $0.145 per million input tokens and $3.48 per million output tokens. Both models are open-source and can be self-hosted, making DeepSeek the most cost-efficient option for teams running high-volume inference or needing on-premises deployment for data privacy.

DeepSeek's web chat interface at chat.deepseek.com is free to use with no account required for basic access. The primary limitation compared to ChatGPT or Claude is the ecosystem: no voice mode, no image generation, no native app integrations. DeepSeek is a developer and researcher tool first, and a consumer product second.$dl9$,
  pros        = ARRAY[
    'V4-Pro: 1.6T params, 49B active, 1M token context — frontier performance at open-source pricing',
    'Hybrid Attention (CSA + HCA) — V4-Pro uses only 27% FLOPs vs V3.2 at 1M token context',
    'Three reasoning effort modes (light/standard/deep) — tune speed vs depth per request',
    'V4-Flash API at $0.14/$0.28 per million tokens — among the cheapest frontier-quality models',
    'Fully open-source — self-hostable for data privacy and on-premises deployment'
  ],
  cons        = ARRAY[
    'No voice mode, image generation, or consumer app integrations',
    'Web interface less polished than ChatGPT or Claude — developer-first product',
    'Data privacy concerns for users who cannot self-host (Chinese company, cloud inference)',
    'V4-Pro output at $3.48/M tokens is expensive for high-volume output workloads',
    'Ecosystem and plugin support significantly smaller than OpenAI or Anthropic'
  ]
WHERE slug = 'deepseek' AND lang = 'en';

-- =============================================
-- TOOL 10: CURSOR
-- =============================================
UPDATE tools SET
  name        = 'Cursor',
  url         = 'https://cursor.com',
  domain      = 'cursor.com',
  badge       = 'paid',
  best_for    = 'AI coding, multi-repo, cloud agents, security review',
  description = $d10$Cursor 3 launches unified multi-repo workspace, cloud agents running in parallel on VMs, Canvases for visual output, Automations triggered from Slack or timers, and always-on Security Review for Teams.$d10$,
  description_long = $dl10$Cursor is an AI-first code editor built on VS Code, designed to make AI assistance the primary interface for software development rather than a plugin layered on top. Cursor 3, the current major release, represents a substantial architectural expansion beyond a single-file editor into a full development platform.

The centerpiece of Cursor 3 is the unified multi-repo workspace: developers can open and navigate multiple repositories simultaneously, with the AI agent maintaining context across all of them. Cloud agents run in parallel on dedicated virtual machines, each capable of executing long-running tasks autonomously while recording their work via video and logs for review. This makes Cursor 3 the first mainstream coding tool where you can delegate a batch of parallel implementation tasks to agents and come back to reviewed, logged results.

Canvases is a new visual output layer: agents can produce PR review summaries, architecture diagrams, test dashboards, and other structured visual artifacts directly inside the Cursor workspace. Cursor Automations allows tasks to be triggered from Slack messages, scheduled timers, or specific codebase events — moving Cursor toward a CI/CD-adjacent automation role in addition to its editing function.

Security Review, available in Teams and Enterprise tiers, is an always-on vulnerability scanner that runs continuously in the background and surfaces security issues as code is written, rather than as a separate audit step. Composer 2 is an in-house model developed by the Cursor team, optimized specifically for code editing tasks.

Pricing uses a usage-credit model: Pro at $20/month covers standard usage, Pro+ at $60/month provides 3x usage limits for heavy users. There is no free tier — Cursor is a paid product from day one.

Cursor is the best choice for professional developers and engineering teams who want AI deeply integrated into the full development workflow — writing, reviewing, testing, and deploying — rather than as a suggestion engine.$dl10$,
  pros        = ARRAY[
    'Multi-repo unified workspace — AI maintains context across multiple repositories simultaneously',
    'Cloud agents run in parallel on dedicated VMs with video/log recording for async review',
    'Canvases feature: agents produce visual outputs — PR reviews, dashboards, architecture diagrams',
    'Cursor Automations: trigger agents from Slack, timers, or codebase events',
    'Always-on Security Review (Teams/Enterprise) — continuous vulnerability scanning as you write'
  ],
  cons        = ARRAY[
    'No free tier — paid-only product starting at $20/month',
    'Pro+ at $60/month is 3x GitHub Copilot''s base price for equivalent usage levels',
    'Cloud agents and Canvases are new features — stability and reliability still maturing',
    'Cursor Automations and Security Review limited to Teams/Enterprise tiers',
    'Migration from VS Code requires reconfiguring extensions and keybindings'
  ]
WHERE slug = 'cursor' AND lang = 'en';
