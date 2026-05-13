-- ============================================================
-- Update 5 tools (EN) — May 2026
-- Tools: zed, replit, lovable, bolt-new, github-copilot
-- Run in Supabase SQL Editor
-- After running: translate to es, de, ru, ua, he, fr, pt
-- ============================================================

-- ============================================================
-- 11. ZED
-- ============================================================
UPDATE tools SET
  name        = 'Zed',
  url         = 'https://zed.dev',
  domain      = 'zed.dev',
  badge       = 'freemium',
  best_for    = 'Fast AI code editor, parallel agents, Rust-powered speed',
  description = $d11$Zed 1.0 launched April 29, 2026 after five years of development. Run multiple AI agents in parallel across codebase sections, with Business plan for org-wide AI governance.$d11$,
  description_long = $dl11$Zed is a code editor built entirely in Rust, designed from the ground up for performance and low latency. Version 1.0, released April 29, 2026, marks a five-year development milestone and the first stable release suitable for production teams. The editor is fast by design — Rust eliminates the overhead that slows Electron-based editors like VS Code and Cursor under heavy load.

The flagship feature of Zed 1.0 is Parallel Agents: users can run multiple AI agents simultaneously, each working on a different part of the codebase independently. One agent can refactor a module while another writes tests for a second module and a third agent handles documentation — all concurrently. This is a meaningful productivity gain over single-threaded agent workflows that require waiting for one task to finish before starting the next.

In January 2026, Zed co-authored the Agent Client Protocol (ACP) with JetBrains, establishing a cross-editor standard for how AI agents communicate with development environments. ACP means agents built for Zed can also run in JetBrains IDEs and vice versa, reducing vendor lock-in in the AI coding agent ecosystem.

Model support in Zed 1.0 includes GPT-5.5, DeepSeek V4, and MiMo V2.5, giving developers access to a range of frontier models directly inside the editor without configuring separate API keys per provider. Git graph view and split diffs are new interface features that improve code review workflows within the editor itself.

Zed is free for individual developers. The Business plan adds organization-wide AI policy enforcement, centralized billing, and AI governance controls — useful for engineering teams that need to manage model access and usage across large groups.

Zed is best for developers who want a fast, resource-efficient editor with serious parallel AI agent capability, and for teams that need centralized AI governance without adopting a heavyweight enterprise tool.$dl11$,
  pros = ARRAY[
    'Built in Rust — significantly faster and lighter than Electron-based editors like VS Code',
    'Parallel Agents: run multiple AI agents concurrently on different codebase sections',
    'Agent Client Protocol (ACP) with JetBrains — agents are cross-editor compatible',
    'Supports GPT-5.5, DeepSeek V4, MiMo V2.5 — broad frontier model access built in',
    'Free for individuals; Business plan adds org-wide AI policy and centralized billing'
  ],
  cons = ARRAY[
    'Version 1.0 — ecosystem of extensions and plugins is smaller than VS Code or JetBrains',
    'Business plan governance features require paid subscription — pricing not publicly listed',
    'Rust-native architecture means some VS Code extensions are not compatible',
    'Parallel agents feature is new — complex multi-agent coordination can produce conflicts'
  ]
WHERE slug = 'zed' AND lang = 'en';

-- ============================================================
-- 12. REPLIT
-- ============================================================
UPDATE tools SET
  name        = 'Replit',
  url         = 'https://replit.com',
  domain      = 'replit.com',
  badge       = 'freemium',
  best_for    = 'AI app building, cloud IDE, mobile dev scaffolding',
  description = $d12$Replit Agent 4 runs parallel agents for auth, database, backend, and frontend simultaneously. Security Agent reviews full codebases in under an hour. Named Google Cloud 2026 AI Tooling Partner of the Year.$d12$,
  description_long = $dl12$Replit is a browser-based development platform that combines a cloud IDE, AI coding agent, and instant deployment into a single environment. No local setup is required — users write, run, and ship code entirely in the browser, making it one of the most accessible platforms for beginners and the fastest option for prototyping.

Replit Agent 4, the current generation, introduces multi-task parallelism: instead of building an app sequentially, the agent spins up parallel agents that handle authentication, database setup, backend logic, and frontend code simultaneously. Progress on each task is always visible in a dedicated panel, so users can monitor what is happening without interrupting the agent. This approach cuts full-stack app generation time substantially compared to single-threaded agents.

The Security Agent is a new autonomous reviewer that performs full codebase threat modeling and security analysis. It identifies vulnerabilities, generates a prioritized report, and can apply fixes — completing a security review in under an hour for typical projects. This is a meaningful capability for solo developers and small teams that cannot afford dedicated security tooling.

Mobile development support now scaffolds React Native and Expo projects with a working mobile app structure, dependencies, and configuration out of the box. Replit received Google Cloud's 2026 AI Tooling Partner of the Year award, reflecting the depth of its cloud infrastructure integration.

Pricing as of February 2026 runs across three tiers: Free with limited agent usage, Core at $25/month (or $20/month annual) which includes $25 in monthly credits, and Pro at $100/month (or $95/month annual) which includes $100 in credits, Turbo mode for faster generation, and support for up to 15 collaborators.

Replit is best for developers who want to go from idea to deployed app quickly, students learning full-stack development, and small teams that need built-in collaboration and AI-assisted security review without managing infrastructure.$dl12$,
  pros = ARRAY[
    'Agent 4 runs parallel agents for auth, database, backend, and frontend simultaneously',
    'Security Agent completes full codebase threat modeling and fixes in under an hour',
    'Scaffolds React Native and Expo mobile projects with full working structure',
    'Zero local setup — write, run, and deploy entirely in the browser',
    'Google Cloud 2026 AI Tooling Partner of the Year — strong cloud infrastructure backing'
  ],
  cons = ARRAY[
    'Free tier has significant limits on agent usage and compute time',
    'Pro plan at $100/month is expensive for solo developers who do not exhaust credits monthly',
    'Browser-based environment is slower for large projects than local editors like Cursor or Zed',
    'Generated code often requires review and cleanup before production deployment',
    'Collaboration limited to 15 users on Pro — not suited for large engineering teams'
  ]
WHERE slug = 'replit' AND lang = 'en';

-- ============================================================
-- 13. LOVABLE
-- ============================================================
UPDATE tools SET
  name        = 'Lovable',
  url         = 'https://lovable.dev',
  domain      = 'lovable.dev',
  badge       = 'paid',
  best_for    = 'AI app builder, no-code, visual bug testing, voice input',
  description = $d13$Lovable adds Plan Mode, a 50-prompt queue, and a virtual browser that auto-tests apps for visual and interaction bugs. Voice Mode and a mobile app on iOS and Android launched in April 2026.$d13$,
  description_long = $dl13$Lovable is an AI-powered app builder that generates full-stack web applications from natural language descriptions. It is positioned between a no-code tool and a traditional coding environment — users describe what they want, and Lovable writes and deploys the application. No coding experience is required to start, but experienced developers can inspect and edit the generated code.

Plan Mode, introduced in February 2026, changes how generation works: instead of immediately writing code, Lovable first shows a complete plan of what it intends to build. The user reviews and approves the plan before any code is generated, reducing wasted iterations where the AI misinterprets an ambiguous prompt. This approval-before-execution model is particularly useful for complex apps with many interconnected components.

Prompt Queue allows users to line up to 50 sequential prompts that execute one after another without manual intervention. Instead of waiting for each change to complete before typing the next instruction, users can pre-load an entire session of incremental improvements and step away.

Browser Testing adds a virtual browser that automatically tests the generated application for visual bugs and interaction failures — checking that buttons work, layouts render correctly across screen sizes, and forms submit without errors. This automated QA step catches common issues before the user sees the output.

Cross-project component mentions allow shared UI libraries to be referenced across multiple Lovable projects, maintaining design consistency without duplicating work. Voice Mode lets users describe changes verbally instead of typing. The iOS and Android mobile app, launched April 2026, brings the full Lovable experience to mobile with push notifications for build completions.

Pricing starts at $25/month. Lovable is best for founders, designers, and non-technical users who want to ship a working web application quickly without writing code, and for developers who want to prototype ideas faster than traditional development allows.$dl13$,
  pros = ARRAY[
    'Plan Mode: AI shows full build plan for approval before writing any code',
    'Prompt Queue stacks up to 50 sequential prompts for uninterrupted generation sessions',
    'Browser Testing: virtual browser auto-tests apps for visual and interaction bugs',
    'Voice Mode — describe changes by speaking instead of typing',
    'Mobile app on iOS and Android with push notifications for build completions'
  ],
  cons = ARRAY[
    'No free tier — paid-only starting at $25/month',
    'Generated apps may need developer review for production-grade security and performance',
    'Less suitable for complex backend logic compared to dedicated coding agents like Devin',
    'Cross-project component sharing requires manual setup of shared libraries'
  ]
WHERE slug = 'lovable' AND lang = 'en';

-- ============================================================
-- 14. BOLT.NEW
-- ============================================================
UPDATE tools SET
  name        = 'Bolt.new',
  url         = 'https://bolt.new',
  domain      = 'bolt.new',
  badge       = 'freemium',
  best_for    = 'AI full-stack builder, built-in hosting and auth, team workspaces',
  description = $d14$Bolt V2 bundles databases, auth, file storage, edge functions, and hosting — no third-party services needed. Handles projects 1,000x larger than the original, with 40% faster builds and Claude Opus 4.6 with adjustable reasoning.$d14$,
  description_long = $dl14$Bolt.new is a browser-based AI app builder that generates and deploys full-stack web applications from natural language prompts. The original Bolt gained attention in 2024 for generating frontend code quickly; Bolt V2, also called Bolt Cloud, is a substantially deeper platform with built-in infrastructure that eliminates the need to configure third-party services.

Bolt Cloud bundles everything needed for a production web app: a built-in database, authentication system, file storage, edge functions, analytics, and hosting — all managed within the Bolt platform. Users do not need to set up Supabase, Firebase, or any separate backend service. This integrated stack is the most significant architectural difference between Bolt and competitors like Lovable or Replit.

MCP (Model Context Protocol) support allows Bolt to connect external tools — Notion, Linear, Git repositories, and other MCP-compatible services — directly into the generation workflow. This makes it possible to build apps that read from a Notion database, update Linear issues on completion, or commit generated code to a Git repository automatically.

AI image generation is built into the chat interface, with WebP export for use in generated applications. Build performance has improved by 40% compared to the 2024 version, and Bolt now handles projects approximately 1,000 times larger than the original — making it viable for serious applications rather than just prototypes.

Team features include shared workspaces, team templates, admin controls, and collaborative editing, enabling multiple developers or stakeholders to work on the same Bolt project. Claude Opus 4.6 is available as a model option with adjustable reasoning intensity, allowing users to trade response speed for deeper architectural thinking on complex generation tasks.

Bolt.new is best for developers and founders who want to build and ship full-stack applications without managing separate hosting, auth, and database services, and for teams that need collaborative AI app development in a single platform.$dl14$,
  pros = ARRAY[
    'Built-in database, auth, storage, edge functions, analytics, and hosting — no third-party services',
    'MCP support connects Notion, Linear, Git, and other external tools into the build workflow',
    'Handles projects 1,000x larger than original Bolt with 40% faster build performance',
    'AI image generation in chat with WebP export for immediate use in apps',
    'Team workspaces with shared templates, admin controls, and collaborative editing'
  ],
  cons = ARRAY[
    'Vendor lock-in risk — integrated stack ties projects to the Bolt Cloud platform',
    'Advanced team features and higher usage limits require paid plans',
    'Less suited for projects requiring fine-grained infrastructure control or custom hosting',
    'MCP integrations require compatible external services to be already configured',
    'Relatively new platform — long-term reliability and data portability unproven at scale'
  ]
WHERE slug = 'bolt-new' AND lang = 'en';

-- ============================================================
-- 15. GITHUB COPILOT
-- ============================================================
UPDATE tools SET
  name        = 'GitHub Copilot',
  url         = 'https://github.com/features/copilot',
  domain      = 'github.com',
  badge       = 'freemium',
  best_for    = 'AI coding in VS Code, cloud agents, code review metrics',
  description = $d15$GitHub Copilot switches to usage-based billing from June 1, 2026. Cloud agents launch directly from VS Code and Visual Studio, steered from issues and project boards, now starting 20% faster.$d15$,
  description_long = $dl15$GitHub Copilot is Microsoft's AI coding assistant, deeply integrated into Visual Studio Code, Visual Studio, and GitHub itself. It is the most widely deployed AI coding tool in enterprise settings, benefiting from tight integration with GitHub repositories, Actions, Issues, and project management features that no third-party tool can replicate natively.

Effective June 1, 2026, GitHub Copilot's pricing model changes from fixed monthly plans to usage-based billing. A new Max high-tier plan is being introduced alongside the existing Individual and Business tiers, designed for power users who exceed standard usage limits. The shift to consumption-based pricing aligns costs with actual usage rather than fixed monthly allocations.

Cloud agents are now launchable directly from VS Code and Visual Studio without switching to the GitHub web interface. Agents can be steered from GitHub Issues and project boards — assign an issue to Copilot and it picks up the task autonomously. Agent startup time has improved by 20%, reducing the friction between assigning a task and seeing the agent begin work. A Debugger Agent validates proposed fixes against live runtime behavior rather than static code analysis, reducing the rate of fixes that pass tests but fail in production.

Custom instructions and prompt files allow users to save reusable context — coding standards, architectural preferences, project-specific rules — and apply them consistently across Copilot sessions. This eliminates the need to re-explain project conventions in every chat.

The Copilot CLI now supports a /fork command and mid-input slash commands, making it more flexible for terminal-based workflows. Code review metrics have been expanded to include a breakdown of review comments by type — security issues, bug risk, style — giving teams visibility into where Copilot review is adding the most value.

GitHub Copilot is best for individual developers and engineering teams already using GitHub, who want AI assistance deeply integrated into their existing repository management, CI/CD, and code review workflows.$dl15$,
  pros = ARRAY[
    'Cloud agents launch from VS Code/Visual Studio, steered from Issues and project boards',
    'Debugger Agent validates fixes against live runtime behavior — not just static analysis',
    'Custom instructions and prompt files save reusable context for consistent responses',
    'Code review metrics broken down by comment type: security, bug risk, style',
    'Deepest GitHub integration available — no third-party tool matches native repo/Actions/Issues access'
  ],
  cons = ARRAY[
    'Usage-based billing from June 2026 — costs may be unpredictable for heavy users',
    'Max plan pricing not publicly announced — enterprise buyers cannot budget without contact',
    'Less capable for full-stack app generation compared to Bolt.new, Lovable, or Replit',
    'Custom instructions and prompt files require upfront setup investment per project',
    'Copilot CLI slash commands are new — documentation and edge case coverage still maturing'
  ]
WHERE slug = 'github-copilot' AND lang = 'en';
-- ============================================================
-- Update 5 tools (EN) — May 2026
-- Tools: midjourney, kling-ai, synthesia, suno, elevenlabs
-- Run in Supabase SQL Editor
-- After running: translate to es, de, ru, ua, he, fr, pt
-- ============================================================

-- ============================================================
-- 16. MIDJOURNEY
-- ============================================================
UPDATE tools SET
  name        = 'Midjourney',
  url         = 'https://midjourney.com',
  domain      = 'midjourney.com',
  badge       = 'paid',
  best_for    = 'AI image generation, artistic styles, text rendering',
  description = $d16$Midjourney V8.1 (April 2026) brings native 2K resolution, ~5x faster generation vs V7, and dramatically improved text rendering. Niji 7 launched January 2026 for anime-style images.$d16$,
  description_long = $dl16$Midjourney is one of the leading AI image generation platforms, known for producing highly artistic and stylistically coherent images through a prompt-based interface. It runs primarily through a web app and Discord bot, with no local installation required.

V8 Alpha launched on March 17, 2026, and V8.1 followed on April 30, 2026. The most significant upgrade is native 2K (HD) resolution output without requiring an additional upscaling step — previously, high-resolution images required a separate post-processing pass. Generation speed is approximately five times faster than V7, making iteration and exploration significantly more practical for professional workflows.

Text rendering is dramatically improved in V8.1. Users can specify text to appear in an image by placing it in quotes within the prompt, and the model renders it with a high degree of accuracy. This opens up use cases in poster design, mock-ups, and branded imagery that were previously unreliable with AI image generators.

Niji 7, Midjourney's specialized model for anime and illustrative styles, launched on January 9, 2026, with major coherency improvements — characters maintain consistent proportions and style across compositions better than previous versions.

Social features added in 2026 include custom username, bio, and banner on user profiles, a following system, and an Explore feed for browsing the community's generations. Pricing is unchanged from previous tiers: Basic at $10/month, Standard at $30/month, Pro at $60/month, and Mega at $120/month. There is no free tier — all plans require a paid subscription.

Best for designers, illustrators, and creative professionals who need high-quality artistic images at speed, and for anyone who wants accurate text rendered within AI-generated visuals.$dl16$,
  pros = ARRAY[
    'V8.1 delivers native 2K resolution output without a separate upscaling step',
    '~5x faster generation vs V7 — practical for rapid iteration and professional workflows',
    'Dramatically improved text rendering — specify quoted text directly in prompts',
    'Niji 7 model for anime and illustrative styles with improved character coherency',
    'Social features: custom profiles, following system, and Explore feed'
  ],
  cons = ARRAY[
    'No free tier — all plans start at $10/month (Basic)',
    'Primarily Discord and web-based — no native desktop app or local processing',
    'Less controllable than Stable Diffusion for users who need fine-grained parameter control',
    'Mega plan at $120/month is expensive compared to competitors with similar output quality'
  ]
WHERE slug = 'midjourney' AND lang = 'en';

-- ============================================================
-- 17. KLING AI
-- ============================================================
UPDATE tools SET
  name        = 'Kling AI',
  url         = 'https://klingai.com',
  domain      = 'klingai.com',
  badge       = 'freemium',
  best_for    = 'AI video generation, 4K 60fps, multi-shot storyboarding',
  description = $d17$Kling 3.0 (February 2026) generates native 4K at 60fps with a unified multimodal architecture. Supports multi-shot storyboarding, physics-accurate motion, multilingual audio, and Motion Brush. #1 on ELO benchmarks (April 2026).$d17$,
  description_long = $dl17$Kling AI is a video generation platform developed by Kuaishou Technology, focused on producing high-fidelity video from text and image prompts. Since its initial launch, Kling has rapidly iterated on quality and capability, reaching the top of ELO-based video generation benchmarks as of April 2026.

Kling 3.0, launched on February 4, 2026, is the first video generation model to produce native 4K resolution at 60 frames per second without relying on post-processing upscaling. The underlying architecture — called Omni One — is a unified multimodal system that handles video, audio, and image generation within a single model, rather than using separate specialized models stitched together.

Physics-accurate motion is a headline capability: objects, fluids, and characters move according to physically plausible dynamics rather than the blurry or inconsistent motion that plagued earlier AI video models. Multi-shot storyboarding allows users to chain up to six connected shots in a single generation session, maintaining character and scene consistency across cuts — a critical feature for narrative video production.

Motion Brush lets users apply the movement pattern from a reference video clip to a new scene, giving creators directional control over how subjects and backgrounds move without needing to describe motion in text. Character consistency is improved across frames, addressing one of the most common complaints about AI video generators: characters changing appearance between shots.

Multilingual audio generation is built into the model, supporting voiceover and ambient audio in multiple languages as part of a single generation request. Kling AI offers a freemium model with free daily credits for short generations, and paid plans for higher resolution, longer clips, and priority queue access.

Best for video creators, marketers, and studios who need cinematic-quality AI video with physical realism, multi-shot continuity, and integrated audio.$dl17$,
  pros = ARRAY[
    'Native 4K at 60fps — no upscaling required, first model to achieve this natively',
    'Omni One unified architecture handles video, audio, and images in a single model',
    'Physics-accurate motion for realistic dynamics of objects, fluids, and characters',
    'Multi-shot storyboarding: up to 6 connected shots with consistent characters and scenes',
    'Motion Brush: apply reference video movement to any new scene for directional control'
  ],
  cons = ARRAY[
    'Free tier limited to short clips with watermarks — paid plan required for full resolution',
    'Generation times for 4K 60fps clips can be significant even on paid tiers',
    'Less Western-facing support documentation and community compared to Runway or Sora',
    'Multilingual audio quality varies by language — best results in Chinese and English'
  ]
WHERE slug = 'kling-ai' AND lang = 'en';

-- ============================================================
-- 18. SYNTHESIA
-- ============================================================
UPDATE tools SET
  name        = 'Synthesia',
  url         = 'https://synthesia.io',
  domain      = 'synthesia.io',
  badge       = 'paid',
  best_for    = 'AI video with avatars, training videos, corporate communications',
  description = $d18$Synthesia 3.0 introduces full-body avatars with natural gestures and lip sync via the Express-2 diffusion transformer engine. Create Personal Avatars from a single photo. Supports 160+ languages.$d18$,
  description_long = $dl18$Synthesia is an AI video generation platform built around digital human avatars, primarily used for corporate training, internal communications, marketing, and e-learning. It allows users to create professional-looking video content without cameras, studios, or recording sessions.

Synthesia 3.0 introduces the Express-2 engine, built on a diffusion transformer architecture. The most visible change is full-body avatars: previous versions produced talking-head videos where only the face and upper torso were animated. Express-2 generates complete body animations with natural hand gestures, posture shifts, and physically coherent lip sync — bringing the output significantly closer to recorded human video.

Action-based avatars are a new capability in 3.0: instead of simply speaking to the camera, avatars can perform specific prompted actions — gesturing toward a screen, turning to face a graphic, or pointing at an element on a slide. This makes Synthesia videos more dynamic and engaging for instructional content.

Personal Avatar creation has been simplified to require only a single photograph. The system generates a fully animated avatar from the photo within minutes, enabling anyone to create a personalized presenter without a video recording session. This removes a significant barrier that previously required either a recorded video or a trip to a Synthesia partner studio.

Copilot, a writing and production assistant, is planned for 2026 release. It will assist with script writing, connect to a company knowledge base for accurate content, and suggest visual elements and transitions to accompany the spoken content.

Synthesia supports 160+ languages with synchronized lip sync across all of them. It is a paid-only product with pricing based on video minutes per month and the number of team seats. Best for L&D teams, HR departments, and marketers who produce high volumes of explainer or training video content.$dl18$,
  pros = ARRAY[
    'Express-2 engine produces full-body avatars with natural gestures — not just talking heads',
    'Action-based avatars perform specific prompted actions for more dynamic video',
    'Personal Avatar from a single photo — no video recording session required',
    '160+ languages with synchronized lip sync built in',
    'Copilot (2026) will assist with scripts, knowledge base connections, and visual suggestions'
  ],
  cons = ARRAY[
    'Paid-only with no free tier — pricing based on video minutes per month',
    'Avatar realism still identifiable as AI — not suitable for scenarios requiring natural human video',
    'Copilot feature is not yet released as of May 2026',
    'Less flexible than raw video editing tools — best for structured, script-driven content'
  ]
WHERE slug = 'synthesia' AND lang = 'en';

-- ============================================================
-- 19. SUNO
-- ============================================================
UPDATE tools SET
  name        = 'Suno',
  url         = 'https://suno.com',
  domain      = 'suno.com',
  badge       = 'freemium',
  best_for    = 'AI music generation, voice cloning, custom model fine-tuning',
  description = $d19$Suno V5.5 (March 2026) adds voice cloning, Custom Models fine-tuned on your own tracks, and a full DAW with stems separation. 2M paid subscribers, 7M tracks generated per day.$d19$,
  description_long = $dl19$Suno is an AI music generation platform that allows users to create full songs — including lyrics, vocals, melody, and instrumentation — from text prompts. It has grown into one of the most widely used AI music tools, with 2 million paid subscribers and approximately 7 million tracks generated per day as of May 2026.

V5.5, released March 25, 2026, is the most significant update since the platform launched. Voice cloning allows users to upload recordings of their own vocals, which the model then uses to sing generated songs in their actual voice — not a synthetic approximation. This is a major shift for independent musicians who want AI-generated music that sounds like them.

Custom Models allow users to fine-tune Suno on a library of their own owned tracks. Each user can train up to three custom models, requiring a minimum of six tracks they own rights to. The resulting model reflects the musical style, timbre, and compositional tendencies of the training material — giving artists a personalized generative tool rather than a generic one.

My Taste is a lighter personalization system that learns from a user's generation history and listening patterns to bias future generations toward preferred styles without requiring explicit fine-tuning.

Suno Studio is a full digital audio workstation integrated directly into the platform. It includes stems separation — isolating vocals, drums, bass, and other elements from generated or uploaded tracks — and Cover and Extend tools for remixing and extending generated compositions.

A licensing deal with Warner Music Group, announced in November 2025, introduced licensed models trained on Warner's catalog and monthly download caps for the commercial subscription tier. Suno is raising a Series D at a reported $5 billion valuation as of May 2026, up from $2.45 billion in its previous round.$dl19$,
  pros = ARRAY[
    'Voice cloning from uploaded vocals — generated songs sing in your actual voice',
    'Custom Models fine-tuned on your own tracks — up to 3 models, 6+ tracks minimum',
    'Suno Studio DAW with stems separation, Cover, and Extend tools built in',
    'My Taste personalization learns from generation history without manual fine-tuning',
    '2M paid subscribers and 7M tracks/day — large community and proven scale'
  ],
  cons = ARRAY[
    'Warner Music licensing deal introduces monthly download caps on commercial tier',
    'Custom Model training requires minimum 6 owned tracks — not accessible to all users',
    'Commercial use rights vary by plan — check license terms before monetizing output',
    'Voice cloning quality depends on the quality and length of the uploaded vocal sample'
  ]
WHERE slug = 'suno' AND lang = 'en';

-- ============================================================
-- 20. ELEVENLABS
-- ============================================================
UPDATE tools SET
  name        = 'ElevenLabs',
  url         = 'https://elevenlabs.io',
  domain      = 'elevenlabs.io',
  badge       = 'freemium',
  best_for    = 'AI voice synthesis, multilingual TTS, speech-to-text',
  description = $d20$Eleven v3 model supports 70+ languages with 68% fewer errors and Audio Tags for directed emotion. Officially out of Beta (March 2026). Now integrated in Adobe Firefly. SDK v1.0.0 released.$d20$,
  description_long = $dl20$ElevenLabs is an AI voice platform offering text-to-speech, voice cloning, speech-to-text transcription, and audio generation. It is used by podcasters, game developers, audiobook publishers, and enterprise teams who need high-quality synthetic speech at scale.

The flagship Eleven v3 model, which officially left Beta in March 2026, supports over 70 languages and delivers a 68% reduction in pronunciation and fluency errors compared to the previous version. Audio Tags are a new prompting mechanism that allows users to direct emotional performance inline within a script: tags like [whispers], [shouts], [laughs], and [pauses] are placed directly in the text and the model interprets them as performance directions rather than literal words to speak. This gives voice directors precise control over delivery without multiple takes.

Scribe, ElevenLabs' speech-to-text product, received two significant updates. Keyterms bias allows users to specify domain-specific vocabulary — product names, technical terms, proper nouns — that the model should prioritize during transcription, reducing errors on specialized content. The no_verbatim flag produces clean transcripts by removing filler words, false starts, and repetitions automatically.

ElevenLabs is now integrated into Adobe Firefly's model roster, giving Adobe Creative Cloud users direct access to Eleven v3 within Firefly's workflow for video narration, presentation voiceover, and multimedia production.

SDK v1.0.0 was released with major API improvements, consolidating and stabilizing the developer interface after earlier beta versions had frequent breaking changes. Pricing runs from Free (limited characters/month) to Starter at $5/month, Creator at $22/month, Pro at $99/month, Scale at $330/month, and Business at $1,320/month.

Best for developers, content creators, and publishers who need reliable, expressive, multilingual voice synthesis at any scale — from individual projects to high-volume production pipelines.$dl20$,
  pros = ARRAY[
    'Eleven v3: 70+ languages, 68% fewer errors, officially out of Beta (March 2026)',
    'Audio Tags allow inline emotional direction — [whispers], [shouts], [laughs] — for precise performance control',
    'Scribe STT: keyterms bias for specialized vocabulary and no_verbatim flag for clean transcripts',
    'Integrated into Adobe Firefly — accessible directly within Creative Cloud workflows',
    'SDK v1.0.0 stabilizes the API with major improvements for developers'
  ],
  cons = ARRAY[
    'Free tier character limits are low — professional use quickly requires a paid plan',
    'Pro at $99/month and Scale at $330/month are expensive for individual creators',
    'Voice cloning quality still varies for languages outside English and major European languages',
    'Audio Tags require careful placement — incorrect use can produce unnatural results'
  ]
WHERE slug = 'elevenlabs' AND lang = 'en';
