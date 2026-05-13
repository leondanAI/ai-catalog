-- ============================================================
-- Update 5 tools (EN) — May 2026
-- Tools: flux, recraft-ai, ideogram, seedance-2-0, pika
-- Run in Supabase SQL Editor
-- After running: translate to es, de, ru, ua, he, fr, pt
-- ============================================================

-- ============================================================
-- 21. FLUX
-- ============================================================
UPDATE tools SET
  name        = 'FLUX',
  url         = 'https://blackforestlabs.ai',
  domain      = 'blackforestlabs.ai',
  badge       = 'freemium',
  best_for    = 'AI image generation, sub-second speed, text rendering, multi-reference',
  description = $d21$FLUX.2 [Klein], released January 15 2026, is the fastest Flux model yet — sub-second generation on consumer hardware, up to 4 megapixel resolution with improved text rendering.$d21$,
  description_long = $dl21$FLUX is a family of AI image generation models developed by Black Forest Labs, the team behind the original Stable Diffusion research. The models are known for high visual quality, accurate text rendering, and a permissive licensing approach that supports commercial use. FLUX is used across professional advertising, fashion production, and creative industries globally.

The FLUX.2 suite, released January 15, 2026, introduced four variants: Pro, Flex, Dev, and Klein. Klein is the flagship consumer-facing model and achieves sub-second image generation on standard consumer hardware — a significant speed leap over the previous generation. At the same time, output quality and resolution ceiling have increased, with support for up to 4 megapixel images.

Multi-reference is a key new capability in FLUX.2: users can supply dozens of reference images in a single generation request, and the model synthesizes variations that are consistent with all supplied references simultaneously. This is particularly useful for brand-consistent advertising campaigns and fashion catalogs where visual coherence across a large batch of images is required.

Text rendering is substantially improved in FLUX.2. The model can accurately render specified text within generated images — product labels, signage, branded copy, and UI mockups — with higher accuracy than its predecessor and most competing models. This has accelerated adoption in advertising and marketing production pipelines.

FLUX models are available via API at api.bfl.ml for developers who want to integrate generation into their own applications. The models are also supported natively in ComfyUI for local workflow use and deployable through Replicate for cloud-based API access. Black Forest Labs offers a freemium tier with limited free generations and paid plans for higher volume and priority access.

FLUX is best for designers, photographers, advertisers, and developers who need fast, high-resolution image generation with accurate text rendering and the flexibility to run locally or via API.$dl21$,
  pros = ARRAY[
    'FLUX.2 [Klein]: sub-second generation on consumer hardware — fastest Flux model released',
    'Up to 4 megapixel resolution output without requiring a separate upscaling step',
    'Multi-reference: supply dozens of reference images in one generation for consistent variations',
    'Improved text rendering — accurate product labels, signage, and branded copy in images',
    'Available via API (api.bfl.ml), ComfyUI, and Replicate — flexible local and cloud deployment'
  ],
  cons = ARRAY[
    'Free tier is limited — high-volume professional use requires a paid API plan',
    'FLUX.2 Pro and Flex variants are API-only, with no consumer-facing web UI from Black Forest Labs',
    'Multi-reference feature quality can degrade with conflicting or very dissimilar reference images',
    'Less beginner-friendly than web-based tools like Midjourney — API setup required for full access'
  ]
WHERE slug = 'flux' AND lang = 'en';

-- ============================================================
-- 22. RECRAFT AI
-- ============================================================
UPDATE tools SET
  name        = 'Recraft',
  url         = 'https://recraft.ai',
  domain      = 'recraft.ai',
  badge       = 'freemium',
  best_for    = 'AI image generation, agentic design, MCP integration, vector art',
  description = $d22$Recraft V4 (February 17 2026) is a complete rebuild with Agentic Mode for conversation-driven design on an infinite canvas, MCP integration with Claude and Cursor, and video generation on Pro plans.$d22$,
  description_long = $dl22$Recraft is an AI image and design generation platform built for professional designers and creative teams. It focuses on producing consistent, brand-aligned visuals — including vector art, icons, illustrations, and UI mockups — with fine-grained style control that distinguishes it from general-purpose image generators. Recraft ranked first on the FLUX benchmark for image generation quality in late 2025.

Recraft V4, released February 17, 2026, is a complete ground-up rebuild of the platform. The most significant new capability is Agentic Mode: users describe design goals through natural conversation, and the AI autonomously refines and iterates on the design across an infinite canvas. Instead of single-prompt generation, Agentic Mode operates as a design partner — asking clarifying questions, proposing variants, and executing multi-step design workflows in response to conversational direction.

MCP (Model Context Protocol) integration allows Recraft to be called directly from Claude, Cursor, and other MCP-compatible AI agents. This enables developers and designers working in those environments to generate images without switching tools — a significant workflow improvement for teams that use Claude or Cursor as their primary interface.

Video generation is available on Pro plans, supporting up to two parallel video generations simultaneously. The addition of video brings Recraft into broader multimedia production workflows, complementing its existing strengths in static image and vector asset creation.

Recraft raised a $30 million Series B round led by Accel in early 2026, reflecting strong enterprise adoption and investor confidence in the platform's trajectory. The free tier provides access to core image generation features with usage limits. Pro plans unlock video generation, higher resolution outputs, commercial licensing, and priority queue access.

Recraft is best for designers and creative teams who need consistent, brand-aligned image generation with agentic design capabilities, and for developers who want image generation integrated directly into their AI agent workflows via MCP.$dl22$,
  pros = ARRAY[
    'Agentic Mode: conversational design refinement on infinite canvas — not just single-shot prompts',
    'MCP integration — generate images directly from Claude, Cursor, and other AI agents',
    'Pro plans support up to 2 parallel video generations alongside image generation',
    'Strong vector art, icon, and illustration output — purpose-built for professional designers',
    '$30M Series B led by Accel — well-funded with strong enterprise adoption momentum'
  ],
  cons = ARRAY[
    'Video generation is Pro-only — free tier is image-focused with usage limits',
    'Agentic Mode is a new paradigm — requires adjustment for users accustomed to single-prompt tools',
    'MCP integration requires a compatible host environment (Claude, Cursor) — not standalone',
    'Less suited for photorealistic photography-style images compared to FLUX or Midjourney'
  ]
WHERE slug = 'recraft-ai' AND lang = 'en';

-- ============================================================
-- 23. IDEOGRAM
-- ============================================================
UPDATE tools SET
  name        = 'Ideogram',
  url         = 'https://ideogram.ai',
  domain      = 'ideogram.ai',
  badge       = 'freemium',
  best_for    = 'AI image generation, text-in-image, face swap, canvas editing',
  description = $d23$Ideogram 3.0 (2026) adds Face Swap, Magic Fill/Extend canvas tools, and multi-image style reference up to 3 images. Improved hand rendering and reliable multilingual text in 3+ languages.$d23$,
  description_long = $dl23$Ideogram is an AI image generation platform that has built a strong reputation for accurate text rendering within generated images — a capability most competing models struggle with. It is used by designers, marketers, and content creators who need text-bearing visuals such as posters, product labels, social media graphics, and mock-ups.

Ideogram 3.0, released in 2026, is the most feature-complete version of the platform to date. Face Swap allows users to replace faces in generated or uploaded images with a specified reference face, enabling personalized imagery without a separate dedicated tool. Magic Fill and Magic Extend add canvas editing capabilities: Magic Fill removes unwanted objects and fills the area with contextually appropriate content, while Magic Extend expands the image canvas in any direction while maintaining visual consistency with the original.

Multi-image style reference supports up to three reference images in a single generation, allowing the model to blend stylistic elements from multiple sources. This is particularly useful for maintaining brand consistency across a series of images or iterating on a creative direction that draws from several inspirations simultaneously.

Hand rendering is noticeably improved in Ideogram 3.0, addressing one of the most persistent quality complaints about AI image generators. Long-text support has also improved — the model can render extended text strings within an image with lower error rates. Multilingual text rendering is confirmed reliable for Spanish, Italian, and French, expanding the platform's utility for non-English markets.

Pricing in 2026 is structured across four tiers: Free at 10 slow generations per day with no payment required, Basic at $8/month, Plus at $20/month, and Pro at $48/month. Higher tiers unlock faster generation speeds, priority queue access, and commercial use rights.

Ideogram is best for designers and marketers who need reliable text-in-image generation, canvas editing for post-production fixes, and style-consistent image creation from multiple references.$dl23$,
  pros = ARRAY[
    'Best-in-class text rendering within images — accurate multi-word and multilingual text',
    'Face Swap built in — no separate tool required for personalized imagery',
    'Magic Fill and Magic Extend for non-destructive canvas editing and image expansion',
    'Multi-image style reference (up to 3) for blended or brand-consistent generation',
    'Generous free tier: 10 slow generations per day with no credit card required'
  ],
  cons = ARRAY[
    'Slow generations on the free tier — paid plan required for practical production speed',
    'Pro at $48/month is higher-priced than some competitors with similar output quality',
    'Less suitable for photorealistic scenes compared to FLUX or Midjourney V8',
    'Multilingual text reliability confirmed for 3 languages — other languages may still produce errors'
  ]
WHERE slug = 'ideogram' AND lang = 'en';

-- ============================================================
-- 24. SEEDANCE 2.0
-- ============================================================
UPDATE tools SET
  name        = 'Seedance 2.0',
  url         = 'https://seed.bytedance.com',
  domain      = 'seed.bytedance.com',
  badge       = 'free',
  best_for    = 'AI video generation, multi-modal input, character consistency, 1080p',
  description = $d24$Seedance 2.0 by ByteDance (February 12 2026) accepts text, images, audio, and video inputs. Temporal Anchor eliminates flickering, produces 1080p clips up to 60 seconds, 30-40% faster than v1.$d24$,
  description_long = $dl24$Seedance 2.0 is an AI video generation model developed by ByteDance, the parent company of TikTok. Released February 12, 2026, it is one of the most capable open-access video generation models available, notable for accepting a wide range of input modalities and for its Temporal Anchor technology that addresses character consistency across frames.

Seedance 2.0 accepts up to 12 assets per generation request, spanning text prompts, reference images, audio tracks, and existing video clips. This multimodal input capability allows creators to anchor a generation with visual references, add a specific audio track, and direct the narrative with text — all in a single request. Few competing video generation models support this breadth of input types simultaneously.

Temporal Anchor is the key technical differentiator in Seedance 2.0. It is a framework for maintaining consistent character appearance, object identity, and scene continuity across the full length of a generated clip. Earlier video generation models suffered from morphing and flickering — where a character's face or an object's appearance would change subtly or abruptly between frames. Temporal Anchor eliminates this, enabling consistent characters across clips up to 60 seconds in length.

Output is 1080p native, with no upscaling required. Generation speed is 30–40% faster than Seedance 1.0, making the model more practical for iterative production workflows. The free tier includes commercial rights and outputs without watermarks — a significant advantage over competitors that restrict commercial use to paid plans.

Seedance 2.0 is integrated into Krea AI, HeyGen, and ComfyUI, allowing users to access its capabilities within those platforms' own workflows and interfaces without managing a separate API integration.

Seedance 2.0 is best for video creators, marketers, and developers who need consistent-character video generation at 1080p with no watermark and commercial rights included at no cost, and for teams that use Krea AI, HeyGen, or ComfyUI in their existing workflows.$dl24$,
  pros = ARRAY[
    'Accepts up to 12 mixed inputs (text, image, audio, video) in a single generation request',
    'Temporal Anchor eliminates morphing and flickering — consistent characters up to 60 seconds',
    '1080p native output at 30-40% faster speed than Seedance 1.0',
    'Free tier includes commercial rights and no watermark — rare among AI video generators',
    'Integrated into Krea AI, HeyGen, and ComfyUI — available within existing workflows'
  ],
  cons = ARRAY[
    'Less established brand recognition compared to Kling AI, Runway, or Sora',
    'ByteDance origin may raise data privacy concerns for some enterprise users',
    'Maximum 60-second clips — not suitable for long-form or full-scene video production',
    'Community and third-party documentation is still maturing compared to more established tools'
  ]
WHERE slug = 'seedance-2-0' AND lang = 'en';

-- ============================================================
-- 25. PIKA
-- ============================================================
UPDATE tools SET
  name        = 'Pika',
  url         = 'https://pika.art',
  domain      = 'pika.art',
  badge       = 'freemium',
  best_for    = 'AI video generation, physics-aware motion, lip-sync, digital twin',
  description = $d25$Pika 2.5 introduces physics-aware video generation (weight, liquid flow), integrated sound effects, Pikaformance lip-sync, PikaStream for live AI video calls, and personalized AI Selves.$d25$,
  description_long = $dl25$Pika is an AI video generation platform focused on expressive, physics-grounded video creation with a suite of features that extend beyond simple text-to-video generation. It has grown into a multi-product platform covering video generation, lip-sync, live video AI, and personalized digital twins — all accessible from a single account.

Pika 2.5 introduces physics-aware generation as a core capability. The model simulates real-world physical properties — object weight, squish and deformation, and liquid flow dynamics — producing video where motion behaves according to physical laws rather than learned statistical patterns alone. A falling object decelerates correctly, a ball compresses on impact, and water flows with realistic surface tension. This level of physical plausibility distinguishes Pika 2.5 from most competing video generators.

Integrated sound effects are automatically matched to the action in a generated video. Pika analyzes the visual content and adds contextually appropriate audio — footsteps, impacts, ambient sound, and environmental audio — without requiring separate audio production or manual sync. This accelerates production for social media content, advertisements, and short-form video where audio and visual must be tightly aligned.

Pikaformance is a talking-face lip-sync tool: users supply a portrait and an audio track, and Pika generates a realistic lip-synced video of the face speaking the provided audio. PikaStream 1.0 takes this further — it is a real-time system that gives AI agents a face and voice for live video calls, enabling AI-powered presenters or customer service avatars to participate in live video interactions.

Pika AI Selves creates a personalized AI digital twin from a user's face, voice, and memory. The twin can represent the user in interactions, generate personalized video messages, and maintain a consistent identity across sessions. Pricing spans four tiers: Free at 80 credits per month, Standard at $8/month, Pro at $28/month, and Fancy at $76/month on annual billing.

Pika is best for content creators, marketers, and developers who need physics-realistic video with integrated audio, and for anyone exploring AI-driven live video, lip-sync, or personalized digital identity.$dl25$,
  pros = ARRAY[
    'Physics-aware generation: weight, squish, liquid flow — motion follows real physical laws',
    'Integrated sound effects auto-matched to video action — no separate audio production needed',
    'Pikaformance lip-sync: realistic talking-face video from portrait + audio input',
    'PikaStream 1.0: real-time AI face and voice for live video calls and AI agent interactions',
    'Pika AI Selves: personalized digital twin with face, voice, and persistent memory'
  ],
  cons = ARRAY[
    'Free tier limited to 80 credits/month — quickly exhausted in active production use',
    'Physics simulation quality varies with complex multi-object scenes',
    'PikaStream and AI Selves are new features — edge cases and stability still maturing',
    'Fancy plan at $76/month (annual) is expensive compared to single-purpose video tools',
    'Less suitable for long-form or cinematic video compared to Kling AI or Sora'
  ]
WHERE slug = 'pika' AND lang = 'en';
-- ============================================================
-- Update 5 tools (EN) — May 2026
-- Tools: luma-ai, heygen, adobe-firefly, canva-ai, krea-ai
-- Run in Supabase SQL Editor
-- After running: translate to es, de, ru, ua, he, fr, pt
-- ============================================================

-- ============================================================
-- 26. LUMA AI
-- ============================================================
UPDATE tools SET
  name        = 'Luma AI',
  url         = 'https://lumalabs.ai',
  domain      = 'lumalabs.ai',
  badge       = 'freemium',
  best_for    = 'AI video generation, keyframe editing, 1080p quality',
  description = $d26$Ray3 delivers native 1080p video at 4x faster speed and 3x lower cost. Ray3 Modify enables keyframe and character reference editing; Modify with Instructions applies natural language changes across clips.$d26$,
  description_long = $dl26$Luma AI is an AI video generation platform known for the Dream Machine product and its underlying Ray model series. The platform is accessible through a web app with a free tier and paid plans for higher-volume usage, and its models are also licensed to other platforms via API.

Ray3, the current generation model released in 2026, is a substantial leap over its predecessor. Native 1080p output is now the default resolution — no separate upscaling pass required. Generation speed is four times faster than Ray2, and the cost per generation has dropped by three times, making high-volume creative work meaningfully more affordable for professional users.

Ray3 Modify is an editing mode that allows users to alter existing video clips rather than generating from scratch. Keyframe controls let creators specify exactly what should appear at the start, middle, and end of a clip, while character reference controls maintain subject identity and appearance across edits and generations. Start and End Frame control gives precise authority over what a video begins and ends with — useful for transitional shots and seamless loops.

Modify with Instructions extends editing to natural language: users describe the changes they want across a clip in plain text, and the model applies them directionally. This lowers the skill floor for video editing while giving experienced users a faster iteration path than frame-by-frame control.

Enterprise Zero-Retention is a data privacy option for business customers that ensures uploaded content and generated outputs are not stored by Luma AI's infrastructure after the session ends.

Luma AI is best for video creators, agencies, and developers who want high-fidelity 1080p video generation with editing capabilities, and for enterprises that require data privacy guarantees on AI-generated content.$dl26$,
  pros = ARRAY[
    'Ray3 delivers native 1080p at 4x faster generation and 3x lower cost vs Ray2',
    'Ray3 Modify: keyframe and character reference controls for precise clip editing',
    'Start/End Frame control for seamless transitions and loops',
    'Modify with Instructions: natural language directed changes across full clips',
    'Enterprise Zero-Retention option for data privacy on sensitive projects'
  ],
  cons = ARRAY[
    'Free tier limits clip length and monthly generation volume',
    'High-quality 1080p generations consume credits quickly on paid plans',
    'Character reference consistency can break on complex scenes or rapid motion',
    'Fewer built-in collaboration features than dedicated video production platforms'
  ]
WHERE slug = 'luma-ai' AND lang = 'en';

-- ============================================================
-- 27. HEYGEN
-- ============================================================
UPDATE tools SET
  name        = 'HeyGen',
  url         = 'https://heygen.com',
  domain      = 'heygen.com',
  badge       = 'paid',
  best_for    = 'AI avatar videos, 4K upscaling, brand-consistent content',
  description = $d27$Avatar V creates photorealistic avatars from a 15-second webcam recording. Video upscaling to 4K at 120fps, Brand System for auto-extracted brand assets, and Seedance 2.0 for cinematic AI video.$d27$,
  description_long = $dl27$HeyGen is an AI video platform built around digital avatar creation and branded video production. It is primarily used by marketing teams, content creators, and enterprises that need to produce professional video at scale without studio equipment or on-camera talent.

Avatar V is the most realistic avatar model in HeyGen's lineup to date. A 15-second webcam recording is all that is required to generate a photorealistic personal avatar — significantly reducing the time and equipment barrier compared to previous avatar creation workflows. The resulting avatar matches the user's appearance, voice, and mannerisms with high fidelity.

Video quality has been upgraded with 4K upscaling and frame interpolation that takes standard 24fps footage to 120fps. The result is smooth, cinema-quality output that holds up at large screen sizes — relevant for digital signage, conference displays, and high-resolution marketing assets.

Brand System addresses consistency at the organizational level: users supply a company website URL and HeyGen automatically extracts the brand's logo, color palette, and typography. These assets are then applied automatically to generated videos, ensuring every output matches brand standards without manual design work.

Seedance 2.0, integrated into the platform, is an AI video generation model focused on cinematic motion and scene composition. Instant Highlights v2 processes long-form video content and automatically extracts platform-ready short clips optimized for social media formats and durations.

HeyGen uses a Premium Credits system for billing, with upfront cost estimates displayed before generation so users can see exactly what a job will cost before committing. HeyGen is best for marketing teams, L&D professionals, and creators who need branded, high-quality avatar video at scale.$dl27$,
  pros = ARRAY[
    'Avatar V: photorealistic avatar from a 15-second webcam recording',
    'Video upscaling to 4K with frame interpolation from 24fps to 120fps',
    'Brand System auto-extracts logo, colors, and fonts from company website URL',
    'Seedance 2.0 integration for cinematic AI video generation',
    'Upfront cost estimates in Premium Credits system before every generation'
  ],
  cons = ARRAY[
    'Paid-only — no meaningful free tier for ongoing production work',
    'Premium Credits can deplete quickly for high-resolution or long-form video',
    'Avatar realism, while improved, is still identifiable as AI in close-up shots',
    'Brand System auto-extraction may require manual correction for complex brand guidelines'
  ]
WHERE slug = 'heygen' AND lang = 'en';

-- ============================================================
-- 28. ADOBE FIREFLY
-- ============================================================
UPDATE tools SET
  name        = 'Adobe Firefly',
  url         = 'https://firefly.adobe.com',
  domain      = 'firefly.adobe.com',
  badge       = 'paid',
  best_for    = 'AI image and video generation, Creative Cloud integration, brand-safe content',
  description = $d28$Firefly AI Assistant (public beta, April 2026) enables conversational multi-step agentic workflows across Photoshop, Premiere, and Lightroom. Unlimited AI generation for all paid subscribers — credit limits removed.$d28$,
  description_long = $dl28$Adobe Firefly is Adobe's family of generative AI models integrated across Creative Cloud applications including Photoshop, Premiere Pro, Lightroom, Illustrator, and Express. It is positioned as the brand-safe, commercially licensed AI generation layer for professional creative work — all models are trained on licensed content and Adobe Stock, avoiding the copyright ambiguity of models trained on scraped web data.

The Firefly AI Assistant, launched in public beta on April 27, 2026, is the most significant capability expansion to date. It introduces conversational, multi-step agentic workflows: users describe a creative task in natural language and the assistant executes a sequence of operations across multiple Creative Cloud apps without manual switching. A single prompt can trigger asset generation in Firefly, compositing in Photoshop, color grading in Lightroom, and assembly in Premiere.

Precision Flow, currently in beta, changes how generation results are presented. A single prompt generates a range of results on a visual spectrum, and users navigate between them using a slider rather than regenerating repeatedly. This makes it faster to explore the design space and land on the output that fits.

Credit limits have been removed entirely for all paid Creative Cloud subscribers, enabling unlimited AI generation without metering. The model roster has expanded to over 30 models, adding Kling 3.0, Veo 3.1, Runway Gen-4.5, and ElevenLabs Multilingual v2 alongside Adobe's proprietary models.

Custom Models, now in public beta, allow users to fine-tune Firefly on their own image libraries, creating a generation model that reflects a specific visual brand or art direction.

Adobe Firefly is best for professional designers and creative teams already in the Adobe ecosystem who need commercially safe AI generation integrated into their existing production workflows.$dl28$,
  pros = ARRAY[
    'Firefly AI Assistant: conversational agentic workflows across Photoshop, Premiere, Lightroom',
    'Unlimited AI generation for all paid subscribers — no credit limits',
    'Precision Flow: explore a range of results with a slider instead of repeated regeneration',
    '30+ models including Kling 3.0, Veo 3.1, Runway Gen-4.5, ElevenLabs Multilingual v2',
    'Commercially licensed training data — brand-safe for professional and enterprise use'
  ],
  cons = ARRAY[
    'Requires an active Adobe Creative Cloud subscription — no standalone free product',
    'Agentic workflows and Precision Flow are still in beta — expect rough edges',
    'Custom Models require a library of owned images and fine-tuning time to set up',
    'Full value is only realized by users deeply embedded in the Adobe app ecosystem'
  ]
WHERE slug = 'adobe-firefly' AND lang = 'en';

-- ============================================================
-- 29. CANVA AI
-- ============================================================
UPDATE tools SET
  name        = 'Canva AI',
  url         = 'https://canva.com',
  domain      = 'canva.com',
  badge       = 'freemium',
  best_for    = 'AI design, agentic editing, brand consistency, web experiences',
  description = $d29$Canva AI 2.0 (Canva Create 2026) introduces agentic editing, voice prompts, Brand Intelligence, and Memory Library. Canva Code 2.0 builds full interactive web experiences from a single prompt.$d29$,
  description_long = $dl29$Canva AI is the AI-powered design layer embedded throughout the Canva platform, which has over 200 million users worldwide. The AI features span image generation, writing assistance, video editing, code generation, and now full agentic design workflows — all accessible within the same visual editor that non-designers have used for years.

Canva AI 2.0, launched at Canva Create 2026, is a foundational upgrade. Agentic editing allows users to describe design changes conversationally and have the platform execute multi-step operations automatically — resizing, recoloring, rearranging, and reformatting without manual interaction with individual elements. Voice prompts extend this to spoken instructions, removing the need to type for users who prefer verbal direction.

Brand Intelligence automates brand consistency at the organizational level: users supply a company website URL and Canva automatically extracts fonts, color palettes, and visual style. These are applied consistently across all generated and edited designs, reducing the manual effort of brand compliance checking.

Memory Library is a cross-project style memory system. Design choices, preferred layouts, and brand elements made in one project are remembered and applied intelligently to future projects — creating continuity across a user's entire design history rather than starting fresh each time.

Canva Code 2.0 generates full interactive web experiences from a single prompt, including navigation, animations, and functional elements — not just static mockups. Connectors integrate Canva directly with Slack, Gmail, Google Drive, Notion, Zoom, HubSpot, Linear, and Atlassian tools. Canva Offline mode enables design work without an internet connection, and the Cavalry animation tool is now free for all users.

Canva AI is best for marketers, small business owners, educators, and non-designers who need polished, brand-consistent visual content quickly, and for teams that want design and communication tools in a single platform.$dl29$,
  pros = ARRAY[
    'Agentic editing and voice prompts execute multi-step design changes conversationally',
    'Brand Intelligence auto-extracts fonts, colors, and style from a company website URL',
    'Memory Library maintains cross-project style consistency without manual setup',
    'Canva Code 2.0 generates full interactive web experiences from a single prompt',
    'Connectors with Slack, Gmail, Notion, Zoom, HubSpot, Linear, Atlassian, and more'
  ],
  cons = ARRAY[
    'Agentic features are new — complex multi-step instructions may produce inconsistent results',
    'Heavy reliance on Canva ecosystem limits portability of designs to other tools',
    'Free tier restricts access to premium templates, brand kits, and some AI features',
    'Canva Code 2.0 web experiences are not a substitute for custom-built production websites'
  ]
WHERE slug = 'canva-ai' AND lang = 'en';

-- ============================================================
-- 30. KREA AI
-- ============================================================
UPDATE tools SET
  name        = 'Krea AI',
  url         = 'https://krea.ai',
  domain      = 'krea.ai',
  badge       = 'freemium',
  best_for    = 'AI image generation, style transfer, node workflows, region editing',
  description = $d30$Krea 2 foundation model (May 12, 2026) built from scratch for aesthetics and style transfer. Krea Edit adds region editing, relighting, and camera changes. Krea Nodes builds visual workflows from text.$d30$,
  description_long = $dl30$Krea AI is a generative AI platform focused on image creation, editing, and visual workflow building. It has established a following among artists and designers who prioritize aesthetic quality and style fidelity over raw photorealism — Krea's models are tuned for visual coherence and artistic style transfer rather than documentary accuracy.

Krea 2, the foundation image model released May 12, 2026, was built from scratch rather than fine-tuned from an existing base model. The development focus was aesthetics and style transfer: the model is designed to understand and replicate visual styles from reference images with high accuracy, making it particularly effective for artists who want AI outputs that match a specific artistic direction without extensive prompt engineering.

Krea Edit, released March 9, 2026, is a region-based editing tool that allows targeted changes to specific areas of an image. Capabilities include region editing for isolated modifications, relighting to change the direction and quality of light sources in a scene, camera changes to simulate different focal lengths and perspectives, and image expansion to extend the composition beyond its original boundaries — all applied non-destructively.

A major interface redesign in March 2026 unified the navigation, introduced drag-and-drop asset management, and added a voice mode for hands-free prompt input. Krea Nodes allows users to build multi-step generation workflows by describing them in text — the system converts natural language descriptions of a workflow into a functional node graph.

Seedance 2.0 is available on all Krea paid plans, adding video generation capability alongside the platform's image-focused tools.

Krea AI is best for artists, designers, and creative technologists who prioritize aesthetic quality and style control in AI image generation, and for users who want to build custom generation pipelines through a visual node editor.$dl30$,
  pros = ARRAY[
    'Krea 2 foundation model built from scratch with focus on aesthetics and style transfer',
    'Krea Edit: region editing, relighting, camera changes, and image expansion in one tool',
    'Krea Nodes: build node-based generation workflows from a plain text description',
    'Voice mode and redesigned unified interface for faster creative iteration',
    'Seedance 2.0 video generation included on all paid plans'
  ],
  cons = ARRAY[
    'Smaller user community and fewer learning resources than Midjourney or Adobe Firefly',
    'Krea Nodes workflow builder has a learning curve for users unfamiliar with node graphs',
    'Free tier limits resolution and generation volume for ongoing creative work',
    'Less suited for photorealistic output — strengths are aesthetic and artistic styles'
  ]
WHERE slug = 'krea-ai' AND lang = 'en';
