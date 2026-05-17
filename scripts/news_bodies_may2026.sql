-- Add body field to 17 news articles missing full text
-- Run in Supabase SQL Editor

-- 1. GPT-5.5 Instant default model
UPDATE news SET body = $$
<p>OpenAI has replaced GPT-5.3 Instant with <strong>GPT-5.5 Instant</strong> as the default model powering ChatGPT for all users. The rollout began May 5, 2026, and affects the standard ChatGPT interface used by hundreds of millions of people worldwide.</p>
<h2>What improved</h2>
<p>GPT-5.5 Instant delivers <strong>52.5% fewer hallucinations</strong> on high-stakes prompts compared to its predecessor — the largest reliability improvement in a single ChatGPT model update to date. OpenAI measures this on a benchmark of factual, medical, legal, and financial queries where incorrect answers carry real-world consequences.</p>
<h2>Memory and context integration</h2>
<p>For <strong>Plus and Pro subscribers</strong>, GPT-5.5 Instant now integrates memory across three sources simultaneously: past conversations, connected Gmail accounts, and saved files. This means the model can reference a contract you uploaded last week, cross-reference an email thread, and recall your stated preferences — all in a single response. Free users retain access to conversation memory only.</p>
<h2>Why it matters</h2>
<p>The default model upgrade affects every ChatGPT user without requiring any action. For businesses and professionals using ChatGPT for research, drafting, and decision support, the hallucination reduction directly improves output reliability. The memory integration for paid users moves ChatGPT closer to a persistent assistant with full context of a user's working environment rather than a stateless chat interface.</p>
$$
WHERE slug = 'openai-gpt-55-instant-default-model' AND lang = 'en';

-- 2. Suno Series D $5B
UPDATE news SET body = $$
<p>Suno, the AI music generation platform, is raising a <strong>Series D round at a $5 billion valuation</strong> — more than doubling the $2.45 billion valuation it achieved in November 2025. The round marks one of the fastest valuation doublings in AI music history and reflects surging demand for AI-generated audio content.</p>
<h2>Scale of the business</h2>
<p>Suno now counts <strong>2 million paid subscribers</strong> and generates <strong>7 million tracks per day</strong> across its user base. At that production volume, Suno's platform generates more music daily than the entire global recording industry produces in a year. The conversion from free to paid users has accelerated as Suno introduced higher-quality generation tiers and commercial licensing options.</p>
<h2>Why the valuation doubled in six months</h2>
<p>The AI music market has undergone rapid legitimization since late 2025. Several major label licensing deals created a clearer legal framework for AI-generated music, removing a key overhang that had suppressed valuations in the sector. Suno's subscriber growth and track generation volume gave investors concrete usage metrics to justify the premium. Competitors including Udio and Stability Audio have attracted smaller rounds, positioning Suno as the category leader.</p>
<h2>What the funding enables</h2>
<p>The Series D is expected to fund infrastructure scaling to handle the 7M daily track volume, model quality improvements, and expansion into new audio categories beyond music — including sound effects, voice-overs, and podcast scoring. Commercial licensing tiers for brands and content creators are also expected to expand following the round.</p>
$$
WHERE slug = 'suno-series-d-5-billion-valuation' AND lang = 'en';

-- 3. DALL-E 3 retired / gpt-image-2
UPDATE news SET body = $$
<p>OpenAI officially retired <strong>DALL-E 2 and DALL-E 3</strong> on May 12, 2026, ending the era of the DALL-E product line. Both models are replaced by <strong>gpt-image-2</strong>, a unified image generation model that powers ChatGPT Images 2.0 and is available via the OpenAI API.</p>
<h2>What gpt-image-2 adds</h2>
<p>The new model delivers <strong>native 2K resolution output</strong> without upscaling — a significant quality jump over DALL-E 3's maximum of 1792×1024 pixels. <strong>Multilingual text rendering</strong> allows gpt-image-2 to accurately generate readable text in non-Latin scripts including Arabic, Chinese, Hebrew, and Cyrillic — a capability DALL-E 3 handled poorly. In thinking mode, the model supports <strong>up to 8 images per prompt</strong>, enabling rapid variation generation for design and marketing workflows.</p>
<h2>API and developer impact</h2>
<p>Existing API integrations using DALL-E 3 endpoints require migration to the gpt-image-2 endpoint. OpenAI is providing a compatibility period for existing API customers through Q3 2026. The new model is already available in the ChatGPT interface for Plus and Pro subscribers. API pricing for gpt-image-2 is per-image at resolutions from 512px to 2K, with bulk pricing for high-volume API users.</p>
<h2>Why it matters</h2>
<p>The retirement of the DALL-E brand after four years signals OpenAI's shift toward a unified model naming convention where image generation is a capability of the GPT model family rather than a separate product line. For users and developers, the immediate benefit is substantially better image quality and text handling — particularly valuable for localized marketing content that requires non-Latin text.</p>
$$
WHERE slug = 'dalle-3-retired-gpt-image-2-replaces' AND lang = 'en';

-- 4. Amazon Q → Kiro
UPDATE news SET body = $$
<p>Amazon Web Services has blocked new signups for the <strong>Amazon Q Developer IDE plugin</strong> from May 15, 2026, announcing its replacement: <strong>Kiro</strong>, a spec-driven agentic IDE. Full IDE plugin support ends April 30, 2027, giving existing users a transition window of approximately one year.</p>
<h2>What Kiro is</h2>
<p>Kiro is built around the concept of <strong>Specs</strong> — natural-language documents that describe requirements, architecture decisions, and implementation constraints. Instead of writing code directly or prompting line-by-line, developers write a Spec describing what they want to build. Kiro's agent reads the Spec and autonomously generates the full implementation, including files, functions, edge cases, and component wiring. The Spec becomes a persistent, version-controllable artifact that explains intent alongside the code.</p>
<h2>Hooks: automated quality gates</h2>
<p><strong>Hooks</strong> are Kiro's event-driven automation layer. They trigger on file system events such as file save or git commit. On save, a Hook might run tests, lint code, or update documentation automatically. On commit, a Hook might run security scans or verify that the implementation aligns with the Spec. Hooks embed quality gates directly into the development lifecycle without requiring separate CI/CD configuration.</p>
<h2>Technical foundation</h2>
<p>Kiro is built as a <strong>VS Code-compatible IDE</strong>, preserving existing extensions, keybindings, and workspace configurations. The agent layer runs on <strong>Amazon Bedrock</strong> with access to Claude, Amazon Nova, and other foundation models. Deep AWS integration enables direct infrastructure provisioning and deployment from within the IDE.</p>
<h2>Why it matters</h2>
<p>Amazon's shift from Q Developer to Kiro represents a strategic repositioning — from an AI assistant that helps developers write code to an agent that executes full software development from high-level specifications. For AWS-centric engineering teams, Kiro offers a tighter loop between requirements, implementation, and deployment on AWS infrastructure.</p>
$$
WHERE slug = 'amazon-q-developer-replaced-by-kiro' AND lang = 'en';

-- 5. Krea 2 foundation model
UPDATE news SET body = $$
<p>Krea AI released <strong>Krea 2</strong>, a new foundation image model built from scratch with a focus on aesthetic quality and style transfer. The launch accompanies two new platform capabilities — <strong>Krea Nodes</strong> and <strong>Krea Edit</strong> — and makes Seedance 2.0 available across all paid plans.</p>
<h2>Krea 2 foundation model</h2>
<p>Unlike Krea's previous models, which were fine-tuned from existing open-source bases, Krea 2 is a proprietary foundation model trained from the ground up. The architectural focus is on aesthetic coherence — the model is designed to produce images with strong compositional quality and style consistency rather than maximizing photorealism alone. Style transfer is a core capability: Krea 2 can apply the visual language of a reference image to new content with high fidelity.</p>
<h2>Krea Nodes and Krea Edit</h2>
<p><strong>Krea Nodes</strong> is a workflow builder where users describe an image pipeline in natural language and Krea assembles the processing graph automatically. This removes the need to manually configure generation parameters, upscalers, and post-processors — the workflow is built from intent rather than technical specification. <strong>Krea Edit</strong> enables region-level editing within images: targeted modifications to specific areas, relighting of scenes, and outpainting to expand image boundaries — all without regenerating the full image.</p>
<h2>Seedance 2.0 on all paid plans</h2>
<p><strong>Seedance 2.0</strong>, the AI video generation model, is now available on all Krea paid tiers. Previously limited to higher-tier plans, the broader rollout gives more users access to AI video generation within Krea's creative platform.</p>
<h2>Why it matters</h2>
<p>Krea 2 positions Krea as a serious contender in the foundation model space rather than a workflow layer on top of third-party models. For creative professionals, Nodes and Edit address the two main friction points in AI image workflows: complex pipeline configuration and the inability to make targeted post-generation edits without full regeneration.</p>
$$
WHERE slug = 'krea-ai-krea-2-foundation-model' AND lang = 'en';

-- 6. Google Gemini Intelligence for Android
UPDATE news SET body = $$
<p>At the <strong>Google Android Show 2026</strong>, Google announced <strong>Gemini Intelligence</strong> — a new AI layer for Android that automates multi-step tasks directly on the device. The feature is coming to <strong>Samsung and Google Pixel phones</strong> in summer 2026.</p>
<h2>What Gemini Intelligence does</h2>
<p>Gemini Intelligence operates as an on-device agent capable of executing multi-step tasks that previously required manual navigation across multiple apps. Demonstrated use cases include <strong>shopping</strong> (finding a product, comparing prices, placing an order), <strong>bookings</strong> (checking availability, selecting options, confirming reservations), and <strong>calendar management</strong> (scheduling meetings, sending invites, checking conflicts). The agent understands the task from a natural language instruction and handles the application navigation autonomously.</p>
<h2>Googlebooks: Android-powered laptops</h2>
<p>Google also announced <strong>Googlebooks</strong> — a new category of Android-powered laptops from <strong>Acer, ASUS, and Lenovo</strong> with Gemini built in. Googlebooks run Android natively rather than Chrome OS, bringing the Android app ecosystem and Gemini Intelligence to laptop form factors. The devices are positioned as an alternative to Chromebooks for users who want full Android compatibility with AI-first hardware.</p>
<h2>Why it matters</h2>
<p>Gemini Intelligence represents Google's answer to Apple Intelligence on iOS — a system-level AI agent integrated into the mobile OS rather than a standalone app. The differentiation from Apple's approach is the emphasis on multi-step task automation across third-party apps. For Android users, this means complex workflows that currently require switching between multiple apps can be triggered with a single instruction. The summer 2026 rollout on Samsung and Pixel devices covers two of the highest-volume Android manufacturers.</p>
$$
WHERE slug = 'google-gemini-intelligence-android-2026' AND lang = 'en';

-- 7. Cursor 3.4 agentic dev environments
UPDATE news SET body = $$
<p>Cursor released version 3.4, introducing <strong>agentic development environments</strong> — a major architectural shift that moves Cursor agents from code completion and editing into full environment management and multi-repository coordination.</p>
<h2>Agentic dev environments</h2>
<p>In Cursor 3.4, agents can now <strong>provision their own development environments</strong> from a Dockerfile definition. An agent given a task can spin up a containerized environment with the correct runtime, dependencies, and configuration — without requiring a pre-existing local setup. This enables agents to work in isolated, reproducible environments that match production specifications, reducing the "works on my machine" class of issues that emerge when agents modify codebases in developer-configured local environments.</p>
<h2>Multi-repo and parallel agents</h2>
<p><strong>Multi-repo support</strong> allows a single agent to work across multiple repositories simultaneously — critical for microservices architectures and monorepos where a feature change requires coordinated edits across several codebases. <strong>Parallel agent execution</strong> lets multiple agents run side by side on different tasks, managed from a single Cursor workspace. Teams can split a large implementation task into parallel workstreams and monitor progress centrally.</p>
<h2>Cursor 3.3 recap and BugBot billing change</h2>
<p>Cursor 3.3 had added <strong>PR review inside the editor</strong> — developers can open a pull request, view diffs, and receive AI-generated review comments without leaving Cursor or switching to GitHub. Starting <strong>June 2026</strong>, BugBot (Cursor's automated bug detection on commits and PRs) transitions from included-in-plan to usage-based billing. Teams that rely heavily on automated bug scanning should review the new pricing before June.</p>
<h2>Why it matters</h2>
<p>Cursor 3.4 closes the gap between AI-assisted coding and fully autonomous software development. The combination of environment provisioning, multi-repo support, and parallel execution means a Cursor agent can now handle tasks that previously required a human developer to orchestrate across tools, terminals, and repositories. For engineering teams, this unlocks agent-driven development cycles where humans define requirements and review outputs rather than executing each implementation step.</p>
$$
WHERE slug = 'cursor-34-agentic-dev-environments' AND lang = 'en';

-- 8. Notion Developer Platform 3.5
UPDATE news SET body = $$
<p>Notion released <strong>Developer Platform 3.5</strong> on May 13, 2026 — the most significant developer-facing update in the company's history. The release introduces four new capabilities that transform Notion from a knowledge workspace into a programmable platform with agentic AI execution.</p>
<h2>Workers runtime</h2>
<p><strong>Workers runtime</strong> allows developers to write and deploy custom serverless JavaScript functions that run directly inside Notion. Logic — automations, data transformations, integrations — lives alongside content rather than in external services. A Notion database can now trigger a function, process the data, call an external API, and write results back — all within the Notion environment without routing through Zapier, Make, or custom backend infrastructure.</p>
<h2>Database Sync</h2>
<p><strong>Database Sync</strong> adds two-way, bidirectional connections between Notion databases and external data sources including SQL databases and third-party APIs. Unlike Notion's previous one-way data imports, changes made in Notion are now reflected in the external system and vice versa. Notion becomes a live operational interface rather than a static copy of external data — enabling use cases like a Notion-based CRM that stays synchronized with Salesforce or a product database connected to a PostgreSQL backend.</p>
<h2>Bidirectional Webhooks and Plan Mode</h2>
<p><strong>Bidirectional Webhooks</strong> extend the event model in both directions: Notion can receive incoming webhooks from external services to trigger workflows and send outgoing webhooks when Notion content changes. <strong>Plan Mode</strong> is a new AI agent capability: agents reason about multi-step tasks, create a plan, execute each step, and adapt when circumstances change — behaving autonomously on structured Notion knowledge bases rather than responding to single prompts.</p>
<h2>Why it matters</h2>
<p>Developer Platform 3.5 positions Notion as a platform where AI agents operate on structured, interconnected data rather than just on documents. For teams already using Notion as their operational hub, Workers and Database Sync unlock automation and integration capabilities that previously required dedicated engineering work. For AI builders, Plan Mode with bidirectional data access opens Notion databases as a substrate for autonomous agent workflows.</p>
$$
WHERE slug = 'notion-developer-platform-35' AND lang = 'en';

-- 9. HeyGen pricing change
UPDATE news SET body = $$
<p>HeyGen discontinued <strong>legacy unlimited avatar video plans</strong> on May 15, 2026. All new HeyGen subscriptions are now <strong>credit-based</strong>, where each minute of avatar video generation consumes credits from a monthly allocation rather than being uncapped. Existing unlimited plan holders retain access through their current billing cycle.</p>
<h2>Why HeyGen changed its pricing</h2>
<p>Unlimited flat-rate plans created unpredictable infrastructure costs as AI video quality — and therefore compute demand per minute — increased significantly with Avatar V. Credit-based pricing gives HeyGen more predictable revenue and aligns cost with actual consumption. For users who produce variable volumes of video month-to-month, credits also provide more flexibility than paying for unused unlimited capacity.</p>
<h2>Avatar V: studio quality from 15 seconds</h2>
<p>Launched alongside the pricing restructure, <strong>Avatar V</strong> is HeyGen's most advanced avatar generation model. It produces <strong>studio-quality digital human avatars from just 15 seconds of source footage</strong> — previous generation models required 2 to 5 minutes of recorded video for comparable quality. A short smartphone recording in good lighting is now sufficient to create a broadcast-quality avatar with accurate lip sync, micro-expressions, and natural head motion.</p>
<h2>Seedance 2.0 integration</h2>
<p><strong>Seedance 2.0</strong>, the AI video generation model, is now integrated into HeyGen and available on all paid plans. It enables AI-generated video backgrounds and scene elements that combine with avatar overlays — reducing dependence on physical green screens and stock footage for background content in avatar videos.</p>
<h2>Impact for existing users</h2>
<p>Users on legacy unlimited plans should review their average monthly usage and map it to the new credit tiers before their current plan expires. High-volume producers — teams generating hundreds of minutes per month — will face the most significant cost impact. For teams with moderate or variable production schedules, credit-based pricing may be more economical than unlimited plans they were previously underutilizing.</p>
$$
WHERE slug = 'heygen-pricing-legacy-unlimited-removed' AND lang = 'en';

-- 10. Midjourney V8.1
UPDATE news SET body = $$
<p>Midjourney released <strong>V8.1</strong>, delivering native 2K resolution output, generation speeds 3 to 4 times faster than V7, and a new Raw mode for literal prompt interpretation. The release also introduces <strong>public creator profiles</strong> and <strong>Midjourney TV</strong> as the platform expands beyond pure image generation.</p>
<h2>Native 2K and speed improvements</h2>
<p><strong>Native 2K resolution</strong> means V8.1 generates images at 2048px on the long edge without upscaling — the output is produced at full quality at generation time rather than being upscaled from a lower-resolution base. Generation speed is <strong>3 to 4 times faster than V7</strong>, reducing the wait time for a standard 4-image grid from roughly 30–45 seconds to under 15 seconds for most prompts. This speed increase significantly improves iteration speed during the creative exploration phase.</p>
<h2>Raw mode</h2>
<p><strong>Raw mode</strong> shifts V8.1 toward more literal prompt interpretation — reducing the aesthetic "opinionatedness" that Midjourney models are known for. In Raw mode, the model applies less automatic stylization and renders prompts more directly as described. This is particularly useful for technical illustrations, product mockups, and use cases where Midjourney's default artistic interpretation conflicts with the desired output.</p>
<h2>Public profiles and Midjourney TV</h2>
<p><strong>Public creator profiles</strong> allow Midjourney users to share their work socially within the platform, building a portfolio-like presence accessible to other community members. <strong>Midjourney TV</strong> launches as a real-time stream of community generations — a continuously updating visual feed of what the Midjourney community is creating. V8.2 has been announced as the next planned release.</p>
<h2>Why it matters</h2>
<p>V8.1's speed and resolution improvements make Midjourney more competitive with faster generators like Flux and Ideogram while retaining its distinctive aesthetic quality. The public profile and TV features signal a shift toward building a social creative community rather than remaining a pure generation utility — positioning Midjourney as a platform where creators share and discover work, not just generate it.</p>
$$
WHERE slug = 'midjourney-v81-2k-public-profiles' AND lang = 'en';

-- 11. Luma Ray3.14
UPDATE news SET body = $$
<p>Luma AI released <strong>Ray3.14</strong>, a major update to its AI video generation model delivering native 1080p output, dramatically faster generation speeds, lower costs, and two new capabilities — <strong>Character Seeds</strong> and <strong>Modify with Instructions</strong>.</p>
<h2>Native 1080p at 4x speed and 3x lower cost</h2>
<p>Ray3.14 generates video at <strong>native 1080p resolution without upscaling</strong> — the full-resolution output is produced directly by the model rather than being scaled up from a lower-resolution generation. Generation speed is <strong>4x faster than Ray2</strong>, and cost per generated second is <strong>3x lower</strong>. For studios and creators running high-volume generation pipelines, the cost reduction is significant — productions that would have cost $1,000 in Ray2 credits now cost approximately $333 in Ray3.14.</p>
<h2>Character Seeds</h2>
<p><strong>Character Seeds</strong> solve one of AI video's most persistent challenges: character consistency across clips. A Character Seed is a persistent identity assigned to a character from a reference image or initial generation. Subsequent clips using the same seed maintain <strong>consistent appearance — same face, hair, body proportions, and style</strong> — across different prompts, scenes, and camera angles. This makes Ray3.14 viable for narrative content and short-form storytelling where character continuity is essential.</p>
<h2>Modify with Instructions</h2>
<p><strong>Modify with Instructions</strong> allows text-guided post-generation edits to an existing video clip without full regeneration. A director can specify "change the jacket color to red" or "add more lens flare" and the model applies the targeted modification to the clip. This closes the feedback loop in AI video production — instead of regenerating from scratch when an element is slightly off, creators can iterate with targeted instructions.</p>
<h2>Why it matters</h2>
<p>Ray3.14 addresses the three core barriers to AI video adoption in professional production: quality (1080p native), economics (3x cost reduction), and consistency (Character Seeds). Together, these improvements make AI-generated video practical for client work and narrative production — not just experimental content. The Modify with Instructions feature removes a key creative workflow bottleneck that made AI video difficult to direct precisely.</p>
$$
WHERE slug = 'luma-ray314-1080p-4x-faster' AND lang = 'en';

-- 12. Pika 2.5 + PikaStream
UPDATE news SET body = $$
<p>Pika released <strong>Pika 2.5</strong> alongside <strong>PikaStream 1.0</strong>, combining technical video generation improvements with a new real-time AI interaction product that positions Pika as an AI social video platform rather than a pure generation tool.</p>
<h2>Pika 2.5: flicker-free video and stable characters</h2>
<p><strong>Pika 2.5</strong> targets two quality issues that have limited AI video's production usability. <strong>Flickering artifacts</strong> — the frame-to-frame inconsistency that made AI video appear unstable in motion — are eliminated in 2.5 through improved temporal consistency in the generation model. <strong>Character stability</strong> is significantly improved: subjects maintain consistent appearance, proportions, and facial features across frames and across camera angle changes. These fixes move Pika 2.5 from visually interesting but technically imperfect to genuinely production-ready for short-form content.</p>
<h2>PikaStream 1.0: real-time AI video chat</h2>
<p><strong>PikaStream 1.0</strong> is a fundamentally new product category: real-time AI video chat where users have live conversations with AI agents that are rendered as generated video characters. Rather than a text chat with an avatar overlay, PikaStream generates video of the AI character in real time as the conversation unfolds. Users can choose character styles, environments, and visual aesthetics for their AI conversation partner. The feature combines the responsiveness of real-time chat AI with the visual engagement of generated video.</p>
<h2>Expanding into AI social video</h2>
<p>The combination of Pika 2.5's generation quality and PikaStream's interactive video positions Pika as an <strong>AI social video platform</strong> — integrating creation, sharing, and real-time AI interaction in a single product. The strategic direction moves Pika from competing purely on generation quality (against Runway, Kling, Luma) into a distinct social interaction category.</p>
<h2>Why it matters</h2>
<p>PikaStream represents the first production-level implementation of real-time AI video conversation at consumer scale. If the interaction quality holds under real-world usage, it introduces a new modality for AI companionship, education, and entertainment that goes beyond text-based or static avatar-based AI interaction. For creators, Pika 2.5's technical improvements make it viable for commercial short-form video production.</p>
$$
WHERE slug = 'pika-25-pikastream-ai-social-app' AND lang = 'en';

-- 13. Kling v3.5
UPDATE news SET body = $$
<p>Kling AI released <strong>v3.5</strong> with native 1080p/60fps video output, extended Pro-tier clip length to <strong>2 minutes</strong>, improved motion physics, and a major corporate development: <strong>Kuaishou is evaluating a spin-off of Kling AI</strong> at an approximate $20 billion valuation.</p>
<h2>1080p/60fps and 2-minute clips</h2>
<p>Kling v3.5 generates video at <strong>native 1080p resolution at 60 frames per second</strong> — the highest frame rate available in the AI video generation market at the time of release. High frame rates are critical for motion-heavy content like action sequences, sports visualization, and product demonstrations where lower frame rates produce a "cinematic" look that may not suit the content. The <strong>2-minute maximum clip length on Pro tier</strong> is the longest single generation available across major AI video platforms, enabling more complete narrative sequences without splicing multiple clips.</p>
<h2>Improved motion physics</h2>
<p>v3.5 includes targeted improvements to <strong>fluid dynamics and cloth simulation</strong>. Water, fabric, hair, and other physically complex materials now behave more accurately in motion — addressing a category of artifacts (unnatural material behavior) that has been a consistent weakness across all AI video generators. For product visualization, fashion content, and natural scene generation, these physics improvements directly improve output believability.</p>
<h2>Kuaishou spin-off evaluation</h2>
<p>Kuaishou, the Chinese short-video platform that developed Kling AI, is <strong>evaluating spinning off Kling AI as an independent company</strong> at an approximate valuation of <strong>$20 billion</strong>. The spin-off structure would allow Kling AI to raise dedicated capital and pursue international expansion independently from Kuaishou's core business. No timeline or formal announcement has been made — the valuation figure reflects internal discussions and early investor conversations.</p>
<h2>Why it matters</h2>
<p>Kling v3.5's combination of 60fps, 2-minute clips, and improved physics makes it the most capable platform for long-form and motion-intensive AI video generation. The potential $20B spin-off valuation would make Kling AI one of the most valuable AI companies in the world, signaling that AI video generation at scale is being valued comparably to leading AI model companies.</p>
$$
WHERE slug = 'kling-v35-1080p-60fps-2min' AND lang = 'en';

-- 14. Figma MCP server
UPDATE news SET body = $$
<p>Figma launched an <strong>MCP (Model Context Protocol) server</strong> that enables AI agents — including Cursor, Claude, and custom-built agents — to create and edit designs directly on the Figma canvas. The launch accompanies built-in <strong>AI Image Tools</strong>, <strong>voice input</strong>, and <strong>text on path</strong> — the most significant AI feature expansion in Figma's history.</p>
<h2>The Figma MCP server</h2>
<p>The MCP server exposes Figma's canvas as a programmable interface for AI agents. A developer working in Cursor can instruct their coding agent to <strong>generate a UI component directly in Figma</strong> — the agent creates frames, applies styles, positions elements, and names layers without requiring the developer to switch tools or manually recreate an AI suggestion. Design systems and component libraries are accessible to agents through the MCP interface, enabling context-aware generation that respects established design tokens and patterns.</p>
<h2>Built-in AI Image Tools</h2>
<p>Four AI image operations are now native to Figma, removing the need to export to Photoshop for common tasks. <strong>Vectorize</strong> converts raster images into editable vector shapes. <strong>Remove Background</strong> isolates subjects with one click. <strong>Erase</strong> removes objects from images non-destructively. <strong>Expand</strong> extends image boundaries using AI inpainting. All four operations work on images embedded in the Figma canvas without leaving the application.</p>
<h2>Voice input and text on path</h2>
<p><strong>Voice input</strong> allows designers to issue natural-language design commands using their microphone — describing modifications rather than navigating menus. <strong>Text on path</strong> is a long-requested typographic feature that allows text to follow curved paths or shape outlines, enabling logotype treatments and circular text layouts that previously required workarounds or third-party plugins.</p>
<h2>Why it matters</h2>
<p>The MCP server makes Figma the first major design tool to become a first-class target for AI agent design work. Rather than AI agents generating code that developers manually implement as designs, the design artifact itself can now be created and updated by agents. This closes the loop between AI-assisted development and design — enabling workflows where a single agent produces both the code and the corresponding UI design simultaneously.</p>
$$
WHERE slug = 'figma-mcp-server-ai-agents-canvas' AND lang = 'en';

-- 15. Google I/O 2026
UPDATE news SET body = $$
<p>Google I/O 2026, Google's annual developer conference, opens this week with a <strong>new Gemini model announcement expected on May 19</strong>. Google has signaled major updates across the Gemini model family and its broader AI product portfolio.</p>
<h2>What Google has signaled</h2>
<p>Google's pre-event communications indicate updates across multiple Gemini tiers — including improvements to the flagship Gemini Ultra model and changes to the Gemini Pro and Flash tiers used in developer applications. Specific benchmark figures and capability details have not been disclosed ahead of the announcement. The scale of the I/O keynote suggests this is a coordinated portfolio update rather than a single model release.</p>
<h2>Context: recent Google AI momentum</h2>
<p>The I/O announcement follows the <strong>Google Android Show 2026</strong>, held weeks earlier, where Google announced <strong>Gemini Intelligence for Android</strong> — a system-level AI agent for multi-step task automation coming to Samsung and Pixel devices in summer 2026. The Android Show announcement was notable for expanding Gemini from a chat assistant into an OS-level automation layer. The I/O model announcement is expected to provide the underlying model improvements that power these product-level features.</p>
<h2>Developer implications</h2>
<p>Google I/O is primarily a developer conference, and the Gemini model updates are expected to include API-accessible capabilities for the developer community. Updates to the Gemini API — including context window sizes, multimodal capabilities, and pricing — are typically announced at I/O. Developers building on the Gemini API should follow the May 19 announcement for changes that may affect existing integrations or open new capability windows.</p>
<h2>Why it matters</h2>
<p>Google I/O 2026 arrives at a moment of intensifying competition in frontier AI models. OpenAI's GPT-5.5 Instant became ChatGPT's default in May 2026, and Anthropic's Claude model family has seen rapid capability growth. Google's response — in the form of updated Gemini models with improved benchmarks and Android-level integration — will shape the competitive landscape for the second half of 2026. The developer community will be watching particularly for context window improvements and multimodal advances that could affect Gemini's position in the developer API market.</p>
$$
WHERE slug = 'google-io-2026-gemini-announcement' AND lang = 'en';

-- 16. Adobe Creative Agent
UPDATE news SET body = $$
<p>Adobe launched <strong>Creative Agent</strong>, an AI orchestration layer that accepts a single natural-language prompt and drives coordinated workflows across <strong>Photoshop, Premiere, Lightroom, and Illustrator</strong> simultaneously. The launch also includes <strong>Custom Models</strong> beta for brand-specific generation and <strong>sound generation</strong> in Adobe Firefly.</p>
<h2>Creative Agent: AI orchestration across Creative Cloud</h2>
<p>Creative Agent represents a shift in how AI interacts with Adobe's application suite. Previously, AI features in Photoshop, Premiere, and other Creative Cloud apps operated independently within each application. Creative Agent accepts a high-level instruction — such as "create a summer product campaign" — and autonomously coordinates a workflow: generating source images in Firefly, applying them to a layout in Photoshop, color-grading in Lightroom, and compositing a motion graphic in Premiere. The agent manages application handoffs and assembles the output without requiring the user to navigate between tools manually.</p>
<h2>Custom Models beta</h2>
<p><strong>Custom Models</strong> allows organizations to fine-tune Firefly's image generation on their own brand assets, style guides, and visual identity. Once trained, the custom model generates new content that automatically aligns with brand guidelines — correct color palettes, typography style, and visual language — without requiring detailed style prompting for each generation. Custom Models is in beta with enterprise waitlist access; general availability timing has not been announced.</p>
<h2>Sound generation in Firefly</h2>
<p>Adobe added <strong>sound generation</strong> to Firefly, extending the platform's AI capabilities from visual content into audio. Users can generate sound effects, ambient audio, and short music segments from text descriptions — reducing dependence on stock audio libraries for video and motion graphics production. Sound generation integrates into Premiere workflows for direct use in video editing.</p>
<h2>Why it matters</h2>
<p>Creative Agent is Adobe's most direct response to the threat of standalone AI generation tools. By connecting AI capabilities across the entire Creative Cloud suite with a single orchestration layer, Adobe makes its existing application investments more defensible — the value is now in cross-application coordination that standalone tools cannot replicate. For enterprises, Custom Models provides a commercial-safe, brand-consistent generation capability that generic models cannot offer without significant prompt engineering.</p>
$$
WHERE slug = 'adobe-creative-agent-cc-orchestration' AND lang = 'en';

-- 17. Claude Design launch
UPDATE news SET body = $$
<p>Anthropic released <strong>Claude Design</strong>, its first dedicated design product, as part of Anthropic Labs. Built on <strong>Claude Opus 4.7</strong>, it generates slide decks, mockups, and marketing materials through conversation — and is available at no additional cost for Claude Pro, Max, Team, and Enterprise subscribers.</p>
<h2>What Claude Design does</h2>
<p>Claude Design works through a conversational interface: users describe what they want to create — a pitch deck, a product mockup, a marketing one-pager — and Claude Design produces it directly. The output reflects the stated requirements, adjusted iteratively through follow-up conversation. Unlike generic AI assistants that can describe a design or generate code for one, Claude Design produces actual visual artifacts: formatted presentations, annotated mockups, and print-ready marketing layouts.</p>
<h2>Automatic brand system generation</h2>
<p>A standout capability is <strong>automatic brand system generation from existing assets</strong>. Claude Design can ingest an existing codebase, design file, or collection of brand materials and extract the visual system — color palette, typography choices, spacing conventions, component patterns — automatically. New content generated in the same session applies that extracted brand system without requiring the user to manually specify brand guidelines. For teams maintaining visual consistency across large volumes of output, this removes a significant manual step from the AI design workflow.</p>
<h2>Availability and pricing</h2>
<p>Claude Design is included in <strong>Claude Pro ($20/month), Max ($100/month), Team, and Enterprise</strong> subscriptions at no additional cost. It is part of Anthropic Labs, Anthropic's product experimentation division, which means it is being released as an early-access product rather than a generally available feature. Some capabilities may evolve or change as Anthropic collects usage feedback during the Anthropic Labs phase.</p>
<h2>Why it matters</h2>
<p>Claude Design is Anthropic's first move into the creative professional market, which has been primarily contested by tools built on OpenAI's GPT-4o (via Microsoft Designer and ChatGPT image generation) and Google's Gemini. By integrating design output directly into Claude's conversational interface — and differentiating with brand system extraction — Anthropic is positioning Claude as a complete creative and analytical assistant rather than a text-focused tool. For existing Claude subscribers, Claude Design adds design capability at no incremental cost.</p>
$$
WHERE slug = 'anthropic-claude-design-launch' AND lang = 'en';
