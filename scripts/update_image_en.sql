-- Update EN content for image category tools
-- Run in Supabase SQL Editor
-- After running: translate-tools.py ru es de ua he fr pt --slugs=midjourney,stable-diffusion,flux,ideogram,adobe-firefly,recraft-ai,dall-e-3

-- ============================================================
-- MIDJOURNEY
-- ============================================================
UPDATE tools SET
  badge = 'paid',
  description = 'Top quality AI art with Midjourney V7. No free tier — starts at $10/month. Industry standard for designers and artists.',
  description_long = 'Midjourney is widely regarded as the highest-quality AI image generation service, consistently producing artwork with superior aesthetics, lighting, and composition. It operates through a Discord bot and a web platform at midjourney.com.

Midjourney V7 is the current default model as of 2026, delivering the best image quality in the service''s history. V8 has appeared in benchmarks but V7 remains the production default. The platform has no free trial — all access requires a paid subscription.

Pricing: Basic $10/month (200 images/month), Standard $30/month (unlimited relaxed, 15 fast hours), Pro $60/month (30 fast hours, stealth mode), Mega $120/month (60 fast hours). Annual billing saves 20%. Companies with over $1M annual revenue must use Pro or Mega for commercial use.

The web platform adds features beyond Discord: editing tools, inpainting, outpainting, style reference, and character consistency across generations. The /blend command merges images; /describe reverse-engineers prompts from photos.

Limitations: no free tier at all, which is unusual among competitors. The aesthetic leans toward a distinctive "Midjourney look" that is hard to fully suppress. Not open source — no local or API access for general users.

Best for professional designers, artists, and creative agencies who need the best-looking output and can justify the subscription cost. Not suitable for developers needing API access or users who want free experimentation.',
  pros = ARRAY[
    'V7 produces best-in-class image quality and aesthetics',
    'Web platform adds inpainting, outpainting, style and character reference',
    'Unlimited relaxed generations on Standard plan ($30/mo)',
    'Strong community and prompt ecosystem on Discord'
  ],
  cons = ARRAY[
    'No free trial — paid subscription required from day one',
    'No open API for developers on standard plans',
    'Distinctive visual style hard to fully avoid',
    'Commercial license requires Pro/Mega for companies over $1M revenue'
  ],
  best_for = 'Professional AI art and design'
WHERE slug = 'midjourney' AND lang = 'en';

-- ============================================================
-- STABLE DIFFUSION
-- ============================================================
UPDATE tools SET
  badge = 'free',
  description = 'Open-source image generation by Stability AI. SD 3.5 is the current release — run locally or use via API with full control over every parameter.',
  description_long = 'Stable Diffusion is the foundational open-source text-to-image model family released by Stability AI, and the technology that powers most of the open-source AI image generation ecosystem. Unlike proprietary services, Stable Diffusion''s model weights are freely available to download, fine-tune, and run locally on consumer hardware.

The current release is Stable Diffusion 3.5. SD 3.5 Large has 8.1 billion parameters and uses the MM-DiT architecture with three text encoders for improved prompt understanding. SD 3.5 Medium (2.5B parameters) runs on consumer GPUs. Both are available under a free Community License for non-commercial use; commercial use requires a paid license from Stability AI.

Stability AI itself had a near-collapse in early 2024 — mass layoffs and a funding crisis. The company staged a remarkable turnaround under new leadership, with Sean Parker as Executive Chairman and James Cameron joining the board. All debt was erased by December 2024 and the company reported triple-digit revenue growth.

The model runs locally via interfaces like ComfyUI or Automatic1111, or via the Stability AI API (paid, credit-based). Community fine-tunes and LoRA models number in the thousands on platforms like Civitai and Hugging Face, covering every conceivable style.

Limitations: raw quality no longer leads the field — Flux and Midjourney V7 produce better output. Running locally requires a capable GPU (8GB+ VRAM recommended). Commercial use of the weights requires a separate license agreement.

Best for developers and researchers who want full control — local execution, fine-tuning, custom pipelines, and no per-image fees.',
  pros = ARRAY[
    'Free model weights — run locally with zero per-image cost',
    'SD 3.5 Large: 8.1B params, MM-DiT architecture, strong prompt adherence',
    'Thousands of community fine-tunes and LoRAs on Civitai and Hugging Face',
    'Stability AI turnaround complete — company financially stable as of 2025'
  ],
  cons = ARRAY[
    'Raw output quality behind Flux and Midjourney V7',
    'Requires 8GB+ VRAM for local use; setup takes time',
    'Commercial use of weights requires paid license from Stability AI',
    'No managed service — self-hosting means you own the maintenance'
  ],
  best_for = 'Local AI image generation and fine-tuning'
WHERE slug = 'stable-diffusion' AND lang = 'en';

-- ============================================================
-- FLUX
-- ============================================================
UPDATE tools SET
  badge = 'free',
  description = 'Open-source image model family by Black Forest Labs. FLUX.2 (Nov 2025) delivers top-tier quality — free weights, sub-second generation with FLUX.2 klein.',
  description_long = 'Flux is a family of open-source text-to-image models developed by Black Forest Labs, founded by the original creators of Stable Diffusion. Since the original FLUX.1 launch in mid-2024, the models have consistently ranked at the top of image quality leaderboards.

The FLUX.2 generation launched in November 2025 and includes multiple model variants: FLUX.2 [dev] (32B parameters, text-to-image plus image editing), FLUX.2 [pro] (balanced quality/speed), FLUX.2 [max] (highest quality), and FLUX.2 [flex] (adjustable steps). FLUX.2 [klein], released January 2026, is a 4B/9B parameter model that generates images in under one second on consumer GPUs. FLUX Kontext adds context-aware and conversational image generation.

Core model weights are open-source and free to download. API access is available via Black Forest Labs directly (credit-based, ~$0.04/image for FLUX.1 Pro), and via third-party platforms including fal.ai, Replicate, Cloudflare Workers AI, and Azure AI Foundry.

The model handles text rendering significantly better than most alternatives. FLUX.2 [klein]''s sub-second generation speed makes it viable for real-time applications and consumer GPU setups that previously required cloud inference.

Limitations: the largest models (FLUX.2 dev at 32B) require significant VRAM for local use. Pricing on managed APIs adds up for high-volume generation. The model ecosystem is less mature than Stable Diffusion in terms of community fine-tunes.

Best for developers, researchers, and power users who want the highest open-source image quality without proprietary lock-in.',
  pros = ARRAY[
    'FLUX.2 [klein] generates images in under 1 second on consumer GPUs',
    'Open weights — free to download, fine-tune, and run locally',
    'FLUX.2 dev at 32B params: best open-source quality available',
    'Available on fal.ai, Replicate, Cloudflare Workers AI, Azure'
  ],
  cons = ARRAY[
    'FLUX.2 dev (32B params) requires heavy VRAM for local inference',
    'Community fine-tune ecosystem smaller than Stable Diffusion',
    'Managed API costs add up at high volume',
    'FLUX Kontext still relatively new — less tested in production'
  ],
  best_for = 'High-quality open-source image generation'
WHERE slug = 'flux' AND lang = 'en';

-- ============================================================
-- IDEOGRAM
-- ============================================================
UPDATE tools SET
  badge = 'freemium',
  description = 'Best AI for text inside images. Ideogram 3.0 adds character consistency. Posters, logos, book covers with accurate typography.',
  description_long = 'Ideogram is an AI image generation platform with a unique specialization: it is the most accurate AI tool for rendering legible, well-formed text inside generated images. This capability enables use cases that other models struggle with — posters, greeting cards, book covers, logos, and social media graphics where typography is part of the design.

Ideogram 3.0 launched in March 2025 and added character consistency: you can now maintain the same character across multiple generated images by passing a reference image. This significantly expands use cases into sequential storytelling, product mockups, and brand character development.

Pricing: Free plan includes 10 credits per week. Plus is $15/month, Pro is $20/month, Team is $42/user/month, Enterprise pricing is custom. API pricing for Ideogram 3.0: Turbo quality at $0.0375/image, Default at $0.075/image, High quality at $0.1125/image.

Ideogram 3.0 generates images at up to 2048×2048 resolution and supports various aspect ratios. The interface is clean and web-based, with prompt suggestions and style presets. Batch generation and private mode are available on paid plans.

Limitations: while text accuracy is best-in-class, overall aesthetic quality for photorealistic images still trails Midjourney V7 and FLUX.2. The free tier''s 10 credits per week is very limited for serious use.

Best for designers, marketers, and content creators who regularly need images with text — particularly those creating social media content, promotional materials, or branded assets.',
  pros = ARRAY[
    'Ideogram 3.0: best-in-class text rendering inside generated images',
    'Character consistency added in v3.0 — same face across multiple images',
    'Pro plan at $20/month — competitive pricing vs Midjourney ($30+)',
    'Clean web interface with style presets and aspect ratio controls'
  ],
  cons = ARRAY[
    'Free tier is only 10 credits per week — very limited',
    'Photorealistic quality trails Midjourney V7 and FLUX.2',
    'Character consistency requires reference image — not fully automatic',
    'API usage billed separately from subscription credits'
  ],
  best_for = 'Images with text: posters, logos, book covers'
WHERE slug = 'ideogram' AND lang = 'en';

-- ============================================================
-- ADOBE FIREFLY
-- ============================================================
UPDATE tools SET
  badge = 'freemium',
  description = 'Adobe''s AI inside Photoshop and Illustrator. Image Model 4 delivers photorealistic output. Copyright-safe for commercial use.',
  description_long = 'Adobe Firefly is Adobe''s generative AI model family, integrated throughout the Creative Cloud suite and accessible as a standalone platform at firefly.adobe.com. Its defining differentiator is that Firefly was trained exclusively on licensed stock images and Adobe Stock content — making all output commercially safe without copyright risk.

Firefly Image Model 4 and Image Model 4 Ultra are the current releases, announced at Adobe MAX London and rolling out through 2026. Image Model 4 delivers significant improvements in photorealism, text rendering, and prompt fidelity compared to Model 3. Image Model 4 Ultra is the highest-quality variant. The platform now also includes Firefly Video Model (out of beta), plus audio and vector generation.

Pricing uses a credit system: Free plan includes 25 generative credits/month. Standard is $9.99/month (2,000 credits). Pro is $19.99/month (4,000 credits). Pro Plus is approximately $25/month discounted from $49.99 (10,000 credits). Premium is $199.99/month (50,000 credits). Firefly is also included in Creative Cloud plans, making it free for existing CC subscribers within their credit allocation.

Firefly''s Generative Fill in Photoshop is its most widely used feature: select any area, describe what you want, and the AI fills it seamlessly while matching the surrounding context. Generative Expand extends images beyond their original borders. Text effects generate stylized typography.

Limitations: generative credits run out quickly on heavy use. The aesthetic can feel overly polished or stock-photo-like compared to Midjourney. Standalone plans are relatively expensive for users who don''t already have Creative Cloud.

Best for Creative Cloud users, marketing teams, and commercial designers who need commercially safe AI-generated content integrated directly into their existing Photoshop/Illustrator workflow.',
  pros = ARRAY[
    'Image Model 4: major photorealism and prompt fidelity gains over Model 3',
    'All output commercially safe — trained on licensed content only',
    'Generative Fill in Photoshop is best-in-class contextual editing',
    'Free for existing Creative Cloud subscribers within credit allocation'
  ],
  cons = ARRAY[
    'Credits deplete fast on heavy use — even Pro tier (4,000/month)',
    'Aesthetic can feel overly polished vs Midjourney or Flux',
    'Standalone plans expensive for non-Creative Cloud users',
    'Video generation still less mature than dedicated video AI tools'
  ],
  best_for = 'Commercial design in Photoshop and Illustrator'
WHERE slug = 'adobe-firefly' AND lang = 'en';

-- ============================================================
-- RECRAFT AI
-- ============================================================
UPDATE tools SET
  badge = 'freemium',
  description = 'Recraft V4 topped the AI image leaderboard in 2026 — outranking Midjourney. Unique: generates true SVG vector graphics. 50 free daily credits.',
  description_long = 'Recraft AI is a generative image platform with two unique capabilities: it generates true scalable vector graphics (SVG), and its latest model topped the Hugging Face Text-to-Image Arena leaderboard in early 2026, outranking Midjourney V7, DALL-E 3, and FLUX.

Recraft V4 launched in February 2026 and immediately outperformed all competitors on the benchmark leaderboard — a notable achievement for a team of approximately 50 people. V3 had already topped the same leaderboard in late 2024. Model variants: V4 Standard (raster, 1024×1024), V4 Vector (true SVG output), V4 Pro (raster, 2048×2048), V4 Pro Vector (high-resolution vector).

The vector output is genuine SVG with clean paths, not a rasterized image converted to vector format. The generated SVGs are editable in Illustrator, Figma, or any vector editor — and are resolution-independent. This is unique among commercially available AI image generators.

Pricing: Free plan includes 50 daily credits, personal and public use only. Paid plans start at $10/month (1,000 credits, commercial rights, private generations). Pro is $25/month. Team is $30/user/month. API access via fal.ai runs approximately $0.04/image for raster and $0.08/image for vector.

Limitations: free plan does not allow commercial use. The credit system can be limiting for high-volume workflows. The platform is relatively new, with a smaller community compared to Midjourney or Stable Diffusion.

Best for designers, brand teams, and illustrators who need commercially usable vector assets or the best raster quality available — especially for icons, logos, and design system assets.',
  pros = ARRAY[
    'V4 topped the Hugging Face leaderboard in 2026 — beats Midjourney V7',
    'True SVG vector output — editable in Illustrator and Figma',
    '50 free daily credits — genuinely usable free tier',
    'V4 Pro: 2048×2048 raster output for large-format assets'
  ],
  cons = ARRAY[
    'Free plan: no commercial use — must upgrade for client work',
    'Small community vs Midjourney or Stable Diffusion ecosystems',
    '$10/month minimum for commercial rights',
    'API only via third-party (fal.ai) — no official SDK yet'
  ],
  best_for = 'Vector graphics and top-ranked AI image quality'
WHERE slug = 'recraft-ai' AND lang = 'en';

-- ============================================================
-- DALL-E 3  (retiring May 12, 2026)
-- ============================================================
UPDATE tools SET
  badge = 'freemium',
  published = false,
  description = 'DALL-E 3 is deprecated — retired May 12, 2026. Replaced by GPT Image 1 (gpt-image-1) in the OpenAI API and ChatGPT.',
  description_long = 'DALL-E 3 was OpenAI''s text-to-image model, notable for its strong prompt adherence and integration into ChatGPT Plus. It has been deprecated and retired on May 12, 2026, along with DALL-E 2.

The replacement is GPT Image 1 (model ID gpt-image-1), which is not a drop-in API replacement — the request and response format changed, requiring clients to be rewritten. GPT Image 2 (gpt-image-2) was launched in April 2026 as the new default in ChatGPT. See the chatgpt-images entry on this site for the current OpenAI image generation tool.

DALL-E 3 ran via the OpenAI API at $0.040–$0.080 per image depending on size, and was included in ChatGPT Plus ($20/month). Azure OpenAI retired the model on February 18, 2026, ahead of the general retirement date.

OpenAI is fully moving away from the DALL-E brand. All new development is under the GPT Image product line, which integrates reasoning before generation and native multi-turn editing.

This page is kept for reference. If you are migrating existing integrations, consult the OpenAI migration documentation.',
  pros = ARRAY[
    'Strong prompt adherence — followed complex multi-sentence instructions accurately',
    'Built into ChatGPT Plus — no separate API setup needed',
    'Consistent output quality, reliable for production use',
    'Good at text rendering compared to earlier models'
  ],
  cons = ARRAY[
    'DEPRECATED — retired May 12, 2026',
    'Replaced by GPT Image 1/2 — API format changed, migration required',
    'Azure OpenAI retired it earlier (February 18, 2026)',
    'No further development or updates'
  ],
  best_for = 'Legacy reference only — use GPT Image instead'
WHERE slug = 'dall-e-3' AND lang = 'en';
