-- ============================================================
-- AItoolFit — Content Update May 17, 2026 (EN only)
-- Phase 1: UPDATE 11 existing tools
-- Phase 2: INSERT 10 news items
-- Phase 3: INSERT 2 new tools (Kiro, PikaStream skipped — not standalone product)
-- After running: translate to es, de, ru, ua, he, fr, pt
-- Run in Supabase SQL Editor
-- ============================================================

-- ============================================================
-- PART 1: UPDATE EXISTING TOOLS
-- ============================================================

-- ============================================================
-- 1. CURSOR
-- ============================================================
UPDATE tools SET
  name        = $$Cursor$$,
  url         = $$https://cursor.com$$,
  domain      = $$cursor.com$$,
  badge       = $$freemium$$,
  best_for    = $$AI IDE, agentic coding, multi-repo, PR review, parallel agents$$,
  description = $$Cursor 3.4 launches agentic dev environments with multi-repo support, Dockerfile provisioning, and parallel agent execution. v3.3 added PR review inside the editor. BugBot moves to usage-based billing from June 2026.$$,
  description_long = $$Cursor is a VS Code-based AI IDE that has evolved from an AI-assisted code editor into a full agentic development environment. It is the most widely adopted AI-native IDE in 2026, with over 500K developers using it to write, refactor, and review code with AI assistance deeply integrated at every step.

Cursor 3.4, released in May 2026, introduced agentic dev environments — a major architectural shift where Cursor agents can now provision and manage their own development environments. This means an agent can spin up a Dockerfile-defined environment, clone and work across multiple repositories simultaneously, and execute tasks in parallel using multiple agents running side by side. Multi-repo support is a significant capability addition for teams working on microservices or monorepo architectures where code changes must span several codebases at once.

Cursor 3.3 added pull request review directly inside the editor. Developers can open a PR, view diffs, and receive AI-generated review comments without leaving Cursor or switching to GitHub. This closes the full development loop — write, test, commit, and review — inside a single tool.

BugBot, Cursor's automated bug detection feature that runs on commits and PRs, transitions to usage-based billing in June 2026. Previously included in plans, it will be billed per scan after the transition, which may affect teams that rely heavily on automated bug scanning. Cursor's core plans remain Hobby (free), Pro ($20/month), and Business ($40/user/month).

Cursor is best for professional developers and engineering teams who want an AI coding assistant that can execute full development cycles autonomously — not just complete lines of code, but write features, manage environments, and review changes end-to-end.$$,
  pros = ARRAY[
    'Agentic dev environments: agents provision Dockerfiles and manage multi-repo workspaces',
    'Parallel agent execution — run multiple coding agents simultaneously on different tasks',
    'PR review inside the editor — full write-to-review loop without switching tools',
    'Multi-repo support for microservices and cross-repo refactors',
    'Hobby plan free; Pro at $20/mo — accessible entry point for individual developers'
  ],
  cons = ARRAY[
    'BugBot moving to usage-based billing June 2026 — cost unpredictable for heavy scan users',
    'Agentic env features in 3.4 are new — complex multi-repo tasks may still require human steering',
    'Resource-intensive: parallel agents increase memory and CPU demands on local machines',
    'Business plan at $40/user/mo adds up quickly for larger engineering teams'
  ]
WHERE slug = $$cursor$$ AND lang = $$en$$;

-- ============================================================
-- 2. NOTION (notion-ai)
-- ============================================================
UPDATE tools SET
  name        = $$Notion AI$$,
  url         = $$https://notion.so$$,
  domain      = $$notion.so$$,
  badge       = $$freemium$$,
  best_for    = $$Notes, knowledge base, docs, developer platform, AI agents$$,
  description = $$Notion Developer Platform 3.5 (May 13, 2026): Workers runtime for custom serverless logic, Database Sync with two-way external DB connections, Bidirectional Webhooks, and Plan Mode for autonomous AI agents inside Notion workflows.$$,
  description_long = $$Notion AI is the AI layer built into Notion, the all-in-one workspace platform used by 30M+ teams for notes, wikis, databases, and project management. Notion AI handles writing assistance, summarization, translation, and Q&A within the workspace, while the underlying Notion platform serves as the structured data layer that AI operates on.

Notion Developer Platform 3.5, announced May 13, 2026, is the most significant developer release in Notion's history. Workers runtime allows developers to write and deploy custom serverless JavaScript functions that run inside Notion — enabling custom automations, data transformations, and integrations without external hosting. This moves Notion from a passive workspace into a programmable platform where logic lives alongside content.

Database Sync adds two-way, bidirectional connections between Notion databases and external data sources including SQL databases and third-party APIs. Unlike Notion's previous one-way sync, changes made in Notion are now reflected in the external system and vice versa — enabling Notion to serve as a live operational interface rather than a static copy of external data.

Bidirectional Webhooks extend the event model in both directions: Notion can receive incoming webhooks from external services to trigger workflows, and send outgoing webhooks when Notion content changes. This enables Notion to act as a central automation hub that reacts to and drives events across a connected tool stack.

Plan Mode is a new AI agent capability inside Notion. Agents operating in Plan Mode can reason about multi-step tasks, create a plan, execute each step, and adapt when circumstances change — behaving autonomously rather than responding to single prompts. This positions Notion as a platform where AI agents can operate on structured knowledge bases, not just on unstructured text.

Notion AI is available as an add-on at $8 per user per month on top of standard Notion plans. Notion plans start at free (personal) and $8/user/month (Plus). Notion is best for teams that want their knowledge base, databases, and AI-driven workflows in a single platform.$$,
  pros = ARRAY[
    'Workers runtime: serverless JS functions run inside Notion — no external hosting needed',
    'Database Sync with two-way external DB connections — Notion becomes a live operational interface',
    'Bidirectional Webhooks: Notion can receive and send events across a connected tool stack',
    'Plan Mode for AI agents: multi-step autonomous task execution inside Notion workflows',
    'All-in-one: knowledge base + databases + AI + automation in a single workspace'
  ],
  cons = ARRAY[
    'Notion AI is an $8/user/mo add-on on top of base Notion subscription costs',
    'Workers runtime and Database Sync are developer features — non-technical users won''t benefit',
    'AI quality not as strong as standalone Claude or GPT-4o for complex reasoning',
    'Platform complexity grows significantly with Developer Platform 3.5 — steeper learning curve'
  ]
WHERE slug = $$notion-ai$$ AND lang = $$en$$;

-- ============================================================
-- 3. HEYGEN
-- ============================================================
UPDATE tools SET
  name        = $$HeyGen$$,
  url         = $$https://heygen.com$$,
  domain      = $$heygen.com$$,
  badge       = $$paid$$,
  best_for    = $$AI avatars, studio-quality video, video dubbing, credit-based plans$$,
  description = $$HeyGen Avatar V creates studio-quality avatars from 15 seconds of footage. Legacy unlimited plans removed May 15, 2026 — all plans now credit-based. Seedance 2.0 integrated for AI video backgrounds.$$,
  description_long = $$HeyGen is an AI video platform specializing in photorealistic digital human avatars, video dubbing across 40+ languages, and AI-powered video creation for marketing, training, and corporate communications. It is used by 2M+ creators and enterprises to produce localized video content at scale without camera crews or studios.

Avatar V, HeyGen's latest generation avatar model, achieves studio-quality output from just 15 seconds of source footage. Previous avatar generations required 2-5 minutes of recorded video to build a convincing digital replica. Avatar V dramatically lowers the production barrier: a short smartphone recording is now sufficient for a broadcast-quality avatar that matches lip movements, micro-expressions, and natural head motion. This makes professional AI avatar production accessible without studio setups or professional lighting rigs.

HeyGen restructured its pricing model on May 15, 2026. Legacy unlimited plans — which provided unlimited avatar video generation at a flat monthly rate — have been discontinued and removed from new signups. All plans now operate on a credit-based model where each video minute consumes credits, giving HeyGen more predictable revenue and giving users more flexibility on lower-volume months. Existing unlimited plan holders retain access through their current billing period. New plans are available at multiple credit tier levels to match different production volumes.

Seedance 2.0, the AI video generation model, has been integrated into HeyGen. It is available on all paid plans and enables AI-generated video backgrounds and scene elements that can be combined with avatar overlays — reducing the need for physical green screens or stock footage licenses for background content.

HeyGen is best for marketing teams, L&D departments, and content agencies that need to produce high-volume localized video content with consistent brand presenters. The shift to credit-based pricing makes it better suited for teams with variable production schedules than those needing unlimited flat-rate output.$$,
  pros = ARRAY[
    'Avatar V: studio-quality avatars from 15 seconds of footage — lowest production barrier available',
    'Video dubbing preserves original lip movements across 40+ languages',
    'Seedance 2.0 integration: AI-generated video backgrounds on all paid plans',
    'Credit-based plans offer flexibility for variable monthly production volumes',
    '2M+ users — mature platform with proven reliability for enterprise video production'
  ],
  cons = ARRAY[
    'Legacy unlimited plans discontinued May 15, 2026 — high-volume users face cost increases',
    'All plans now paid — no meaningful free tier for production use',
    'Credit-based pricing can be hard to predict for teams with spiky workloads',
    'Avatars still show uncanny valley effects in close-up, high-detail shots'
  ]
WHERE slug = $$heygen$$ AND lang = $$en$$;

-- ============================================================
-- 4. FIGMA AI (figma-ai)
-- ============================================================
UPDATE tools SET
  name        = $$Figma AI$$,
  url         = $$https://figma.com$$,
  domain      = $$figma.com$$,
  badge       = $$freemium$$,
  best_for    = $$UI/UX design, AI agents on canvas, image tools, voice input, text on path$$,
  description = $$Figma MCP server lets AI agents design directly on the Figma canvas. Built-in AI Image Tools: Vectorize, Remove Background, Erase, Expand. Voice input and text on path now available.$$,
  description_long = $$Figma AI is the AI capability layer built into Figma, the industry-standard design tool used by 5M+ designers and product teams. Figma AI handles layout generation, component suggestions, auto-naming, and design assistance, while the underlying Figma platform provides the collaborative canvas, component system, and design-to-code handoff tools that product teams depend on.

The Figma MCP (Model Context Protocol) server is the most significant AI addition in 2026. It exposes Figma's canvas to external AI agents: tools like Cursor, Claude, or custom agents can now directly create, edit, and manipulate Figma designs through the MCP interface. This means a developer can instruct an AI agent in their IDE to generate a UI component, and the agent will create it directly in Figma without any copy-paste or manual re-creation. AI agents can design on the Figma canvas as a first-class capability, not just an add-on.

AI Image Tools are now built directly into Figma as native features, removing the need for Photoshop or third-party image editors for common tasks. Vectorize converts raster images into editable vector shapes. Remove Background isolates subjects from images with one click. Erase removes objects or regions from images non-destructively. Expand extends the boundaries of an image using AI inpainting to fill new areas. All four tools work inside the Figma canvas on embedded images without exporting to an external editor.

Voice input allows designers to issue natural-language commands to Figma AI using their microphone — describing what they want to create or modify rather than navigating menus. Text on path, a long-requested typographic feature, is now available: text can be set to follow any curved path or shape outline, enabling logotype treatments and circular text layouts that previously required workarounds.

Figma plans start at free (3 projects), $12/editor/month (Professional), and $45/editor/month (Organization). AI features are included in paid plans. Figma AI is best for product designers and design-engineering teams that want AI directly in their workflow and the ability to connect AI agents to their design system.$$,
  pros = ARRAY[
    'MCP server: AI agents (Cursor, Claude, custom) can design directly on the Figma canvas',
    'Built-in AI Image Tools: Vectorize, Remove Background, Erase, Expand — no Photoshop needed',
    'Voice input for natural-language design commands inside the canvas',
    'Text on path for curved typographic layouts — no workarounds required',
    'Industry standard: 5M+ designers; AI features integrate into existing design system workflows'
  ],
  cons = ARRAY[
    'Full AI features require paid plans from $12/editor/month',
    'MCP server integration requires technical setup — not plug-and-play for non-developers',
    'AI Image Tools quality competitive but not always on par with dedicated Photoshop AI',
    'Organization plan at $45/editor/mo is expensive for large design teams'
  ]
WHERE slug = $$figma-ai$$ AND lang = $$en$$;

-- ============================================================
-- 5. LUMA AI
-- ============================================================
UPDATE tools SET
  name        = $$Luma AI$$,
  url         = $$https://lumalabs.ai$$,
  domain      = $$lumalabs.ai$$,
  badge       = $$freemium$$,
  best_for    = $$AI video generation, native 1080p, character consistency, real-time rendering$$,
  description = $$Luma Ray3.14: native 1080p output, 4x faster generation, 3x lower cost per second. Character Seeds for consistent characters across clips. Modify with Instructions for text-guided post-generation edits.$$,
  description_long = $$Luma AI is a San Francisco-based AI lab known for Dream Machine — its text-to-video and image-to-video generation model — and for pioneering NeRF (neural radiance field) 3D capture technology. The Dream Machine interface on lumalabs.ai serves millions of creators for AI video generation, while the Luma API provides enterprise and developer access.

Ray3.14, launched May 2026, is the most technically significant Luma model release since the original Ray2. Native 1080p output means the model generates video at full HD resolution without upscaling — the output is natively sharp rather than interpolated from a lower resolution. Generation speed is 4x faster than Ray2, bringing Luma from one of the slower premium models to competitive generation times. Cost per generated video second is reduced by 3x, making Luma significantly more accessible for developers building video applications on the API.

Character Seeds is a new consistency feature that assigns a persistent identity to a character across multiple video generations. Once a seed is created from a reference image or generation, subsequent clips using the same seed will maintain consistent appearance — same face, hair, body proportions, and style — even across different prompts, scenes, and camera angles. This solves one of the core limitations of AI video generation for narrative content, where character consistency across shots has historically been unreliable.

Modify with Instructions allows users to take an existing generated video and apply text-guided modifications without regenerating from scratch. Instead of re-prompting entirely, users can describe what they want to change — "make the background sunset instead of daytime" or "have the character turn left" — and the model applies the edit while preserving the rest of the clip. This reduces the iterative generation cycles needed to reach a final result.

Luma offers 30 free generations per month with no watermark. Paid plans start at $29.99/month for higher resolution, longer clips, and priority queue access. Luma AI is best for creators and developers who need high-quality, consistent AI video at scale, especially for narrative content requiring repeatable character appearances.$$,
  pros = ARRAY[
    'Ray3.14: native 1080p output — no upscaling artifacts, genuinely sharp full-HD video',
    '4x faster generation than Ray2 — competitive speed alongside top-tier quality',
    '3x lower cost per second — makes API-based video apps significantly more economical',
    'Character Seeds: persistent character identity across multiple clips for narrative consistency',
    'Modify with Instructions: text-guided post-generation edits without full regeneration'
  ],
  cons = ARRAY[
    'Free tier limited to 30 generations/month — insufficient for production workloads',
    'Character Seeds require a reference image or prior generation — not zero-shot',
    'Weaker on highly stylized or animated content vs Kling or Pika for certain aesthetics',
    'Paid plans start at $29.99/mo — cost scales with generation volume on API'
  ]
WHERE slug = $$luma-ai$$ AND lang = $$en$$;

-- ============================================================
-- 6. PIKA
-- ============================================================
UPDATE tools SET
  name        = $$Pika$$,
  url         = $$https://pika.art$$,
  domain      = $$pika.art$$,
  badge       = $$freemium$$,
  best_for    = $$Short video clips, flicker-free output, character consistency, AI social video$$,
  description = $$Pika 2.5: flicker-free output, stable characters across scenes. PikaStream 1.0: real-time AI video chat with live agents. Pika is expanding into an AI social video app platform.$$,
  description_long = $$Pika is an AI video generation platform known for its approachable interface, creative effects (Pikaffects), and broad accessibility through a generous free tier. Since its initial launch, Pika has grown to 2M+ users and is used primarily for short-form social video, creative experiments, and entertainment content.

Pika 2.5, launched May 2026, addresses the two most common quality complaints with previous Pika versions. Flicker-free output eliminates temporal inconsistency in generated video — the frame-to-frame flickering artifacts that make AI-generated video look unnatural and limit its use in professional contexts. Stable characters across scenes means characters now maintain consistent appearance, proportions, and style throughout a clip and across sequential generations, making Pika viable for multi-shot narrative sequences.

PikaStream 1.0 is a fundamentally new capability that moves Pika beyond pre-generated video. PikaStream enables real-time AI video chat: users can have live video conversations with AI agents that appear as generated video characters, rendered in real time. The AI agent maintains a consistent visual persona and responds to conversation dynamically. This positions Pika in the emerging real-time AI interaction space alongside text and voice AI agents but with a video-native interface.

The AI social video app direction represents Pika's platform ambition. Rather than remaining purely a generation tool, Pika is building toward a platform where users create, share, and interact with AI-generated video content socially — combining content creation tools with a social feed and real-time AI interaction through PikaStream. This differentiates Pika's long-term roadmap from pure generation competitors like Runway or Kling.

Pika offers 80 free monthly credits for new users on the free tier. Paid plans provide higher resolution, longer clips, and priority generation. Pika is best for social content creators, entertainers, and creative experimenters who want accessible AI video with real-time interaction capabilities.$$,
  pros = ARRAY[
    'Pika 2.5: flicker-free output — professional-quality temporal consistency in generated video',
    'Stable characters across scenes: consistent appearance across multi-shot sequences',
    'PikaStream 1.0: real-time AI video chat with live generated character agents',
    'AI social video app direction: creation + sharing + real-time AI in one platform',
    '80 free monthly credits — one of the most generous free tiers in AI video'
  ],
  cons = ARRAY[
    'Maximum clip length still limited compared to Kling AI (which supports up to 2 minutes)',
    'PikaStream 1.0 is new — reliability and latency on complex real-time video rendering varies',
    'Social app direction is ambitious but unproven — execution risk on platform build-out',
    'Character consistency improvements in 2.5 still not on par with Kling v3.5 for complex scenes'
  ]
WHERE slug = $$pika$$ AND lang = $$en$$;

-- ============================================================
-- 7. KLING AI
-- ============================================================
UPDATE tools SET
  name        = $$Kling AI$$,
  url         = $$https://klingai.com$$,
  domain      = $$klingai.com$$,
  badge       = $$freemium$$,
  best_for    = $$Long AI video, 1080p/60fps, physics accuracy, enterprise video production$$,
  description = $$Kling v3.5: 1080p/60fps output, Pro-tier videos up to 2 minutes, improved motion physics. Kuaishou evaluating spin-off at ~$20B valuation as Kling AI becomes a standalone business.$$,
  description_long = $$Kling AI is the AI video generation platform from Kuaishou, the Chinese short-video giant. It has grown to over 60M users and is recognized as the leading AI video generation platform for long-form, physics-accurate output in 2026. Kling AI is the benchmark for realistic motion, extended clip length, and overall generation quality across the AI video category.

Kling v3.5, released May 2026, delivers 1080p/60fps native output — the combination of full HD resolution at 60 frames per second that is required for smooth, professional-quality video that can be used in broadcast, advertising, and high-end social content without additional processing. On the Pro tier, video length now extends up to 2 minutes per generation. This is the longest single-generation clip length available from any major AI video platform, enabling the creation of short film segments, product demonstrations, and extended narrative scenes in a single pass.

Motion physics accuracy is the defining technical strength of Kling v3.5. Fluid dynamics, cloth simulation, secondary motion (hair, loose clothing, foliage), and object interaction under gravity all render with greater realism than previous versions. This separates Kling from competitors on content categories where physical accuracy matters: liquid pours, explosions, athletic motion, and natural environment elements.

Kuaishou is evaluating a spin-off of Kling AI as an independent company, with reports placing the potential valuation at approximately $20 billion. This would be one of the largest AI video company valuations globally and reflects the commercial momentum Kling has built as the dominant platform for high-quality AI video generation. A spin-off would likely enable Kling to raise capital independently and operate with more strategic flexibility outside Kuaishou's social media core business.

Kling AI offers a free tier with 166 monthly credits. Paid plans include Standard and Pro tiers with higher generation limits, longer clips, and priority processing. Kling AI is best for professional video creators, agencies, and enterprises that need the highest-quality AI video output with realistic physics and extended clip durations.$$,
  pros = ARRAY[
    'Kling v3.5: native 1080p/60fps — broadcast-ready quality without post-processing',
    'Pro tier: up to 2 minutes per generation — longest single clip of any major AI video platform',
    'Best motion physics accuracy: fluid dynamics, cloth simulation, gravity-based object interaction',
    '60M+ users — proven reliability at scale for professional and enterprise workloads',
    'Free tier includes 166 monthly credits — meaningful amount for regular testing'
  ],
  cons = ARRAY[
    'Pro features require paid subscription — free tier generation limits fill quickly at 1080p',
    'Chinese infrastructure (Kuaishou) — data handling considerations for enterprise compliance',
    'Potential spin-off at $20B valuation introduces uncertainty about pricing and ownership',
    'Occasional prompt adherence issues on complex multi-character, multi-element scenes'
  ]
WHERE slug = $$kling-ai$$ AND lang = $$en$$;

-- ============================================================
-- 8. MIDJOURNEY
-- ============================================================
UPDATE tools SET
  name        = $$Midjourney$$,
  url         = $$https://midjourney.com$$,
  domain      = $$midjourney.com$$,
  badge       = $$paid$$,
  best_for    = $$AI art, photorealism, 2K rendering, public profiles, social discovery$$,
  description = $$Midjourney V8.1: native 2K render, 3-4x faster, Raw mode for less AI interpretation. Public profiles with subscriptions and Midjourney TV launched. V8.2 announced.$$,
  description_long = $$Midjourney is the leading AI image generation platform, used by over 20M creators, designers, and artists globally. It has set the quality benchmark for photorealistic and artistic AI image generation since its launch, and remains the industry standard for professional creative use with a consistently advancing model series.

Midjourney V8.1, released April-May 2026, introduces native 2K rendering — images are generated at 2048-pixel resolution natively, not upscaled from a lower base. Generation speed is 3 to 4 times faster than V7, making high-quality image creation significantly more practical for iterative creative workflows where dozens of variations are generated before a final selection. Raw mode is a new prompt interpretation setting that reduces the model's creative embellishment: with Raw mode enabled, Midjourney interprets prompts more literally and with less stylistic injection, giving users who want precise control more predictable output from detailed technical prompts.

Public profiles with subscriptions is a new social feature that allows Midjourney users to make their generated images publicly accessible on a profile page. Users can follow other creators and subscribe to their profiles to see new creations in a social feed. This moves Midjourney from a pure generation utility toward a creative social platform where discovery, inspiration, and community engagement happen alongside generation.

Midjourney TV is a new feature that streams a real-time feed of newly generated images from across the platform on a television-style continuous broadcast. It serves as a discovery mechanism showing what the Midjourney community is creating in real time, providing both inspiration and a sense of the platform's creative breadth.

Midjourney V8.2 has been announced as the next release, indicating that the V8 generation will continue iterating beyond V8.1 with further quality and speed improvements.

Midjourney plans start at $10/month (Basic), $30/month (Standard), $60/month (Pro), and $120/month (Mega). There is no free tier. Midjourney is best for professional designers, artists, and creative agencies who need the highest-quality AI image generation with advanced prompt control and a platform built around creative community.$$,
  pros = ARRAY[
    'V8.1: native 2K rendering — genuinely sharp output without upscaling artifacts',
    '3-4x faster generation vs V7 — practical for iterative creative workflows at scale',
    'Raw mode: literal prompt interpretation for precise technical control',
    'Public profiles and social feed: creative discovery and community built into the platform',
    'Midjourney TV: real-time stream of community generations for inspiration and discovery'
  ],
  cons = ARRAY[
    'No free tier — starts at $10/month with no trial generation option',
    'Web interface still Discord-adjacent in UX compared to fully independent platforms',
    'Mega plan at $120/month required for high-volume commercial production workloads',
    'V8.2 announced but not yet released — users on V8.1 waiting on next quality improvements'
  ]
WHERE slug = $$midjourney$$ AND lang = $$en$$;

-- ============================================================
-- 9. ELEVENLABS
-- ============================================================
UPDATE tools SET
  name        = $$ElevenLabs$$,
  url         = $$https://elevenlabs.io$$,
  domain      = $$elevenlabs.io$$,
  badge       = $$freemium$$,
  best_for    = $$Voice cloning, TTS, voice agents, real-time transcription, batch calling$$,
  description = $$ElevenLabs SDK v2.46: Conversation Tags for analytics, Scribe Realtime transcription with keyterms, GPT-5.5 and Qwen 3 in Voice Agents, Batch Calling for automated outbound campaigns.$$,
  description_long = $$ElevenLabs is the leading AI voice platform, specializing in text-to-speech, voice cloning, real-time transcription, and voice agent infrastructure. It serves 5M+ users including content creators, developers, publishers, and enterprises building voice-driven applications and automations. ElevenLabs is valued at $11B and is the benchmark for natural-sounding AI voice in 2026.

SDK v2.46, released May 2026, is a developer-facing update that expands the platform's voice agent and transcription capabilities. Conversation Tags allow developers to label and categorize voice agent conversations with structured metadata at the SDK level — enabling analytics, segmentation, and quality monitoring across large volumes of agent interactions without building separate logging infrastructure.

Scribe Realtime, ElevenLabs' real-time transcription service, gains keyterms support in v2.46. Keyterms are domain-specific words, names, or phrases that the transcription model should recognize with higher accuracy — useful for medical, legal, or technical contexts where standard transcription models frequently mis-transcribe specialized vocabulary. Developers pass a keyterms list at session initialization, and Scribe Realtime prioritizes correct recognition of those terms throughout the session.

GPT-5.5 and Qwen 3 are now available as language model options for Voice Agents — ElevenLabs' platform for building conversational voice agents. Previously limited to Claude and GPT-4 class models, the addition of GPT-5.5 brings OpenAI's most capable current model into voice agent workflows. Qwen 3, the open-source model from Alibaba, provides a cost-effective alternative for teams building high-volume or budget-constrained voice agent deployments.

Batch Calling is a new capability for automated outbound voice campaigns. Developers can define a call list, a voice agent configuration, and a schedule, and ElevenLabs will execute outbound voice calls to the entire list automatically — with each call handled by the configured AI voice agent. This enables automated appointment reminders, survey collection, sales outreach, and notification campaigns at scale without human agents.

ElevenLabs offers a free tier (10,000 characters/month). Paid plans start at $5/month (Starter) through $99/month (Scale) and custom enterprise pricing. Developers pay separately for API usage beyond plan limits. ElevenLabs is best for developers and companies building voice-native applications, automated voice agents, and high-quality TTS for content production.$$,
  pros = ARRAY[
    'SDK v2.46: Conversation Tags for analytics and quality monitoring across agent interactions',
    'Scribe Realtime with keyterms: domain-specific transcription accuracy for technical vocabulary',
    'GPT-5.5 and Qwen 3 in Voice Agents — broader model choice for different cost-quality tradeoffs',
    'Batch Calling: automated outbound voice campaigns with AI agents at scale',
    'Most realistic AI voice cloning available — 29 languages with natural prosody and inflection'
  ],
  cons = ARRAY[
    'Free tier limited to 10,000 characters/month — not sufficient for production use',
    'Batch Calling and advanced agent features require Scale plan or enterprise agreement',
    'Voice cloning of real people without consent raises significant ethical and legal concerns',
    'API cost scales quickly with high character volumes — enterprise pricing needed for large deployments'
  ]
WHERE slug = $$elevenlabs$$ AND lang = $$en$$;

-- ============================================================
-- 10. ADOBE FIREFLY
-- ============================================================
UPDATE tools SET
  name        = $$Adobe Firefly$$,
  url         = $$https://firefly.adobe.com$$,
  domain      = $$firefly.adobe.com$$,
  badge       = $$freemium$$,
  best_for    = $$AI creative agent, Creative Cloud orchestration, image generation, sound generation$$,
  description = $$Adobe Creative Agent orchestrates AI workflows across Photoshop, Premiere, Lightroom, and Illustrator from a single prompt. Custom Models beta for brand-specific fine-tuned generation. Sound generation added to Firefly.$$,
  description_long = $$Adobe Firefly is Adobe's generative AI platform, built into Creative Cloud and trained exclusively on licensed and owned content for commercial safety. It is used by 5M+ creative professionals for AI image generation, Generative Fill in Photoshop, vector recoloring in Illustrator, and scene composition across the Adobe application suite.

Adobe Creative Agent, launched April 2026, is the most significant advancement in Firefly's capabilities. Rather than requiring users to navigate individual AI features in separate Creative Cloud applications, Creative Agent accepts a single natural language prompt and orchestrates a workflow across multiple CC applications autonomously. A single instruction like "create a product campaign with a summer theme" can trigger image generation in Firefly, layout composition in Photoshop, color grading in Lightroom, and motion graphics in Premiere — with Creative Agent managing the handoffs between applications and assembling the output. This is a shift from AI features inside applications to an AI agent that operates across the entire Creative Cloud application suite.

Custom Models, in beta, allows organizations to fine-tune Firefly image generation models on their own brand assets, style guides, and visual identity. Once trained on proprietary brand images, the custom model generates new content that automatically aligns with brand guidelines without requiring detailed style prompting for each generation. This is directly valuable for marketing teams and agencies managing consistent visual identity across large content volumes.

Sound generation is a new Firefly capability that extends the platform beyond visual content. Users can generate sound effects, ambient audio, and short music segments from text descriptions. This adds a native audio creation layer to Firefly that reduces dependence on stock audio libraries for video and motion graphics workflows.

Adobe Creative Cloud plans include Firefly credits: Creative Cloud All Apps at $54.99/month includes 1000 Firefly credits/month. Firefly standalone plans start at $4.99/month. Firefly is best for creative professionals and agencies already in the Adobe ecosystem who want AI-orchestrated workflows across all Creative Cloud applications with guaranteed commercial content safety.$$,
  pros = ARRAY[
    'Creative Agent: single prompt orchestrates AI workflows across Photoshop, Premiere, Lightroom, Illustrator',
    'Custom Models beta: fine-tune on brand assets for on-brand generation without style prompting',
    'Sound generation: text-to-audio for sound effects, ambient audio, and short music in Firefly',
    'Trained exclusively on licensed content — commercially safe with full Adobe indemnification',
    'Deepest AI integration of any creative suite — Generative Fill, vector recolor, scene composition'
  ],
  cons = ARRAY[
    'Creative Agent is new — complex multi-application orchestration may require manual cleanup',
    'Custom Models in beta — not yet generally available; waitlist and enterprise requirements',
    'Full feature access requires Adobe Creative Cloud All Apps at $54.99/mo — significant cost',
    'Less creative range than Midjourney or Flux for artistic, non-commercial image styles'
  ]
WHERE slug = $$adobe-firefly$$ AND lang = $$en$$;

-- ============================================================
-- 11. PERPLEXITY
-- ============================================================
UPDATE tools SET
  name        = $$Perplexity$$,
  url         = $$https://perplexity.ai$$,
  domain      = $$perplexity.ai$$,
  badge       = $$freemium$$,
  best_for    = $$AI search, deep research, agentic computer control, finance and study tools$$,
  description = $$Perplexity Deep Research now runs on Claude Opus 4.6. Personal Computer for Mac adds agentic control for all users. Teams integration, ETF finance tab, and iOS quiz/flashcard study tools launched.$$,
  description_long = $$Perplexity is an AI-powered search and research platform that answers queries with cited sources rather than a list of links. It is used for real-time research, fact-checking, competitive analysis, and academic study by individuals, researchers, and business teams. Perplexity's model stack is multi-provider, drawing on models from Anthropic, OpenAI, Mistral, and others depending on query type and user selection.

Deep Research, Perplexity's long-form research capability, has been upgraded to run on Claude Opus 4.6, reflecting improved benchmark performance for complex multi-step research tasks. Deep Research conducts autonomous web searches, synthesizes findings across multiple sources, and produces structured reports with inline citations — suitable for tasks that would otherwise require hours of manual research. The Claude Opus 4.6 upgrade improves the depth of analysis and the quality of synthesis on complex technical and business research topics.

Personal Computer for Mac is a native Mac application that extends Perplexity beyond search into agentic computer control. It can interact with on-screen content, automate desktop tasks, and respond to natural language instructions that require operating the computer itself. Importantly, the feature is available to all users — not restricted to Pro subscribers — making it one of the most broadly available agentic computer-control products in the market.

Microsoft Teams integration brings Perplexity into enterprise collaboration environments. Users can access Perplexity search and the computer agent capability directly within the Teams application, enabling research and automation within enterprise communication workflows without leaving the Teams interface.

Finance tools include an ETF holdings tab that displays portfolio composition data directly in Perplexity search results, useful for investors and analysts researching fund exposure. Study tools on the iOS app generate quizzes and flashcards from any content — articles, documents, or pages — for spaced-repetition learning.

Perplexity is free for standard use. The Pro plan is $20 per month and adds Deep Research on Claude Opus 4.6, model selection, and higher usage limits. Perplexity is best for researchers, students, finance professionals, and teams who need cited, real-time answers with agentic computer capabilities.$$,
  pros = ARRAY[
    'Deep Research on Claude Opus 4.6 — cited multi-step research reports for complex queries',
    'Personal Computer for Mac: agentic desktop control available to all users, not Pro-only',
    'Microsoft Teams integration — research and automation inside enterprise collaboration workflows',
    'ETF holdings tab and iOS quiz/flashcard generation — practical finance and study integrations',
    'Multi-provider model stack: Claude, GPT, Kimi K2.5, Mistral — widest model selection in search'
  ],
  cons = ARRAY[
    'Deep Research and advanced model selection require Pro plan at $20/mo',
    'Agentic computer control on Mac is relatively new — reliability on complex tasks varies',
    'Perplexity search can surface inaccurate citations — source verification remains necessary',
    'Finance data (ETF holdings) is informational and may lag real-time market data sources'
  ]
WHERE slug = $$perplexity$$ AND lang = $$en$$;

-- ============================================================
-- PART 2: INSERT NEW TOOLS
-- ============================================================

-- ============================================================
-- NEW TOOL: KIRO (Amazon)
-- ============================================================
INSERT INTO tools (slug, lang, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published)
VALUES (
  'kiro',
  'en',
  'Kiro',
  'https://kiro.dev',
  'kiro.dev',
  'code',
  'freemium',
  '50K+',
  'Spec-driven agentic IDE, autonomous implementation, Amazon AWS',
  'Amazon''s spec-driven agentic IDE. Write natural-language Specs, Kiro autonomously builds the full implementation. Replaced Amazon Q Developer IDE plugin from May 15, 2026.',
  $$Kiro is Amazon's spec-driven agentic integrated development environment, announced May 2026 as the official replacement for the Amazon Q Developer IDE plugin. Amazon blocked new Q Developer IDE plugin signups from May 15, 2026, with full plugin support ending April 30, 2027. Kiro represents Amazon's strategic repositioning in developer AI tooling — moving from an AI assistant that augments developer workflows into an agent that executes software development from high-level specifications.

The core concept in Kiro is Specs. A Spec is a natural-language document that describes requirements, architecture decisions, and implementation constraints for a feature or system component. Rather than writing code directly, developers write a Spec describing what they want to build. Kiro's agent reads the Spec and autonomously generates the full implementation — creating files, writing functions, handling edge cases, and wiring components together. The Spec serves as a persistent, version-controllable artifact that explains what the code does and why — bridging the gap between business requirements and implementation.

Hooks are Kiro's event-driven automation layer. Hooks fire on file system events such as file save or git commit, triggering automated agent actions. On file save, a Hook might run tests against the changed file, lint for style issues, or update related documentation. On commit, a Hook might run a full security scan, update a changelog, or verify that the implementation still aligns with the relevant Spec. Hooks allow teams to embed quality gates and automation directly into the development lifecycle without external CI/CD configuration.

Kiro is built as a VS Code-compatible IDE, meaning existing VS Code extensions, keybindings, and workspace configurations are compatible without migration. The agent layer runs on Amazon Bedrock, giving it access to Claude, Amazon Nova, and other foundation models available through Bedrock. Deep AWS integration enables Kiro to directly provision infrastructure, query AWS service configurations, and deploy to AWS environments within the development workflow.

Kiro is available in freemium form. A free tier supports individual developers with limited agent usage. Paid tiers are available for teams and enterprises. Kiro is best for software engineers and teams working in AWS-centric environments who want an agent that can execute full implementation from structured requirements with built-in quality automation.$$,
  ARRAY[
    'Specs: write natural-language requirements; Kiro autonomously builds the full implementation',
    'Hooks: event-driven automation on file save and git commit — embedded quality gates',
    'Built on Amazon Bedrock with access to Claude, Amazon Nova, and other foundation models',
    'VS Code-compatible — existing extensions, keybindings, and workspace configs work without migration',
    'Deep AWS integration: provision infrastructure and deploy to AWS directly from the IDE'
  ],
  ARRAY[
    'Spec-driven workflow requires upfront requirement writing — adds overhead for small quick tasks',
    'New product replacing Amazon Q Developer — ecosystem maturity and community smaller than Cursor',
    'Agent quality and reliability on complex Specs still being proven in production environments',
    'Best suited for AWS-centric workloads — less value for teams on other cloud providers'
  ],
  true
);

-- ============================================================
-- NEW TOOL: GROK (if not present — already exists in catalog)
-- NOTE: grok slug already exists (seen in tools-insert.sql line 9)
-- Updating instead:
-- ============================================================
UPDATE tools SET
  name        = $$Grok$$,
  url         = $$https://grok.com$$,
  domain      = $$grok.com$$,
  badge       = $$freemium$$,
  best_for    = $$AI assistant, real-time X/Twitter data, code generation, TTS/STT API, Grok Build$$,
  description = $$Grok 4.3 beta with 1T-parameter scale and real-time X/Twitter access. Grok Build beta: agentic code generation. TTS and STT APIs now available. SuperGrok Heavy at $300/mo for maximum capability.$$,
  description_long = $$Grok is xAI's AI assistant platform, offering a flagship large language model with unique real-time integration with X (Twitter) data and a growing set of developer and enterprise capabilities. It is available at grok.com and through the X platform for X Premium subscribers.

Grok 4.3 beta operates at a 1 trillion parameter scale, making it one of the largest models available to consumers. The defining characteristic that sets Grok apart from all other major AI assistants is its live access to X (Twitter) data — Grok can query and synthesize real-time posts, trending topics, and social sentiment from across the X platform. No other major AI assistant has equivalent live social media integration built in. This makes Grok uniquely valuable for understanding breaking news, viral trends, market sentiment from social media, and real-time public opinion.

Grok Build, currently in beta, is xAI's agentic code generation product. Grok Build takes a natural language description of an application or feature and generates a full implementation — similar in concept to Cursor's agentic features or Kiro's Specs, but running on the Grok model stack. Grok Build is positioned for rapid prototyping and full application scaffolding, and is integrated into the grok.com interface rather than requiring a separate IDE.

TTS (text-to-speech) and STT (speech-to-text) APIs are now available through xAI's developer API, enabling developers to build voice-enabled applications on the Grok infrastructure. This expands xAI's developer platform beyond pure language model access into multimodal API services. The TTS API produces natural-sounding voice output; the STT API enables real-time or batch audio transcription.

Grok is free for basic access on X with an X account. SuperGrok subscription plans offer expanded capabilities: SuperGrok Heavy at $300/month provides the highest usage limits, 428K token context window, and access to the full 1T-parameter model. Grok is best for users who need real-time social data intelligence, rapid prototyping through Grok Build, and a less content-restricted AI environment than Claude or ChatGPT.$$,
  pros = ARRAY[
    'Unique real-time X/Twitter data integration — unmatched for trending topics and social sentiment',
    'Grok Build beta: agentic code generation from natural language for rapid prototyping',
    'TTS and STT APIs: voice-enabled application building on the Grok model stack',
    '1 trillion parameter scale — one of the largest models available to consumers',
    'Less restrictive content policy than OpenAI or Anthropic models'
  ],
  cons = ARRAY[
    'SuperGrok Heavy at $300/mo — most expensive consumer AI subscription available',
    'Grok Build is in beta — reliability and output quality on complex applications still maturing',
    'Quality inconsistent vs Claude and GPT-4 class models on complex reasoning benchmarks',
    'Tightly coupled to the X/Twitter ecosystem — less useful without X account and context'
  ]
WHERE slug = $$grok$$ AND lang = $$en$$;


-- ============================================================
-- PART 3: INSERT NEWS ITEMS (EN only)
-- 10 news items for May 2026
-- Translate to all other languages after confirming EN
-- ============================================================

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, published)
VALUES

(
  'cursor-34-agentic-dev-environments',
  'en', 'tools', 'Tools', '#2dd4a0',
  'Cursor Blog', 'May 13, 2026',
  'Cursor 3.4 Launches Agentic Dev Environments With Multi-Repo and Parallel Agent Support',
  'Cursor 3.4 introduces agentic development environments: agents now provision Dockerfile-defined environments, work across multiple repositories simultaneously, and run in parallel. Cursor 3.3 had added PR review inside the editor. BugBot transitions to usage-based billing from June 2026.',
  true
),

(
  'notion-developer-platform-35',
  'en', 'tools', 'Tools', '#2dd4a0',
  'Notion Blog', 'May 13, 2026',
  'Notion Developer Platform 3.5 — Workers Runtime, Database Sync, Bidirectional Webhooks, and Agent Plan Mode',
  'Notion released Developer Platform 3.5 on May 13, 2026. Workers runtime lets developers deploy serverless JavaScript logic inside Notion. Database Sync enables two-way connections to external databases. Bidirectional Webhooks allow Notion to receive and send events. Plan Mode enables autonomous multi-step AI agents within Notion workflows.',
  true
),

(
  'heygen-pricing-legacy-unlimited-removed',
  'en', 'business', 'Business', '#f5a623',
  'HeyGen Blog', 'May 15, 2026',
  'HeyGen Removes Legacy Unlimited Plans — All New Plans Credit-Based From May 15, 2026',
  'HeyGen discontinued legacy unlimited avatar video plans on May 15, 2026. All new HeyGen subscriptions are now credit-based. Avatar V, capable of studio-quality output from 15 seconds of footage, and the Seedance 2.0 video integration were launched alongside the pricing restructure.',
  true
),

(
  'midjourney-v81-2k-public-profiles',
  'en', 'models', 'Models', '#7c6af7',
  'Midjourney Blog', 'May 10, 2026',
  'Midjourney V8.1 — Native 2K Rendering, 3-4x Faster, Raw Mode, and Public Creator Profiles',
  'Midjourney V8.1 delivers native 2K resolution output, generation speed 3 to 4 times faster than V7, and Raw mode for more literal prompt interpretation. Public profiles allow creators to share their work socially. Midjourney TV launches as a real-time stream of community generations. V8.2 has been announced as the next release.',
  true
),

(
  'luma-ray314-1080p-4x-faster',
  'en', 'models', 'Models', '#7c6af7',
  'Luma Labs Blog', 'May 10, 2026',
  'Luma Ray3.14 — Native 1080p, 4x Faster, 3x Lower Cost, Character Seeds, Modify With Instructions',
  'Luma AI released Ray3.14 with native 1080p video output (no upscaling), generation speed 4x faster than Ray2, and 3x lower cost per generated second. Character Seeds maintain consistent character appearance across multiple clips. Modify with Instructions enables text-guided post-generation edits without full regeneration.',
  true
),

(
  'pika-25-pikastream-ai-social-app',
  'en', 'tools', 'Tools', '#2dd4a0',
  'Pika Blog', 'May 10, 2026',
  'Pika 2.5 and PikaStream 1.0 — Flicker-Free Video, Stable Characters, Real-Time AI Video Chat',
  'Pika 2.5 eliminates flickering artifacts and delivers stable character appearance across scenes. PikaStream 1.0 launches real-time AI video chat: users have live conversations with AI agents rendered as generated video characters. Pika is expanding into an AI social video app platform combining creation, sharing, and real-time AI interaction.',
  true
),

(
  'kling-v35-1080p-60fps-2min',
  'en', 'tools', 'Tools', '#2dd4a0',
  'Kling AI Blog', 'May 10, 2026',
  'Kling v3.5 — 1080p/60fps, Pro Clips Up to 2 Minutes, Improved Physics, Kuaishou Spin-Off Evaluated at ~$20B',
  'Kling AI released v3.5 with native 1080p/60fps output, extended Pro-tier clip length up to 2 minutes (the longest single generation available), and improved motion physics for fluid dynamics and cloth simulation. Kuaishou is evaluating spinning off Kling AI as an independent company at a valuation of approximately $20 billion.',
  true
),

(
  'figma-mcp-server-ai-agents-canvas',
  'en', 'tools', 'Tools', '#2dd4a0',
  'Figma Blog', 'May 10, 2026',
  'Figma MCP Server Lets AI Agents Design Directly on the Canvas — Plus Built-In AI Image Tools and Voice Input',
  'Figma launched an MCP (Model Context Protocol) server enabling AI agents such as Cursor and Claude to create and edit designs directly on the Figma canvas. Built-in AI Image Tools now include Vectorize, Remove Background, Erase, and Expand — eliminating the need to export to Photoshop. Voice input and text on path are also now available.',
  true
),

(
  'google-io-2026-gemini-announcement',
  'en', 'models', 'Models', '#7c6af7',
  'Google Blog', 'May 17, 2026',
  'Google I/O 2026 — New Gemini Model to Be Announced on May 19',
  'Google I/O 2026 opens this week with a new Gemini model announcement expected on May 19. Google has signaled major updates across the Gemini family and the broader Google AI product portfolio. The event follows the Google Android Show 2026 where Gemini Intelligence for multi-step task automation on Android was announced.',
  true
),

(
  'adobe-creative-agent-cc-orchestration',
  'en', 'tools', 'Tools', '#2dd4a0',
  'Adobe Blog', 'Apr 20, 2026',
  'Adobe Creative Agent Orchestrates AI Workflows Across All Creative Cloud Apps From a Single Prompt',
  'Adobe launched Creative Agent, an AI orchestration layer that accepts a single natural language prompt and drives coordinated workflows across Photoshop, Premiere, Lightroom, and Illustrator. Custom Models beta enables brand-specific fine-tuned generation. Sound generation was added to Adobe Firefly, extending the platform into audio creation.',
  true
);
