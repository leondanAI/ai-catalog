-- ============================================================
-- Update 5 tools (EN) — May 2026
-- Tools: google-veo-3, continue-dev, surferseo, frase, notion-ai
-- Run in Supabase SQL Editor
-- After running: translate to es, de, ru, ua, he, fr, pt
-- ============================================================

-- ============================================================
-- 31. GOOGLE VEO 3
-- ============================================================
UPDATE tools SET
  name        = $d31$Google Veo$d31$,
  url         = $d31$https://deepmind.google/technologies/veo/$d31$,
  domain      = $d31$deepmind.google$d31$,
  badge       = $d31$freemium$d31$,
  best_for    = $d31$AI video generation, native audio, image-to-video, 4K upscaling$d31$,
  description = $d31$Veo 3.1 adds richer native audio and improved cinematic understanding. Free via Google Vids for all Google account holders; Veo 3.1 Lite on Vertex AI offers a cost-effective variant with standalone 4K upscaling.$d31$,
  description_long = $dl31$Google Veo is Google DeepMind's flagship AI video generation model, designed for cinematic-quality video with native audio synthesis. It is available through multiple access points — Google Vids (consumer), Vertex AI (enterprise), and the Google AI Studio — making it one of the most widely distributed professional video generation systems available.

Veo 3.1, launched January 2026, introduced richer native audio generation, meaning the model produces synchronized sound directly alongside video without requiring a separate audio pipeline. Cinematic style understanding improved substantially in this release: the model interprets and replicates direction terms like rack focus, push-in, and Dutch angle with higher accuracy. Image-to-video capability was also upgraded, producing smoother motion and better coherence when animating a still image.

Veo 3.1 Lite, released April 4, 2026 on Vertex AI, is a cost-optimized variant intended for enterprises running high-volume generation workloads. Alongside the Lite model, Google launched a standalone Veo upscaling service that takes existing video — AI-generated or otherwise — and upscales it to 1080p or 4K without requiring a full regeneration.

In April 2026, Google extended free Veo 3.1 video generation to all Google account holders through Google Vids, dramatically lowering the access barrier. The Google Vids platform simultaneously gained Lyria 3 custom AI music generation and directable AI avatars, enabling creators to build fully produced video segments with synchronized music and presenter avatars inside a single tool.

Output capabilities include native vertical video for portrait-mode social platforms, upscaling to 1080p and 4K, and native audio. Pricing is freemium: free access through Google Vids for basic use, with Vertex AI pricing applying for enterprise API usage of standard and Lite models.

Veo is best for content creators, filmmakers, and enterprises that need cinematic AI video with native audio, flexible delivery through both consumer and enterprise channels, and tight integration with the broader Google AI ecosystem.$dl31$,
  pros = ARRAY[
    'Native audio synthesis — synchronized sound generated alongside video without a separate pipeline',
    'Free access via Google Vids for all Google account holders — lowest barrier of any major model',
    'Veo 3.1 Lite on Vertex AI offers cost-effective high-volume API access for enterprises',
    'Standalone 4K upscaling service for existing video — no full regeneration required',
    'Native vertical output and Lyria 3 custom AI music inside Google Vids'
  ],
  cons = ARRAY[
    'Enterprise Vertex AI pricing adds up quickly for large-scale production workloads',
    'Free tier through Google Vids has generation limits and fewer controls than API access',
    'Cinematic features require familiarity with film direction terminology to use effectively',
    'Less third-party integrations compared to Runway or Kling AI'
  ]
WHERE slug = $d31$google-veo-3$d31$ AND lang = $d31$en$d31$;

-- ============================================================
-- 32. CONTINUE DEV
-- ============================================================
UPDATE tools SET
  name        = $d32$Continue$d32$,
  url         = $d32$https://continue.dev$d32$,
  domain      = $d32$continue.dev$d32$,
  badge       = $d32$free$d32$,
  best_for    = $d32$AI coding agents, CI/CD automation, PR review, open-source CLI$d32$,
  description = $d32$Continue pivoted in 2026 from an IDE extension to an open-source CLI for async AI coding agents. Headless mode runs agents in CI/CD pipelines; a Checks system enforces team review policies automatically on every pull request.$d32$,
  description_long = $dl32$Continue is an open-source AI coding tool that underwent a major product pivot in 2026. It shifted from its original identity as an IDE autocomplete and chat extension to a CLI-first platform focused on asynchronous AI agents designed for CI/CD pipelines and automated pull request review. The project remains fully free and open-source under an Apache 2.0 license.

The Checks system is the centerpiece of the 2026 pivot. Teams define review policies in plain Markdown files using natural language — for example, specifying that all PRs must include test coverage for new functions, follow a particular naming convention, or avoid certain anti-patterns. AI agents automatically run these checks against every incoming pull request, providing automated feedback without requiring human review for routine compliance issues.

Headless mode allows Continue agents to run in cloud CI/CD environments with no user interface. This enables integration with GitHub Actions, GitLab CI, and other pipeline tools, so review agents execute automatically on every code push or PR open event. TUI mode provides an interactive terminal interface for users who prefer a keyboard-driven workflow, while Shell mode allows agents to execute arbitrary terminal commands as part of their task execution.

URL context is a practical convenience feature: developers can paste any URL directly into the chat interface, and Continue fetches and incorporates the page content as context for the current task. This is useful for referencing documentation, issue trackers, or third-party API references without copying and pasting content manually.

Devstral support adds tool-calling capabilities through the Mistral Devstral model, enabling agents to invoke external tools and APIs as part of automated workflows. Continue supports all major LLM providers and local models via Ollama, preserving its model-agnostic design philosophy.

Continue is best for engineering teams that want to automate code review and CI/CD quality checks with natural language policies, and for developers who prefer an open-source, model-agnostic alternative to proprietary coding agents.$dl32$,
  pros = ARRAY[
    'Fully free and open-source — no paid tier, no usage limits, Apache 2.0 license',
    'Checks system: AI agents enforce team review policies written in plain Markdown on every PR',
    'Headless mode integrates agents directly into GitHub Actions and other CI/CD pipelines',
    'Model-agnostic: supports all major LLM providers plus local models via Ollama',
    'URL context: paste any URL into chat to include page content as agent context'
  ],
  cons = ARRAY[
    'CLI and terminal-focused interface — not suitable for non-technical users',
    'Requires team setup of Markdown review policy files before automated checks work',
    'Community support only — no enterprise SLA or dedicated support channel',
    'Devstral tool-calling and headless mode are relatively new — documentation still maturing'
  ]
WHERE slug = $d32$continue-dev$d32$ AND lang = $d32$en$d32$;

-- ============================================================
-- 33. SURFER SEO
-- ============================================================
UPDATE tools SET
  name        = $d33$Surfer SEO$d33$,
  url         = $d33$https://surferseo.com$d33$,
  domain      = $d33$surferseo.com$d33$,
  badge       = $d33$paid$d33$,
  best_for    = $d33$AI Search Optimization, brand monitoring in AI, content refreshing$d33$,
  description = $d33$Surfer pivoted to AI Search Optimization in 2026, adding an AI Tracker that monitors brand mentions across ChatGPT, Perplexity, Google AI Overview, and Gemini. Plans start at $49/mo; free trial removed.$d33$,
  description_long = $dl33$Surfer SEO is a content optimization platform that rebranded its positioning in 2026 from traditional search engine optimization to AI Search Optimization (AISO). The pivot reflects the growing importance of ranking in AI-generated answers — not just on Google's standard results pages, but in ChatGPT responses, Perplexity answers, Google AI Overview snippets, and Gemini outputs.

The AI Tracker is the flagship new feature for 2026. It monitors brand and keyword mentions across ChatGPT, Perplexity, Google AI Mode, Google AI Overview, and Gemini, giving users visibility into how their brand and content appear in AI-generated responses. This is distinct from traditional rank tracking, which measures positions on a search engine results page — AI Tracker measures presence in conversational AI outputs.

Rank Tracker covers traditional SERP position monitoring alongside the new AI visibility features. Surfer Recommendations is an automated suggestion engine that identifies content gaps, optimization opportunities, and freshness issues across a site's existing content. The Custom Tone Humanizer adjusts AI-generated content to match a specified writing style or brand voice, reducing the generic quality that many AI writers produce.

Automatic article refreshing scans published content for factual staleness, ranking drops, or optimization gaps and applies updates automatically — reducing the manual effort required to maintain a large content library's performance over time.

Pricing restructured in 2026 to four annual-only tiers: Discovery at $49/month, Standard at $99/month, Pro at $182/month, and Peace of Mind at $299/month. The free trial has been eliminated and replaced with a 7-day money-back guarantee. Monthly billing is no longer available on any plan.

Surfer SEO is best for content marketers and SEO teams that want a combined traditional SEO and AI search visibility platform, particularly those who publish at volume and need automated content maintenance alongside brand monitoring in AI-generated answers.$dl33$,
  pros = ARRAY[
    'AI Tracker monitors brand mentions in ChatGPT, Perplexity, Google AI Overview, and Gemini',
    'Automatic article refreshing maintains content performance without manual audits',
    'Custom Tone Humanizer adapts AI-generated content to match a specific brand voice',
    'Covers both traditional SERP rank tracking and AI search visibility in one platform',
    'Surfer Recommendations automates content gap and optimization opportunity identification'
  ],
  cons = ARRAY[
    'Annual-only pricing — no monthly billing option on any plan',
    'Free trial eliminated — 7-day money-back guarantee only',
    'Entry plan at $49/mo is limited — most useful features require Standard ($99/mo) or above',
    'AI Tracker coverage depends on AI engine API availability and may miss some mentions',
    'Heavy focus on English content — non-English market support is less developed'
  ]
WHERE slug = $d33$surferseo$d33$ AND lang = $d33$en$d33$;

-- ============================================================
-- 34. FRASE
-- ============================================================
UPDATE tools SET
  name        = $d34$Frase$d34$,
  url         = $d34$https://frase.io$d34$,
  domain      = $d34$frase.io$d34$,
  badge       = $d34$paid$d34$,
  best_for    = $d34$SEO content, GEO optimization, AI citation tracking, content agents$d34$,
  description = $d34$Frase 2.0 adds dual SEO + GEO scoring to optimize for both Google rankings and AI citations from ChatGPT, Perplexity, Claude, and Gemini. AI Agent with 80+ skills and API/MCP access included on all plans.$d34$,
  description_long = $dl34$Frase is a content optimization and AI writing platform that underwent a complete overhaul with Frase 2.0. The core product expansion is dual scoring — content is now evaluated simultaneously for traditional SEO performance (Google rankings) and Generative Engine Optimization (GEO), which measures how well content is positioned to be cited by AI engines including ChatGPT, Perplexity, Claude, and Gemini.

GEO is the key strategic addition in 2026. As AI-generated answers increasingly serve as the first response users receive to queries, appearing as a cited source inside those answers becomes as important as appearing on page one of Google. Frase 2.0 analyzes content against the patterns that AI engines cite, and its scoring guidance helps writers optimize for both surfaces simultaneously rather than treating them as separate disciplines.

AI visibility tracking monitors how content and brand mentions appear across AI engines over time — providing the data loop that makes GEO optimization measurable rather than speculative. Users can track whether optimization efforts are translating into increased AI citation frequency.

The Frase AI Agent includes over 80 skills covering research, brief generation, outline creation, full draft writing, optimization, and publication-readiness checks. The agent is included on all paid plans at no additional charge. API and MCP (Model Context Protocol) access are also included on all tiers, allowing teams to integrate Frase's capabilities into their own workflows and AI systems.

Rank-Ready documents — fully researched, optimized, and formatted content pieces ready to publish — are available as add-ons at $3.50 each. Plans start at $39/month. The platform targets content teams that need to produce optimized content at scale while maintaining visibility in both traditional and AI-driven search surfaces.

Frase is best for content marketers and SEO teams that want an integrated platform for optimizing content for both Google search rankings and AI citation placement, with agent-driven research and writing built in.$dl34$,
  pros = ARRAY[
    'Dual SEO + GEO scoring optimizes content for both Google rankings and AI citations simultaneously',
    'AI visibility tracking measures brand and content citation frequency across AI engines',
    'Frase AI Agent with 80+ skills included on all plans — no separate agent add-on fee',
    'API and MCP access on all tiers — integrates with external AI workflows out of the box',
    'Rank-Ready documents available at $3.50 each for teams that need fully produced content'
  ],
  cons = ARRAY[
    'Plans start at $39/mo — no free tier or trial available',
    'GEO scoring methodology is still evolving as AI engine citation patterns change rapidly',
    'Rank-Ready document quality requires review — AI-generated drafts need human editing',
    'MCP integration requires technical setup — not plug-and-play for non-developer teams',
    'Heavy feature set has a learning curve for users coming from simpler content tools'
  ]
WHERE slug = $d34$frase$d34$ AND lang = $d34$en$d34$;

-- ============================================================
-- 35. NOTION AI
-- ============================================================
UPDATE tools SET
  name        = $d35$Notion AI$d35$,
  url         = $d35$https://notion.com$d35$,
  domain      = $d35$notion.com$d35$,
  badge       = $d35$freemium$d35$,
  best_for    = $d35$AI workspace agents, custom automation, Slack integration, image generation$d35$,
  description = $d35$Notion AI hit 1M Custom Agents in May 2026. v3.4 makes agents 35–50% cheaper and adds Plan Mode. AI image generation, Slack channel access, and a 50-page context window are now available on all plans.$d35$,
  description_long = $dl35$Notion AI is the AI layer embedded throughout the Notion workspace platform, which is used by millions of teams worldwide for notes, documents, wikis, and project management. The AI features have evolved significantly beyond writing assistance into a full custom agent system that automates multi-step tasks across the workspace and connected applications.

In May 2026, Notion announced that over one million Custom Agents had been created by users — a milestone reflecting rapid adoption of the agent-building tools. Custom Agents are workflow automations powered by AI that can read workspace content, execute multi-step tasks, connect to external services, and now interact with private Slack channels, including the ability to read messages and post replies.

Version 3.2, released January 2026, expanded the AI context window from 20 to 50 pages, allowing agents to consider substantially more workspace content when generating responses or executing tasks. Mobile AI support was introduced in this release, bringing the full AI feature set to iOS and Android. AI autofill — which populates database properties automatically based on page content — became three times faster.

Version 3.4, released April 2026, reduced the credit cost to run Custom Agents by 35–50%, making frequent agent use significantly more affordable. Plan Mode is a new agent interaction model: before executing a task, the agent asks clarifying questions to confirm scope and approach, reducing instances of agents acting on ambiguous instructions. Per-agent credit controls allow workspace admins to set spending limits on individual agents, preventing runaway automation costs.

AI image generation launched in March 2026, enabling users to generate images directly inside Notion pages without switching to an external tool. The feature is available on all paid plans.

Notion AI is best for teams already using Notion who want to add AI-powered automation, custom agents, and AI generation capabilities within their existing workspace rather than adopting a separate AI tool.$dl35$,
  pros = ARRAY[
    'Over 1 million Custom Agents created — proven large-scale adoption of workspace automation',
    'Custom Agents read and reply in private Slack channels — extends automation beyond Notion',
    'v3.4: agents 35-50% cheaper to run + Plan Mode reduces errors from ambiguous instructions',
    '50-page context window and 3x faster AI autofill for database-heavy workflows',
    'AI image generation built directly into pages — no external tool required'
  ],
  cons = ARRAY[
    'AI features require a paid Notion plan — not available on the free tier',
    'Custom Agent credit costs can accumulate quickly for teams running many agents at volume',
    'Plan Mode adds a confirmation step — slower for experienced users who know their agent scope',
    'AI image generation quality lags behind dedicated tools like Midjourney or Ideogram',
    'Agent capabilities are tightly coupled to Notion — limited utility outside the Notion ecosystem'
  ]
WHERE slug = $d35$notion-ai$d35$ AND lang = $d35$en$d35$;
-- ============================================================
-- Update 5 tools (EN) — May 2026
-- Tools: jasper, otter-ai, writesonic, n8n, runway
-- Run in Supabase SQL Editor
-- After running: translate to es, de, ru, ua, he, fr, pt
-- ============================================================

-- ============================================================
-- 36. JASPER
-- ============================================================
UPDATE tools SET
  name        = 'Jasper',
  url         = 'https://jasper.ai',
  domain      = 'jasper.ai',
  badge       = 'paid',
  best_for    = 'AI marketing copy, brand voice, campaign content, no-code agents',
  description = $d36$Jasper streamlined to three plans (Creator $39/mo, Pro $59/mo, Business custom), all with unlimited words. AI Studio lets teams build no-code agent workflows; Jasper Agents handle research and personalization.$d36$,
  description_long = $dl36$Jasper is an AI writing and content marketing platform built for enterprise marketing teams. It focuses on producing on-brand copy at scale — blog posts, ad copy, email campaigns, social content, and product descriptions — with brand voice consistency enforced across every output. Jasper is used by marketing teams at companies including Morningstar, Anthropologie, and Bloomingdale's.

Jasper has restructured its plan lineup to three tiers: Creator at $39/month (annual), Pro at $59/month (annual), and Business at custom pricing. All plans now include unlimited words — removing the previous per-word or credit-based limits that constrained heavy usage. This change makes Jasper more predictable for teams producing high volumes of content regularly.

AI Studio (previously branded as Studio) is Jasper's no-code agent workflow builder. Marketing teams use it to construct multi-step AI pipelines — for example, pulling a product brief, generating multiple ad copy variants, running brand voice checks, and outputting to a content calendar — without writing any code. Jasper Agents, a distinct capability layer, handle research tasks (pulling competitor data, summarizing market trends) and personalization tasks (adapting copy for different audience segments or geographies) autonomously within these workflows.

Brand voice consistency is enforced at the model level: Jasper is trained on each team's style guide, approved copy, and brand guidelines. Campaign image generation is integrated, using the brand voice parameters to keep visual content consistent with written messaging across a full campaign set.

Jasper integrates with Google Docs, Chrome, Salesforce, HubSpot, Webflow, and WordPress. API access is available on Business plans for custom integrations. Jasper is best for enterprise marketing teams that need consistent, on-brand content at volume, and for teams that want to build automated content workflows without engineering resources.$dl36$,
  pros = ARRAY[
    'Unlimited words on all plans — no credit caps or per-word metering',
    'AI Studio: build no-code agent workflows for multi-step marketing pipelines',
    'Jasper Agents handle research and audience personalization tasks autonomously',
    'Brand voice enforcement trained on team style guides and approved copy',
    'Integrates with Salesforce, HubSpot, Google Docs, Webflow, and WordPress'
  ],
  cons = ARRAY[
    'Paid-only — Creator starts at $39/mo annual, no meaningful free tier',
    'Business plan pricing is custom and not publicly disclosed — requires sales contact',
    'AI Studio workflow builder has a learning curve for non-technical marketers',
    'Output quality depends heavily on quality of brand voice training data supplied'
  ]
WHERE slug = 'jasper' AND lang = 'en';

-- ============================================================
-- 37. OTTER AI
-- ============================================================
UPDATE tools SET
  name        = 'Otter.ai',
  url         = 'https://otter.ai',
  domain      = 'otter.ai',
  badge       = 'freemium',
  best_for    = 'AI meeting transcription, video replay, sales intelligence, CRM sync',
  description = $d37$Otter.ai added Video Replay for Zoom, Meet, and Teams. Pro plan transcription cut from 6,000 to 1,200 minutes/month with no price change. OtterPilot for Sales with Salesforce/HubSpot sync is now Enterprise-only.$d37$,
  description_long = $dl37$Otter.ai is an AI meeting transcription and notes platform that records, transcribes, and summarizes meetings in real time across Zoom, Google Meet, and Microsoft Teams. It is used by sales teams, executives, students, journalists, and remote-first teams to capture and search spoken content without manual note-taking.

Video Replay is a recently added capability that links the transcript to the meeting recording: users can click any line in the transcript and jump directly to that moment in the video. This makes it faster to revisit specific discussion points, decisions, or action items without scrubbing through the full recording.

OtterPilot for Sales, which provides AI-generated deal insights, automated follow-up suggestions, and two-way sync with Salesforce and HubSpot, has been moved to Enterprise-only plans. Teams that relied on this feature on Business plans will need to upgrade to retain access.

A significant negative change: Pro plan transcription minutes were quietly reduced from 6,000 to 1,200 per month with no corresponding price reduction. For users on the $8.33/month annual Pro plan who previously relied on the higher limit, this is a substantial reduction in value with no compensation.

Pricing in 2026: Free at 300 minutes per month, Pro at $8.33/user/month (annual) with 1,200 minutes, Business at $19.99/user/month (annual) with higher limits and team features, and Enterprise at custom pricing with OtterPilot for Sales and CRM sync included.

Otter.ai is best for individuals and small teams who need reliable meeting transcription and searchable notes, and for enterprise sales teams that require CRM-integrated meeting intelligence.$dl37$,
  pros = ARRAY[
    'Video Replay: click any transcript line to jump to that moment in the recording',
    'Real-time transcription across Zoom, Google Meet, and Microsoft Teams',
    'Automatic meeting summaries and action item extraction',
    'Free tier available with 300 minutes per month — no credit card required',
    'OtterPilot for Sales: deal insights and Salesforce/HubSpot sync (Enterprise)'
  ],
  cons = ARRAY[
    'Pro plan transcription quietly cut from 6,000 to 1,200 min/mo with no price reduction',
    'OtterPilot for Sales moved to Enterprise-only — no longer available on Business plans',
    'Transcription accuracy drops with strong accents, crosstalk, or poor audio quality',
    'Business plan at $19.99/user/month is expensive for smaller teams on tight budgets'
  ]
WHERE slug = 'otter-ai' AND lang = 'en';

-- ============================================================
-- 38. WRITESONIC
-- ============================================================
UPDATE tools SET
  name        = 'Writesonic',
  url         = 'https://writesonic.com',
  domain      = 'writesonic.com',
  badge       = 'paid',
  best_for    = 'AI content writing, SEO articles, competitor analysis, search visibility',
  description = $d38$Writesonic repositioned as an AI Search Visibility Platform. Article Writer 6.0 produces up to 5,000-word articles with real-time research and competitor analysis. Chatsonic now runs GPT-4o, Claude 3.7, and Gemini 1.5 Pro.$d38$,
  description_long = $dl38$Writesonic is an AI content writing platform that has repositioned itself as an AI Search Visibility Platform — expanding its focus from general content generation to helping brands rank in AI-powered search engines and traditional search results. It is used by SEO teams, content marketers, and agencies producing high volumes of blog posts, landing pages, and product content.

AI Article Writer 6.0 is the flagship feature of the current platform. It generates articles up to 5,000 words using real-time web research to pull current data and statistics rather than relying solely on training data. Competitor analysis is built into the article generation process: the tool identifies top-ranking competitor pages for a given keyword and incorporates structural and topical gaps into the output. Automated internal linking suggests and inserts links to existing site content, and fact-checking runs before the article is finalized to reduce factual errors.

Chatsonic, Writesonic's conversational AI interface, now supports model switching within a single session: users can run prompts against GPT-4o, Claude 3.7, and Gemini 1.5 Pro from the same window and compare outputs. This is useful for teams that want to evaluate which model produces the best output for a specific content type without managing multiple subscriptions.

One-click WordPress publishing connects Writesonic directly to a WordPress site, allowing finalized articles to be pushed to the CMS as drafts or published posts without copy-pasting. Writesonic also generates optimized meta titles, meta descriptions, and structured data markup for each article.

Pricing starts at $39/month on annual billing for the Lite plan. Higher-tier plans unlock additional AI credits, team collaboration features, and API access.

Writesonic is best for SEO content teams and agencies that need scalable article production with built-in research, competitor analysis, and direct CMS publishing.$dl38$,
  pros = ARRAY[
    'Article Writer 6.0: up to 5,000 words with real-time research and competitor analysis',
    'Automated internal linking and fact-checking built into the article generation flow',
    'Chatsonic: switch between GPT-4o, Claude 3.7, and Gemini 1.5 Pro in one window',
    'One-click WordPress publishing — no manual copy-paste to CMS required',
    'SEO-optimized meta titles, descriptions, and structured data generated with each article'
  ],
  cons = ARRAY[
    'No meaningful free tier — Lite plan starts at $39/mo annual',
    'Real-time research quality varies — fact-checking still requires human review',
    'AI Search Visibility positioning is newer and less proven than core article generation',
    'High-volume use on lower-tier plans can exhaust AI credits quickly'
  ]
WHERE slug = 'writesonic' AND lang = 'en';

-- ============================================================
-- 39. N8N
-- ============================================================
UPDATE tools SET
  name        = 'n8n',
  url         = 'https://n8n.io',
  domain      = 'n8n.io',
  badge       = 'freemium',
  best_for    = 'AI workflow automation, self-hosted, node editor, human-in-the-loop',
  description = $d39$n8n v2.0 introduces Task Runners for isolated workflow execution, Save vs. Publish separation, visual version diffs, and 30–80% faster loading. Chat node Actions enable human-in-the-loop approvals.$d39$,
  description_long = $dl39$n8n is an open-source workflow automation platform that allows developers and technical teams to connect applications, APIs, and data sources through a visual node editor. Unlike many no-code automation tools, n8n is self-hostable, giving organizations full data control and no vendor dependency. It is used by engineering teams, DevOps practitioners, and technical operations teams for internal automation, data pipelines, and AI agent workflows.

n8n v2.0, a major release in late 2025 and early 2026, introduced several architectural and UX improvements. Task Runners provide isolated execution environments for individual workflow tasks, improving stability and preventing one failing step from corrupting the state of others running in parallel. This is particularly important for long-running or multi-branch AI agent workflows.

The Save vs. Publish paradigm changes how workflow changes reach production: edits to a workflow are saved locally but do not go live until the user explicitly publishes. This mirrors software deployment practices and prevents accidental changes from immediately affecting running automations — a long-requested feature from teams using n8n in production environments.

Visual version diff shows exactly what changed between workflow versions with a change count badge, making it easier to review modifications before publishing or to identify when a regression was introduced. Loading performance improved 30–80% on large workflow instances, addressing a common complaint from teams with hundreds of complex workflows.

Multiple external secrets provider connections allow credentials from Vault, AWS Secrets Manager, and other providers to be connected simultaneously. Chat node Actions add human-in-the-loop checkpoints: a workflow can pause and send a message to a human approver, who can approve, reject, or modify the next step before execution continues. SAP Business AI Platform integration was announced for enterprise use cases.

Self-hosted n8n is free. Cloud plans start at $20/month. n8n is best for developers and technical teams that need flexible, self-hosted workflow automation with AI agent capabilities and no vendor lock-in.$dl39$,
  pros = ARRAY[
    'Self-hosted option is free with full feature access — no vendor lock-in',
    'Task Runners: isolated execution per workflow task for stability in complex pipelines',
    'Save vs. Publish separation prevents accidental changes from reaching production',
    'Visual version diff with change count badges for safe workflow review before publish',
    'Chat node Actions: pause workflows for human-in-the-loop approvals mid-execution'
  ],
  cons = ARRAY[
    'Requires self-hosting setup and infrastructure maintenance for the free tier',
    'Steeper learning curve than no-code tools like Zapier or Make for non-technical users',
    'Cloud plan starts at $20/mo — adds cost for teams that prefer managed hosting',
    'Large workflow libraries still require careful organization — no built-in folder hierarchy'
  ]
WHERE slug = 'n8n' AND lang = 'en';

-- ============================================================
-- 40. RUNWAY
-- ============================================================
UPDATE tools SET
  name        = 'Runway',
  url         = 'https://runwayml.com',
  domain      = 'runwayml.com',
  badge       = 'paid',
  best_for    = 'AI video generation, temporal consistency, API access, creative workflows',
  description = $d40$Gen-4.5 (January 2026) runs on NVIDIA Vera Rubin NVL72 hardware and reached API availability in February 2026 with best-in-class temporal consistency. Runway Characters, Labs, Builders, and Fund all launched in March 2026.$d40$,
  description_long = $dl40$Runway is an AI creative platform built around video generation, with a suite of production tools spanning video-to-video editing, image generation, audio generation, and multi-modal workflows. It is used by filmmakers, studios, advertisers, and creative technologists who need cinematic-quality AI video for professional production. Runway's Gen series of models has become a benchmark for video generation quality across the industry.

Gen-4.5 was released in January 2026 and ported to NVIDIA's Vera Rubin NVL72 platform — one of NVIDIA's highest-performance AI inference systems. The NVL72 deployment enables the faster inference speeds and higher throughput that were required to make Gen-4.5 available via API. API access opened in February 2026, allowing developers and studios to integrate Gen-4.5 directly into their own production pipelines and applications.

Gen-4.5's key technical advances are temporal consistency and action control. Temporal consistency refers to how well a video model maintains coherent appearance, lighting, and physics across frames — a persistent weakness of earlier generations of video models. Gen-4.5 is rated best-in-class on this dimension as of early 2026. Action control allows users to direct specific movements and interactions within a generated scene with greater precision than prompt-only generation.

March 2026 saw a cluster of product and ecosystem launches: Runway Characters (March 9) enables consistent character identities across multiple generated clips; Runway Labs (March 11) is a research preview and early-access environment for experimental features; Runway Builders (March 31) is a community and tooling layer for developers building on the Runway API; and Runway Fund (March 31) is an investment program supporting creative AI startups.

Workflow audio nodes, video upscaling nodes, and publishable workflow apps were also added, enabling users to build complete production pipelines within the platform and share them as usable apps. Runway plans are paid-only, starting at $15/month for Standard. Runway is best for professional video creators and studios that need best-in-class temporal consistency and API-accessible video generation for integration into custom production workflows.$dl40$,
  pros = ARRAY[
    'Gen-4.5: best-in-class temporal consistency and action control for AI video generation',
    'API access (from February 2026) for direct integration into custom production pipelines',
    'Runway Characters: consistent character identity across multiple generated clips',
    'Workflow audio nodes, video upscaling nodes, and publishable workflow apps',
    'Runway Fund and Builders ecosystem for developers building on the Runway API'
  ],
  cons = ARRAY[
    'Paid-only — no free tier for ongoing production use',
    'API access and Gen-4.5 consume credits quickly at high generation volumes',
    'Gen-4.5 API launched February 2026 — third-party integration tooling still maturing',
    'Less beginner-friendly than consumer-facing tools like Pika or CapCut AI'
  ]
WHERE slug = 'runway' AND lang = 'en';
