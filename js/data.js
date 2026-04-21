const CATEGORIES = [
  {
    id: 'chat', title: 'AI Chat & Assistants', icon: '💬', color: '#7c6af7',
    tools: [
      { name:'Meta AI', desc:'Free AI assistant by Meta built into WhatsApp, Instagram and Messenger. Powered by Llama 4.', url:'https://meta.ai', aff:'https://meta.ai?ref=aiportal', badge:'free', bestFor:'Social media, everyday tasks, free chat', users:'500M+',
        pros:['Completely free with no usage limits or subscriptions','Built into WhatsApp, Instagram and Messenger — no extra app needed','Powered by Llama 4, competitive with GPT-4 quality'],
        cons:['Privacy concern — Meta uses conversations to improve ad targeting','Less capable than Claude or GPT-4o on complex reasoning tasks'] },
      { name:'ChatGPT', desc:'The most popular AI chat by OpenAI. GPT-4o for text, images and voice. Used by 200M+ people.', url:'https://chat.openai.com', aff:'https://chat.openai.com?ref=aiportal', badge:'freemium', bestFor:'General tasks, writing, coding', users:'200M+',
        pros:['Largest AI model ecosystem — GPT-4o, o3, vision, voice all in one place','GPT Store with 1M+ custom GPTs for every use case','Industry standard — most integrations and third-party tools built for it'],
        cons:['Free tier limits hit quickly; Plus costs $20/month','Can hallucinate confidently without citing sources'] },
      { name:'Microsoft Copilot', desc:'AI assistant built into Windows 11, Edge and Microsoft 365. GPT-4 powered with Bing search. Free for all Windows users.', url:'https://copilot.microsoft.com', aff:'https://copilot.microsoft.com?ref=aiportal', badge:'freemium', bestFor:'Windows, Office 365, everyday tasks', users:'300M+',
        pros:['Free for all Windows 11 users — no signup required','Deep Office 365 integration: works inside Word, Excel, Outlook, Teams','Bing search built-in for real-time, up-to-date answers'],
        cons:['Quality inconsistent compared to native ChatGPT or Claude','Full Microsoft 365 Copilot costs an extra $30/user/month'] },
      { name:'Gemini', desc:'Google\'s AI with real-time internet access. Gemini 2.0 Ultra with multimodal capabilities.', url:'https://gemini.google.com', aff:'https://gemini.google.com?ref=aiportal', badge:'freemium', bestFor:'Current information, Google ecosystem', users:'100M+',
        pros:['Best Google ecosystem integration — Gmail, Docs, Drive, YouTube','Gemini 2.0 Ultra leads multimodal benchmarks in 2026','1M token context window in Gemini 1.5 Pro — handles entire codebases'],
        cons:['Google collects data for product improvement by default','Still behind Claude and GPT-4o on complex instruction-following'] },
      { name:'DeepSeek', desc:'Chinese LLM rivaling GPT-4 quality — completely free. Open API and web interface available.', url:'https://chat.deepseek.com', aff:'https://chat.deepseek.com?ref=aiportal', badge:'free', bestFor:'Free GPT-4 alternative', users:'30M+',
        pros:['GPT-4 quality completely free — no rate limits on web interface','Fully open-source weights available for local and commercial deployment','Exceptional math, coding and reasoning benchmarks'],
        cons:['Chinese company — data privacy concerns for sensitive business content','Servers can be slow or temporarily unavailable during peak hours'] },
      { name:'Claude', desc:'AI assistant by Anthropic. Best for long documents, analysis and code. 200K token context window.', url:'https://claude.ai', aff:'https://claude.ai?ref=aiportal', badge:'freemium', bestFor:'Long texts, document analysis, code', users:'20M+',
        pros:['Best at following complex multi-step instructions without losing context','200K token context — analyze entire books, PDFs or codebases in one go','Fewest hallucinations of any frontier model — most accurate and careful'],
        cons:['No image generation or real-time browsing on free tier','API pricing slightly higher than GPT-4o equivalents per token'] },
      { name:'Perplexity', desc:'AI search with cited sources. Deep Research mode for detailed multi-page analysis on any topic.', url:'https://perplexity.ai', aff:'https://perplexity.ai?ref=aiportal', badge:'freemium', bestFor:'Research, sourced answers', users:'15M+',
        pros:['Every answer cites sources — easy to verify, no blind hallucinations','Deep Research mode produces research-quality multi-page reports','Real-time web search unlike most AI chatbots on free plan'],
        cons:['Weaker at creative writing and nuanced reasoning vs Claude or GPT-4','Unlimited Deep Research requires Pro subscription ($20/month)'] },
      { name:'Grok', desc:'AI by xAI with real-time access to X/Twitter data. Great for trending topics, news and unfiltered answers.', url:'https://x.com/i/grok', aff:'https://x.com/i/grok?ref=aiportal', badge:'freemium', bestFor:'Real-time news, X/Twitter insights', users:'10M+',
        pros:['Real-time X/Twitter data — unmatched for trending topics and social sentiment','Fewer content restrictions than OpenAI or Anthropic models','Free for all X users; SuperGrok unlocks extended capabilities'],
        cons:['X Premium subscription needed for full Grok access ($8/month)','Smaller knowledge base and shorter context than Claude or GPT-4o'] },
    ]
  },
  {
    id: 'agents', title: 'AI Agents & Automation', icon: '🤖', color: '#ff6b35',
    tools: [
      { name:'Microsoft Copilot Studio', desc:'Build and deploy custom AI agents for your business. Direct integration with Office 365 and Teams.', url:'https://copilotstudio.microsoft.com', aff:'https://copilotstudio.microsoft.com?ref=aiportal', badge:'freemium', bestFor:'Enterprise agents, Microsoft ecosystem', users:'1M+',
        pros:['Native Teams, SharePoint and Office 365 integration out of the box','No-code agent builder with enterprise-grade security and compliance (SOC2, GDPR)','Pre-built connectors to 1,000+ business systems'],
        cons:['Per-message pricing can become expensive at scale','Best value only for organizations already on Microsoft 365'] },
      { name:'n8n', desc:'Open-source workflow automation. Chain AI models, APIs and 400+ apps with a visual editor. Self-host or cloud.', url:'https://n8n.io', aff:'https://n8n.io?ref=aiportal', badge:'freemium', bestFor:'Workflow automation, AI pipelines', users:'500K+',
        pros:['Open-source — self-host for unlimited workflows at zero cost','400+ integrations including all major AI APIs (OpenAI, Anthropic, Gemini)','Most flexible routing and data transformation logic of any automation tool'],
        cons:['Steeper learning curve than Make or Zapier — JSON expressions required for advanced flows','Cloud-hosted version gets expensive at scale'] },
      { name:'Make', desc:'Visual automation platform connecting 1,000+ apps. More flexible than Zapier with advanced data routing.', url:'https://make.com', aff:'https://make.com?ref=aiportal', badge:'freemium', bestFor:'Complex automations, app integrations', users:'500K+',
        pros:['Visual canvas makes even complex multi-step workflows easy to read and debug','1,000+ app connectors — more than Zapier at lower price','Handles data transformation, iteration and error handling visually'],
        cons:['Operations-based pricing can be unpredictable for high-volume workflows','No native AI model hosting — always delegates to external API calls'] },
      { name:'AutoGPT', desc:'Open-source autonomous AI agent. Give it a goal — it breaks it into steps and executes them automatically.', url:'https://agpt.co', aff:'https://agpt.co?ref=aiportal', badge:'free', bestFor:'Autonomous tasks, open-source AI agents', users:'200K+',
        pros:['Fully open-source — inspect, fork and modify every component','Runs fully autonomously on long-horizon goals with minimal human input','Active community with plugins for web browsing, file management, coding'],
        cons:['Unreliable on complex tasks — agents can loop or hallucinate mid-execution','Requires technical setup and a funded OpenAI API key'] },
      { name:'Lindy', desc:'Build AI agents for email, scheduling and customer support in minutes. No code needed.', url:'https://lindy.ai', aff:'https://lindy.ai?ref=aiportal', badge:'freemium', bestFor:'Email agents, scheduling, support bots', users:'100K+',
        pros:['Easiest agent builder — deploy a working email or scheduling agent in minutes','Pre-built templates for common business use cases','Native calendar, email and Slack integrations'],
        cons:['Less flexible than n8n or Make for custom multi-step logic','Pricing scales with number of runs — can get expensive for high-volume agents'] },
      { name:'Relevance AI', desc:'No-code platform to build, train and deploy AI agents and multi-agent teams for any business workflow.', url:'https://relevanceai.com', aff:'https://relevanceai.com?ref=aiportal', badge:'freemium', bestFor:'Multi-agent teams, sales and support bots', users:'100K+',
        pros:['Best multi-agent orchestration — create teams of specialized agents that collaborate','Fine-tune agents on your own data and documents with no code','Enterprise security with audit trail and role-based access'],
        cons:['More expensive than simpler tools for basic single-agent use cases','Fewer third-party integrations compared to Make or Zapier'] },
    ]
  },
  {
    id: 'code', title: 'AI for Development', icon: '💻', color: '#2dd4a0',
    tools: [
      { name:'Replit', desc:'Cloud coding environment with AI agent that writes, runs and deploys code directly in the browser.', url:'https://replit.com', aff:'https://replit.com?ref=aiportal', badge:'freemium', bestFor:'Cloud coding, learning, quick deploys', users:'10M+',
        pros:['Zero setup — open browser, start coding in any language instantly','AI agent writes, runs and debugs code in the same environment','Best platform for learning to code and for quick prototypes'],
        cons:['Performance limited vs local development for large projects','Not suitable for complex production codebases'] },
      { name:'GitHub Copilot', desc:'AI code autocomplete inside your editor. Supports 40+ languages with GitHub integration.', url:'https://github.com/features/copilot', aff:'https://github.com/features/copilot?ref=aiportal', badge:'freemium', bestFor:'Autocomplete, IDE integration', users:'2M+',
        pros:['Deepest IDE integration — VS Code, JetBrains, Neovim, Visual Studio and more','Copilot Chat answers questions about your specific codebase with context','GitHub integration links suggestions to the actual repos and PRs'],
        cons:['$10-$19/month cost adds up for individual developers','Occasionally suggests outdated APIs or security-vulnerable patterns'] },
      { name:'v0 by Vercel', desc:'Generates React/Tailwind UI components from text descriptions. Export directly to Next.js.', url:'https://v0.dev', aff:'https://v0.dev?ref=aiportal', badge:'freemium', bestFor:'UI components, React, prototypes', users:'1M+',
        pros:['Best UI component generator — React + Tailwind output is production-ready','Direct export to Next.js projects in one click','200 free credits/month — enough for regular prototyping'],
        cons:['Focused only on frontend UI — no backend logic generation','Generated code can be verbose and needs cleanup for complex components'] },
      { name:'Bolt.new', desc:'Full web app from a prompt with one-click deploy. No environment setup — straight in the browser.', url:'https://bolt.new', aff:'https://bolt.new?ref=aiportal', badge:'freemium', bestFor:'Quick prototypes, fullstack MVP', users:'1M+',
        pros:['Full-stack app from a single prompt — frontend + backend + database','No local setup at all — runs entirely in browser with instant deploy','Integrates with Netlify and Supabase for production-ready deployment'],
        cons:['Complex business logic and edge cases often fail between edits','Token costs add up quickly for large or iterative projects'] },
      { name:'Windsurf', desc:'Free AI-powered IDE by Codeium with Flows — agentic coding that writes and runs code across multiple files simultaneously. Top free alternative to Cursor.', url:'https://codeium.com/windsurf', aff:'https://codeium.com/windsurf?ref=aiportal', badge:'freemium', bestFor:'Free AI IDE, multi-file edits, agentic coding', users:'1M+',
        pros:['Free tier far more generous than Cursor — unlimited code completions','Flows mode writes code across multiple files and runs commands automatically','Based on VS Code — zero learning curve for existing developers'],
        cons:['Newer product — occasional bugs in agentic multi-file editing mode','Smaller community and fewer tutorials than Cursor or GitHub Copilot'] },
      { name:'Cursor', desc:'VS Code-based IDE with built-in AI. Edit entire files with plain-text instructions.', url:'https://cursor.sh', aff:'https://cursor.sh?ref=aiportal', badge:'freemium', bestFor:'AI IDE, code refactoring', users:'500K+',
        pros:['Best multi-file understanding — reads and edits entire codebase with context','Composer mode handles large refactors across dozens of files at once','Works with any language, framework or project structure'],
        cons:['$20/month for Pro after 2-week trial','Resource-intensive — can slow down on older or low-RAM machines'] },
      { name:'Claude Code', desc:'Anthropic\'s CLI agent — the leading AI dev tool in 2026. Full cycle: code, tests, refactor in terminal.', url:'https://claude.ai/code', aff:'https://claude.ai/code?ref=aiportal', badge:'paid', bestFor:'Terminal, complex agentic tasks', users:'200K+',
        pros:['Best at complex, long-context development tasks — entire repo in context','Terminal-native — works in any environment without IDE plugin','Handles complete feature cycles: design, code, tests, refactor autonomously'],
        cons:['Paid only — requires active Anthropic API credits','Requires comfort with terminal-based workflow'] },
    ]
  },
  {
    id: 'writing', title: 'Text & Copywriting', icon: '✍️', color: '#5b8af0',
    tools: [
      { name:'DeepL', desc:'Gold standard for AI translation. Supports 30+ languages with 5,000 free characters per translation.', url:'https://deepl.com', aff:'https://deepl.com?ref=aiportal', badge:'freemium', bestFor:'Accurate translation, multilingual content', users:'100M+',
        pros:['Consistently outperforms Google Translate on nuance and natural phrasing','DeepL Write improves grammar and style in your native language','5,000 free characters per translation — generous for everyday use'],
        cons:['API access requires paid plan','Supports 30 languages — less coverage than Google Translate\'s 130+'] },
      { name:'Grammarly', desc:'Grammar, style and tone checker. Browser extension that works everywhere you write.', url:'https://grammarly.com', aff:'https://grammarly.com?ref=aiportal', badge:'freemium', bestFor:'Grammar, style, text improvement', users:'50M+',
        pros:['Works everywhere — browser extension, Word, Google Docs, Slack','Tone detection tells you how your writing sounds to the reader','Free tier covers most common grammar and spelling corrections'],
        cons:['Advanced style and clarity suggestions locked behind Premium ($12/month)','Can over-correct intentional stylistic choices in creative or informal writing'] },
      { name:'QuillBot', desc:'Free AI paraphrasing and summarizing tool. Rewrites text in 8 different styles, 125 words free per use.', url:'https://quillbot.com', aff:'https://quillbot.com?ref=aiportal', badge:'freemium', bestFor:'Paraphrasing, summarizing, rewriting', users:'30M+',
        pros:['7 paraphrasing modes: Standard, Fluency, Academic, Simple, Creative and more','Chrome extension rewrites any selected text in-place on any website','Summarizer handles long articles in seconds'],
        cons:['Free tier limited to 125 words per paraphrase','Can sometimes subtly change meaning while rewriting'] },
      { name:'Writesonic', desc:'AI for SEO articles, ad copy and social posts with built-in optimization tools.', url:'https://writesonic.com', aff:'https://writesonic.com?ref=aiportal', badge:'freemium', bestFor:'SEO articles, social content', users:'5M+',
        pros:['60+ templates cover every type of marketing content','Chatsonic browses the web for real-time accurate content','Brand Voice feature learns and replicates your writing style'],
        cons:['Output quality inconsistent — often needs heavy editing before publishing','Credits system confusing — different actions cost different amounts'] },
      { name:'Hemingway Editor', desc:'Free readability tool that highlights complex sentences, passive voice and adverbs. No signup needed.', url:'https://hemingwayapp.com', aff:'https://hemingwayapp.com?ref=aiportal', badge:'free', bestFor:'Clear writing, readability, editing', users:'2M+',
        pros:['Completely free online version — no signup, no limits','Color-coded highlights make reading grade level visible at a glance','Simple distraction-free interface — just paste and see results instantly'],
        cons:['No AI writing assistance — analysis and highlighting only','Can flag intentional stylistic choices as "errors" (passive voice, adverbs)'] },
      { name:'Jasper', desc:'Professional AI copywriter with templates for blogs, ads, email campaigns and SEO content.', url:'https://jasper.ai', aff:'https://jasper.ai?ref=aiportal', badge:'paid', bestFor:'Marketing content, SEO writing', users:'100K+',
        pros:['Marketing-specific templates and brand tone control better than generic AI','Jasper Campaigns produces coordinated multi-channel content (ads + emails + social)','Enterprise collaboration: shared brand voice across the whole team'],
        cons:['Very expensive — starts at $39/month','Core AI quality not meaningfully better than Claude or GPT-4 used directly'] },
    ]
  },
  {
    id: 'marketing', title: 'Marketing & SEO', icon: '📈', color: '#e63946',
    tools: [
      { name:'Semrush', desc:'All-in-one SEO platform with AI writing assistant, keyword research and competitor gap analysis.', url:'https://semrush.com', aff:'https://semrush.com?ref=aiportal', badge:'freemium', bestFor:'SEO research, competitor analysis', users:'10M+',
        pros:['Most comprehensive SEO data — 25B+ keywords, 43T backlinks indexed','See exactly what keywords competitors rank for and where you have gaps','Replaces 5-6 separate SEO tools: rank tracker, audit, backlinks, content, ads'],
        cons:['Very expensive — starts at $117/month for meaningful usage','Data overload for beginners without prior SEO knowledge'] },
      { name:'Copy.ai', desc:'AI marketing copy for ads, emails and social media. 90+ templates, workflow automations and free tier.', url:'https://copy.ai', aff:'https://copy.ai?ref=aiportal', badge:'freemium', bestFor:'Ad copy, email campaigns, social posts', users:'10M+',
        pros:['90+ templates cover every marketing use case from cold emails to product descriptions','Workflows automate entire content pipelines end-to-end','Generous free tier with 2,000 words/month'],
        cons:['Output quality variable — often needs heavy editing','Less compelling now that Claude or GPT-4 handle same tasks for less money'] },
      { name:'AdCreative.ai', desc:'Generate high-converting ad creatives with AI. Connects to your ad accounts and learns what performs best.', url:'https://adcreative.ai', aff:'https://adcreative.ai?ref=aiportal', badge:'paid', bestFor:'Ad graphics, Facebook/Google ads', users:'1M+',
        pros:['Directly connects to Facebook Ads, Google Ads and learns what creatives convert','Generates 100+ ad variations at once for A/B testing','AI scores creatives by predicted performance before you spend on them'],
        cons:['Expensive — starts at $21/month for limited credits','Creative quality varies — human review and brand check always required'] },
      { name:'SurferSEO', desc:'Real-time AI content optimization for top Google rankings. Grade your article vs top results as you write.', url:'https://surferseo.com', aff:'https://surferseo.com?ref=aiportal', badge:'paid', bestFor:'On-page SEO, content scoring', users:'150K+',
        pros:['Real-time content score vs actual top 10 Google results as you write','Keyword density and NLP term suggestions backed by SERP data','Integrates with Google Docs and WordPress for in-place scoring'],
        cons:['Grading tool only — does not replace broader SEO strategy','Starts at $79/month'] },
      { name:'Clearscope', desc:'Content optimization platform trusted by top content teams at HubSpot, IBM and Adobe.', url:'https://clearscope.io', aff:'https://clearscope.io?ref=aiportal', badge:'paid', bestFor:'Content grading, keyword optimization', users:'50K+',
        pros:['Enterprise-grade content grading trusted by HubSpot, IBM and Adobe','Clean, simple interface — faster to use than Semrush for content teams','Google Docs and WordPress integrations keep editors in their workflow'],
        cons:['Very expensive — starts at $170/month','Overkill for solo creators or small content teams'] },
      { name:'Frase', desc:'AI research, content briefs and SEO optimization in one tool. Write 10× faster with full search context.', url:'https://frase.io', aff:'https://frase.io?ref=aiportal', badge:'paid', bestFor:'Content briefs, SEO writing, SERP analysis', users:'30K+',
        pros:['Best value for content brief generation — combines SERP research and AI writing','AI answers questions using your own content knowledge base','Starts at just $14.99/month — cheapest full-featured SEO writing tool'],
        cons:['Smaller user base means fewer community resources vs Semrush','AI writing quality not as strong as specialized writing tools'] },
    ]
  },
  // ── Creative & Media group: Image · Video · Design · Voice ───────────────────
  {
    id: 'image', title: 'Image Generation', icon: '🎨', color: '#e05bb5',
    tools: [
      { name:'Midjourney', desc:'Top quality AI art. Photorealism and artistic styles across any genre. Industry standard for designers.', url:'https://midjourney.com', aff:'https://midjourney.com?ref=aiportal', badge:'paid', bestFor:'Artistic art, photorealism', users:'20M+',
        pros:['Best aesthetic quality — V6 sets the industry standard for photorealism and artistic styles','Active Discord community with millions of example prompts to learn from','Fastest iteration cycle — variations and remixes in seconds'],
        cons:['Requires Discord — no standalone web or API interface','No free tier since March 2023 — starts at $10/month'] },
      { name:'Stable Diffusion', desc:'Open-source image generation model. Run locally for full control over every parameter.', url:'https://stability.ai', aff:'https://stability.ai?ref=aiportal', badge:'free', bestFor:'Local run, full customization', users:'10M+',
        pros:['Fully open-source — run locally with unlimited generations at zero cost','Massive ecosystem of fine-tuned models: anime, photorealism, art styles','Complete control over every parameter — samplers, CFG scale, VAE, seed'],
        cons:['Requires a powerful GPU for local use (6GB+ VRAM minimum)','Steep learning curve — prompt engineering and model selection take time to master'] },
      { name:'ComfyUI', desc:'The most powerful open-source node-based AI image generation platform. Build and automate full diffusion pipelines visually — connect Stable Diffusion models, LoRAs, ControlNet, upscalers and custom nodes on an infinite canvas. Supports image, video, 3D and audio generation. Used by Plarium and major game studios as a core tool for production-grade asset and model creation. Free forever, runs locally or in the cloud.', url:'https://www.comfy.org', aff:'https://www.comfy.org?ref=aiportal', badge:'free', bestFor:'Advanced pipelines, game studios, custom models, production workflows', users:'10M+',
        pros:['Most powerful diffusion pipeline builder — any workflow is possible on the node canvas','Used by Plarium, game studios and VFX teams for production-grade asset creation','Supports image, video, 3D and audio in one tool — free forever'],
        cons:['Steepest learning curve of any image tool — not suitable for beginners','Requires local GPU setup or paid cloud instance for full performance'] },
      { name:'DALL·E 3', desc:'OpenAI\'s image model built into ChatGPT and the API. Follows complex prompts with high accuracy and detail.', url:'https://openai.com/dall-e-3', aff:'https://openai.com/dall-e-3?ref=aiportal', badge:'freemium', bestFor:'Prompt-accurate images, ChatGPT integration', users:'10M+',
        pros:['Best at following complex, multi-sentence prompts accurately','Built into ChatGPT — no separate subscription for Plus subscribers','Safe for commercial use under OpenAI content policy'],
        cons:['More restrictive than Midjourney — refuses many creative or edgy requests','Less artistic range and control vs Midjourney or Stable Diffusion'] },
      { name:'Flux', desc:'State-of-the-art open-source image model by Black Forest Labs. Rivals Midjourney quality at zero cost. Available on Replicate, Hugging Face and locally.', url:'https://blackforestlabs.ai', aff:'https://blackforestlabs.ai?ref=aiportal', badge:'free', bestFor:'Open-source, high quality, free Midjourney alternative', users:'5M+',
        pros:['Open-source weights — run locally or via API at zero cost','Quality rivals Midjourney at a fraction of the price','Multiple variants: Flux Schnell (fast), Flux Dev (quality), Flux Pro (best)'],
        cons:['No native web app — accessed via third-party platforms (Replicate, fal.ai, etc.)','Prompt engineering style differs from Midjourney — requires adjustment'] },
      { name:'Leonardo.ai', desc:'150 free daily tokens for image generation. Consistent characters, product shots and game assets with fine control.', url:'https://leonardo.ai', aff:'https://leonardo.ai?ref=aiportal', badge:'freemium', bestFor:'Game assets, product images, characters', users:'5M+',
        pros:['150 free credits daily — most generous free tier of any image platform','Best for consistent character generation across multiple images','Game asset and product shot templates built-in with fine style control'],
        cons:['Interface cluttered with too many options — overwhelming for newcomers','Overall quality ceiling below Midjourney for photorealism'] },
      { name:'Adobe Firefly', desc:'Adobe\'s AI inside Photoshop and Illustrator. Copyright-safe content for commercial use.', url:'https://firefly.adobe.com', aff:'https://firefly.adobe.com?ref=aiportal', badge:'freemium', bestFor:'Commercial design, Adobe ecosystem', users:'5M+',
        pros:['Trained exclusively on licensed content — commercially safe with no copyright concerns','Generative Fill in Photoshop is the best AI photo editing feature available','Seamlessly integrated into Creative Cloud workflows'],
        cons:['Full features require Adobe Creative Cloud subscription','More generic art style — less creative range than Midjourney or Flux'] },
      { name:'Ideogram', desc:'Best for generating text inside images. Posters, logos and book covers with accurate type.', url:'https://ideogram.ai', aff:'https://ideogram.ai?ref=aiportal', badge:'freemium', bestFor:'Posters with text, typography', users:'3M+',
        pros:['Best AI tool for accurate text rendering inside images — no misspellings','Free tier with 10 priority generations per day','Magic Prompt enhances short prompts automatically for better results'],
        cons:['Behind Midjourney on overall photorealistic image quality','Limited style range outside of graphic design and poster use cases'] },
      { name:'Recraft AI', desc:'AI that generates scalable SVG vector graphics and icons. 30 free daily credits, commercial use allowed.', url:'https://recraft.ai', aff:'https://recraft.ai?ref=aiportal', badge:'freemium', bestFor:'SVG icons, vector art, brand assets', users:'500K+',
        pros:['Only AI tool that generates true SVG vector graphics — infinitely scalable','30 free raster credits daily, commercial use allowed','Perfect for brand assets: icons, illustrations, logos'],
        cons:['SVG export requires paid subscription','Specialized tool — not useful for photorealistic image generation'] },
    ]
  },
  {
    id: 'video', title: 'Video Generation', icon: '🎬', color: '#f56565',
    tools: [
      { name:'CapCut', desc:'Completely free AI video editor — no watermark, no subscription. Auto-subtitles, background removal and AI effects.', url:'https://capcut.com', aff:'https://capcut.com?ref=aiportal', badge:'free', bestFor:'Social media videos, reels, editing', users:'300M+',
        pros:['Completely free with no watermark and no subscription required','Auto-subtitles, background removal, AI effects and templates in one app','Best mobile video editor available — dominates TikTok and Reels creation'],
        cons:['ByteDance (TikTok parent) ownership raises data privacy concerns','Advanced AI features gradually moving to paid tier in 2026'] },
      { name:'Kling AI', desc:'2026 video generation leader. 60M users, videos up to 3 minutes with realistic physics.', url:'https://klingai.com', aff:'https://klingai.com?ref=aiportal', badge:'freemium', bestFor:'Long videos, motion physics', users:'60M+',
        pros:['Best video quality in 2026 — realistic motion physics and lighting','Videos up to 3 minutes — longest clip length of any AI video tool','Free tier includes 166 monthly credits — enough for regular testing'],
        cons:['Chinese servers — video uploads go to Kuaishou infrastructure','Occasional prompt adherence issues on complex multi-character scenes'] },
      { name:'Google Veo 3', desc:'Google\'s video generator with realistic audio and high visual quality. Market leader in 2026.', url:'https://deepmind.google/models/veo/', aff:'https://deepmind.google/models/veo/?ref=aiportal', badge:'freemium', bestFor:'High quality, realistic audio', users:'5M+',
        pros:['Realistic AI-generated audio synchronized to video — unique differentiator','Best visual quality from any Western AI lab in 2026','Google ecosystem integration and Vertex AI API for developers'],
        cons:['Access limited — only available through Gemini Ultra and Vertex AI','Very expensive per generation at current pricing'] },
      { name:'Runway', desc:'Professional AI video editor. Gen-4 keeps characters consistent across scenes for short film production.', url:'https://runwayml.com', aff:'https://runwayml.com?ref=aiportal', badge:'freemium', bestFor:'Cinematic video, professionals', users:'3M+',
        pros:['Best character consistency across scenes (Gen-4) for professional productions','Used in Hollywood — featured in music videos and advertising','Full professional toolkit: inpainting, motion brush, camera controls, keyframes'],
        cons:['Expensive — $12-$76/month depending on credits needed','Generation time slower than Kling or Pika'] },
      { name:'HeyGen', desc:'AI avatars and video dubbing in 40+ languages. Perfect for marketing and corporate training.', url:'https://heygen.com', aff:'https://heygen.com?ref=aiportal', badge:'freemium', bestFor:'Avatars, dubbing, marketing', users:'2M+',
        pros:['Best AI avatar platform — 300+ realistic digital human avatars','Video dubbing preserves original lip movements across 40+ languages','Ideal for localized corporate training, e-learning and marketing at scale'],
        cons:['Free tier adds visible watermark — paid required for production use','Avatars still have uncanny valley quality in close-up, high-detail shots'] },
      { name:'Pika', desc:'AI video generation with 80 free monthly credits. Known for "Pikaffects" — unique visual transformations.', url:'https://pika.art', aff:'https://pika.art?ref=aiportal', badge:'freemium', bestFor:'Short clips, creative effects, social', users:'2M+',
        pros:['Unique Pikaffects — transform objects into water, fire, pixel art, lego and more','80 free credits/month — enough for regular creative exploration','Simple interface with surprisingly creative and novel results'],
        cons:['Maximum 10 seconds per clip — not for longer narratives','Character and scene consistency weak vs Runway Gen-4 or Kling'] },
    ]
  },
  {
    id: 'design', title: 'Design & UI/UX', icon: '🖌️', color: '#f56580',
    tools: [
      { name:'Canva AI', desc:'Magic Studio in Canva. Image generation, background removal and Magic Write for copy.', url:'https://canva.com', aff:'https://canva.com?ref=aiportal', badge:'freemium', bestFor:'Social media, presentations, marketing', users:'150M+',
        pros:['World\'s most popular design tool — 150M+ users means huge template library','Magic Studio: image gen, background removal, Magic Write all integrated','Non-designers can produce professional-looking results in minutes'],
        cons:['Many AI features locked behind Canva Pro ($12.99/month)','Design quality ceiling well below Figma for professional UI/UX work'] },
      { name:'Remove.bg', desc:'Remove image backgrounds instantly with one click. Free for web, API for developers, no signup required.', url:'https://remove.bg', aff:'https://remove.bg?ref=aiportal', badge:'freemium', bestFor:'Background removal, product photos, cutouts', users:'150M+',
        pros:['Best-in-class background removal — one click, 5 seconds, no manual editing','Free for low-resolution web use — no signup required','API available for bulk processing: e-commerce, product photography pipelines'],
        cons:['HD downloads require paid credits or subscription','Single-purpose tool — only does background removal, nothing else'] },
      { name:'Figma AI', desc:'AI features inside Figma. Auto-layout, component generation and layer auto-naming.', url:'https://figma.com', aff:'https://figma.com?ref=aiportal', badge:'freemium', bestFor:'UI/UX design, team collaboration', users:'5M+',
        pros:['Industry standard for professional UI/UX — most design teams use it','AI auto-layout, component generation and naming saves hours per project','Multiplayer collaboration and design system management unmatched'],
        cons:['AI features still maturing vs dedicated AI design tools','Expensive for teams — $12-$45/editor/month'] },
      { name:'Looka', desc:'AI generation of professional logos and full brand kits for any business in minutes.', url:'https://looka.com', aff:'https://looka.com?ref=aiportal', badge:'paid', bestFor:'Logos, branding for businesses', users:'2M+',
        pros:['Generates complete brand kit — logo, colors, fonts, business cards, social assets','No design skills needed — 10-minute full brand identity','One-time purchase available (no subscription required for the logo)'],
        cons:['Logos can look generic — similar styles used by many businesses','Limited customization compared to working with a professional designer'] },
      { name:'Framer AI', desc:'Create landing pages from text descriptions with animations. Publish in one click.', url:'https://framer.com', aff:'https://framer.com?ref=aiportal', badge:'freemium', bestFor:'Landing pages, portfolio sites', users:'1M+',
        pros:['Best AI website builder with real animations and micro-interactions','Designer-quality output without writing code — publish to custom domain in one click','CMS built-in for dynamic content without a separate backend'],
        cons:['More expensive than Webflow for comparable CMS and team features','Less flexible CMS and database capabilities than Webflow'] },
      { name:'Uizard', desc:'App prototypes from sketches or descriptions in minutes. Built for PMs and startups.', url:'https://uizard.io', aff:'https://uizard.io?ref=aiportal', badge:'freemium', bestFor:'Prototypes, wireframes, MVP', users:'300K+',
        pros:['Fastest wireframe-to-prototype tool for non-designers — no Figma knowledge needed','Screenshot-to-design: upload any app screenshot and get editable UI','Built for PMs and founders who can\'t use Figma'],
        cons:['Output quality not suitable for final production UI implementation','Limited component library compared to Figma or Sketch'] },
      { name:'Relume', desc:'AI website builder that generates sitemaps and wireframes in Figma and Webflow in minutes.', url:'https://relume.io', aff:'https://relume.io?ref=aiportal', badge:'freemium', bestFor:'Website wireframes, Figma, Webflow design', users:'200K+',
        pros:['Generates complete website sitemaps and Figma wireframes from a brief in minutes','Native export to both Figma and Webflow — fits design agency workflows perfectly','Saves 10+ hours per project on information architecture and wireframing'],
        cons:['Paid only — no meaningful free tier ($38/month)','Valuable mainly if you already use Figma or Webflow professionally'] },
    ]
  },
  {
    id: 'voice', title: 'Voice & Audio', icon: '🎙️', color: '#4aaef5',
    tools: [
      { name:'Speechify', desc:'World\'s #1 text-to-speech app. Turns any article, PDF or doc into audio at up to 4.5× reading speed. Used by 20M+ students and professionals.', url:'https://speechify.com', aff:'https://speechify.com?ref=aiportal', badge:'freemium', bestFor:'TTS, reading assistance, studying, accessibility', users:'20M+',
        pros:['World\'s most popular TTS app — 20M+ users including students and professionals','Reads PDFs, web articles, Google Docs and emails in one unified interface','Up to 4.5× speed with AI voice — absorb content 3× faster than reading'],
        cons:['Best AI voices and highest speeds require Premium ($139/year)','Voice naturalness below ElevenLabs for professional-grade audio production'] },
      { name:'Suno', desc:'AI music in any genre within seconds. 50 free songs per day for personal use.', url:'https://suno.ai', aff:'https://suno.ai?ref=aiportal', badge:'freemium', bestFor:'Fast music generation', users:'10M+',
        pros:['50 free full songs per day — most generous free tier in AI music','Full songs with lyrics, vocals and instruments from a one-line prompt','V4 quality rivals human-produced music in pop, hip-hop, folk and more'],
        cons:['No stem separation — cannot isolate vocals, drums or instruments for remixing','Commercial use license unclear — check terms before monetizing content'] },
      { name:'ElevenLabs', desc:'Best TTS with voice cloning in 29 languages. $11B valuation, now includes music generation.', url:'https://elevenlabs.io', aff:'https://elevenlabs.io?ref=aiportal', badge:'freemium', bestFor:'Voice cloning, TTS, voiceover', users:'5M+',
        pros:['Most realistic AI voice cloning available — 29 languages with natural prosody','Voice library of 3,000+ curated voices for any character or use case','API-first platform — best for developers building voice products and apps'],
        cons:['Free tier limited to 10,000 characters/month — not enough for production use','Voice cloning of real people without consent raises significant ethical concerns'] },
      { name:'Whisper', desc:'Audio transcription by OpenAI. Open-source, supports 100 languages with high accuracy.', url:'https://openai.com/research/whisper', aff:'https://openai.com/research/whisper?ref=aiportal', badge:'free', bestFor:'Transcription, subtitles', users:'2M+',
        pros:['Open-source — free forever, no API costs for local use','Best transcription accuracy of any model, especially for accented speech','Supports 100 languages including rare and low-resource ones'],
        cons:['No real-time transcription — processes complete audio files only','Requires local setup or a third-party hosting service for API access'] },
      { name:'Udio', desc:'Generate full music tracks with vocals from a text description. Any genre in seconds.', url:'https://udio.com', aff:'https://udio.com?ref=aiportal', badge:'freemium', bestFor:'Music with vocals, full tracks', users:'1M+',
        pros:['Better vocal quality than Suno for certain genres (jazz, classical, soul)','Extend and merge segments — build full songs section by section','More granular control over musical style, key, tempo and instrumentation'],
        cons:['Fewer free credits than Suno per day','Smaller community and fewer tutorials available vs Suno'] },
      { name:'Adobe Podcast', desc:'Free AI audio enhancer. Removes background noise and echo — makes any mic sound studio-quality.', url:'https://podcast.adobe.com', aff:'https://podcast.adobe.com?ref=aiportal', badge:'free', bestFor:'Audio cleanup, podcast quality, remote recording', users:'1M+',
        pros:['Completely free audio enhancement — no subscription required','Mic Check feature guides microphone placement before you record','Removes background noise, echo and room reverb from any audio source in seconds'],
        cons:['Enhancement only — no recording, editing or podcast publishing features','Can introduce occasional audio artifacts on heavily degraded source recordings'] },
      { name:'Descript', desc:'Edit podcasts and video like a text document. Automatically removes filler words and pauses.', url:'https://descript.com', aff:'https://descript.com?ref=aiportal', badge:'freemium', bestFor:'Podcasts, text-based video editing', users:'500K+',
        pros:['Unique text-based editing — cut audio/video by editing the transcript','Removes filler words ("um", "uh", "like") and long pauses automatically','Screen recording and podcast publishing built into one tool'],
        cons:['$12/month for Hobbyist plan after free tier','Can introduce audio artifacts when splicing out words or sentences'] },
    ]
  },
  {
    id: 'productivity', title: 'Productivity', icon: '⚡', color: '#f5a623',
    tools: [
      { name:'Notion AI', desc:'AI inside your Notion workspace. Write, summarize, translate and structure notes instantly.', url:'https://notion.so', aff:'https://notion.so?ref=aiportal', badge:'freemium', bestFor:'Notes, knowledge base, docs', users:'30M+',
        pros:['Deeply integrated into your existing Notion workspace — no context switching','Summarizes pages, answers questions about your own notes and generates docs','All-in-one: database + docs + AI in one tool'],
        cons:['$8/month add-on on top of Notion subscription','AI quality not as strong as standalone Claude or GPT-4 for complex reasoning'] },
      { name:'Zapier AI', desc:'Automate tasks between 6,000+ apps with AI logic and conditional actions. No code needed.', url:'https://zapier.com', aff:'https://zapier.com?ref=aiportal', badge:'freemium', bestFor:'Automation, no-code integrations', users:'5M+',
        pros:['6,000+ app integrations — the largest automation network by far','Natural language workflow builder — describe what you want and AI builds the zap','Battle-tested reliability — runs 2B+ tasks per month for millions of users'],
        cons:['Gets expensive quickly — $19-$49/month for meaningful automation volume','Complex conditional logic and multi-path workflows have a learning curve'] },
      { name:'Gamma', desc:'Create stunning AI presentations, docs and websites in minutes. 10 free credits to start, no design skills needed.', url:'https://gamma.app', aff:'https://gamma.app?ref=aiportal', badge:'freemium', bestFor:'Presentations, pitch decks, visual docs', users:'2M+',
        pros:['Best AI presentation generator — beautiful, structured results in under 2 minutes','Web-native format that works on any device without PowerPoint','10 free credits to start — enough to test for your most important deck'],
        cons:['Less manual layout control vs PowerPoint or Google Slides','Gamma branding and limited customization on free plan'] },
      { name:'Otter.ai', desc:'Real-time meeting transcription. Integrates with Zoom, Google Meet and Microsoft Teams.', url:'https://otter.ai', aff:'https://otter.ai?ref=aiportal', badge:'freemium', bestFor:'Meetings, transcription, notes', users:'2M+',
        pros:['Real-time transcription with automatic speaker identification','Direct integration with Zoom, Google Meet and Teams — joins automatically','AI Chat lets you ask questions about any past meeting transcript'],
        cons:['Free tier limited to 300 minutes/month transcription','Accuracy drops significantly with heavy accents or technical domain jargon'] },
      { name:'Fireflies.ai', desc:'AI meeting assistant that records, transcribes and summarizes every call. 800 minutes free storage.', url:'https://fireflies.ai', aff:'https://fireflies.ai?ref=aiportal', badge:'freemium', bestFor:'Meeting notes, action items, summaries', users:'1M+',
        pros:['Records, transcribes and extracts action items and decisions automatically','800 minutes free meeting storage — enough for most small teams','CRM integrations: pushes meeting summaries to Salesforce, HubSpot, Slack'],
        cons:['Fireflies bot joins your calls — some meeting participants find it intrusive','Video recording and longer storage require paid plan'] },
      { name:'Reclaim.ai', desc:'AI that automatically plans your calendar and protects deep-work time from meetings.', url:'https://reclaim.ai', aff:'https://reclaim.ai?ref=aiportal', badge:'freemium', bestFor:'Time management, calendar AI', users:'500K+',
        pros:['Automatically schedules focus blocks and defends them from meeting invites','Habit scheduling keeps recurring tasks visible and time-boxed on your calendar','Learns your preferences and adjusts scheduling over time'],
        cons:['Google Calendar only — no Outlook or iCal support on free plan','AI scheduling suggestions can feel rigid for people with unpredictable schedules'] },
    ]
  },
  {
    id: 'research', title: 'Research', icon: '🔬', color: '#9b6ef5',
    tools: [
      { name:'Perplexity', desc:'AI search with sources. Deep Research mode for detailed multi-page analysis on any topic.', url:'https://perplexity.ai', aff:'https://perplexity.ai?ref=aiportal', badge:'freemium', bestFor:'Research with citations', users:'15M+',
        pros:['Every answer cites primary sources — results are verifiable and trustworthy','Deep Research produces multi-page reports with 50+ sources in 5 minutes','Real-time web access on the free plan unlike ChatGPT or Claude'],
        cons:['Writing style can be dry — less nuanced explanation than Claude for complex topics','Unlimited Deep Research requires Pro subscription ($20/month)'] },
      { name:'Semantic Scholar', desc:'Free AI search across 200M+ scientific papers with citation graphs and key findings.', url:'https://semanticscholar.org', aff:'https://semanticscholar.org?ref=aiportal', badge:'free', bestFor:'Academic search, citations', users:'10M+',
        pros:['200M+ scientific papers indexed — largest free academic database available','AI-powered relevance ranking surfaces the most-cited and influential work first','Completely free with no rate limits, accounts or paywalls'],
        cons:['Only covers published academic papers — no preprints, blogs or grey literature','Interface feels dated compared to newer AI research tools like Elicit'] },
      { name:'NotebookLM', desc:'Google\'s AI for your documents. Upload a PDF and get a podcast, summary or Q&A session.', url:'https://notebooklm.google.com', aff:'https://notebooklm.google.com?ref=aiportal', badge:'free', bestFor:'PDF analysis, summaries, Q&A', users:'5M+',
        pros:['Audio Overview turns any document into a podcast — unique and genuinely useful','Synthesizes across multiple uploaded sources simultaneously','Completely free — no usage limits from Google'],
        cons:['Limited to documents you upload — no real-time web or database access','Not designed for scientific literature discovery — better for your own documents'] },
      { name:'Elicit', desc:'AI research tool. Analyzes hundreds of papers simultaneously with structured conclusions.', url:'https://elicit.com', aff:'https://elicit.com?ref=aiportal', badge:'freemium', bestFor:'Scientific papers, literature review', users:'500K+',
        pros:['Analyzes hundreds of papers at once and synthesizes findings into structured tables','Automatically extracts study design, sample size, key findings from papers','Best tool for systematic literature reviews and evidence synthesis'],
        cons:['Focused exclusively on scientific research — not general-purpose','Free tier limited to 5 paper analyses per month'] },
      { name:'Humata', desc:'AI for PDFs — ask any question and get instant answers with clickable citations. 60 pages free.', url:'https://humata.ai', aff:'https://humata.ai?ref=aiportal', badge:'freemium', bestFor:'PDF Q&A, legal docs, research papers', users:'500K+',
        pros:['Best clickable citations — jumps to exact passage location in the PDF','60 pages free per month — enough for most use cases','Team collaboration: multiple users can query the same document library'],
        cons:['Focused on PDF/document analysis — not for web research or general Q&A','Performance drops on low-quality scanned or image-based PDFs'] },
      { name:'Consensus', desc:'Search across scientific papers. Shows the scientific consensus on any question with percentages.', url:'https://consensus.app', aff:'https://consensus.app?ref=aiportal', badge:'freemium', bestFor:'Scientific consensus, fact-checking', users:'200K+',
        pros:['Unique consensus scoring — shows what percentage of studies agree on a claim','Answers yes/no research questions by analyzing 100+ papers simultaneously','Free for basic use with no account required'],
        cons:['Only covers peer-reviewed research — misses newer preprints and grey literature','Consensus scores can be misleading on actively contested scientific topics'] },
    ]
  },
  {
    id: 'data', title: 'Data & Analytics', icon: '📊', color: '#38c9b0',
    tools: [
      { name:'Looker Studio', desc:'Free Google BI tool with AI-powered dashboards. Connects to 800+ data sources including Google Analytics and Sheets.', url:'https://lookerstudio.google.com', aff:'https://lookerstudio.google.com?ref=aiportal', badge:'free', bestFor:'BI dashboards, reporting, free analytics', users:'10M+',
        pros:['Completely free — Google product with 800+ built-in data connectors','Connects to Google Analytics, Sheets, BigQuery, Facebook Ads, MySQL and more','Share interactive dashboards publicly or with specific team members'],
        cons:['No AI analysis features — visualization and reporting only, no insight generation','Can be slow to load complex dashboards with large datasets'] },
      { name:'Tableau AI', desc:'Einstein AI in Tableau. Automatic insights, forecasts and trend explanations from big data.', url:'https://tableau.com', aff:'https://tableau.com?ref=aiportal', badge:'paid', bestFor:'BI, enterprise, visualization', users:'1M+',
        pros:['Einstein AI explains data trends and anomalies in plain English','Industry standard for enterprise BI — handles billions of rows natively','Connects to any data source including on-premise databases and data warehouses'],
        cons:['Very expensive — starts at $70/user/month for Creator license','Requires dedicated training and weeks to become proficient'] },
      { name:'Julius AI', desc:'AI data analyst. Upload a CSV and get beautiful charts, insights and conclusions — no code.', url:'https://julius.ai', aff:'https://julius.ai?ref=aiportal', badge:'freemium', bestFor:'CSV analysis, data visualization', users:'500K+',
        pros:['Upload any CSV and get AI-generated insights, charts and conclusions without code','Supports statistical analysis, forecasting and outlier detection in natural language','Generates Python and R code so you can reproduce results elsewhere'],
        cons:['Limited to datasets that fit in memory — not for large-scale data engineering','Less powerful than Python pandas or R for custom advanced analysis workflows'] },
      { name:'Rows', desc:'Smart spreadsheets with AI. Import data from any source and analyze it right in the browser.', url:'https://rows.com', aff:'https://rows.com?ref=aiportal', badge:'freemium', bestFor:'AI spreadsheets, data import', users:'200K+',
        pros:['AI functions work inside spreadsheet cells like native Excel formulas','Connects to 50+ APIs and data sources without writing code','Better visual presentation and sharing than Google Sheets'],
        cons:['Smaller feature set than Excel or Google Sheets for advanced spreadsheet work','Noticeably slower for very large datasets (100K+ rows)'] },
      { name:'Hex', desc:'Collaborative data notebooks with AI assistant. SQL, Python and charts for your whole team.', url:'https://hex.tech', aff:'https://hex.tech?ref=aiportal', badge:'freemium', bestFor:'Data science, team analytics', users:'100K+',
        pros:['AI assistant writes SQL and Python from natural language descriptions','Multiplayer collaboration — entire data team works in the same notebook','Polished chart output suitable for executive and stakeholder presentations'],
        cons:['Free tier limited to 1 user and 5 projects','Slower than local Jupyter for iterative exploratory analysis'] },
      { name:'Akkio', desc:'No-code AI for business analysts. Build forecasting models from your CSV or CRM data without writing code.', url:'https://akkio.com', aff:'https://akkio.com?ref=aiportal', badge:'freemium', bestFor:'Forecasting, churn prediction, no-code ML', users:'100K+',
        pros:['Build predictive ML models from CSV or CRM data in minutes without code','Churn prediction and lead scoring templates built for business analysts','Direct Salesforce and HubSpot integration — no export/import needed'],
        cons:['Model accuracy limited compared to custom ML engineering for complex problems','Pricing escalates quickly for commercial production use'] },
      { name:'Obviously AI', desc:'Predictive analytics without code. Build ML models and get forecasts in minutes.', url:'https://obviously.ai', aff:'https://obviously.ai?ref=aiportal', badge:'paid', bestFor:'Forecasting, no-code ML', users:'50K+',
        pros:['Fastest no-code ML — predictive model from CSV in under 5 minutes','Automated feature selection and model comparison across multiple algorithms','Results explained in plain English for non-technical stakeholders'],
        cons:['Most expensive no-code ML option on the market','Black-box models — limited control or transparency over the training process'] },
    ]
  },
  {
    id: 'nocode', title: 'No-Code App Builders', icon: '🏗️', color: '#457b9d',
    tools: [
      { name:'Bubble', desc:'The leading no-code platform. Build complex web apps with visual programming — used by 3M+ makers and startups.', url:'https://bubble.io', aff:'https://bubble.io?ref=aiportal', badge:'freemium', bestFor:'Web apps, marketplaces, SaaS', users:'3M+',
        pros:['Most powerful no-code platform — can build almost any type of web app','Native database, API connector, responsive design and workflows built-in','Huge community: 3M+ users, thousands of plugins and templates'],
        cons:['Steep learning curve — takes weeks to build your first non-trivial app','Performance can lag on complex apps compared to custom-coded solutions'] },
      { name:'Webflow', desc:'Professional AI-powered website builder with CMS. Design pixel-perfect sites, export clean code.', url:'https://webflow.com', aff:'https://webflow.com?ref=aiportal', badge:'freemium', bestFor:'Marketing sites, CMS, landing pages', users:'3M+',
        pros:['Best pixel-perfect visual website builder — professional design output','Export clean, uncompressed HTML/CSS — no vendor lock-in','CMS for dynamic content sites without a separate backend or database'],
        cons:['Steep learning curve for people without design or CSS knowledge','Expensive for e-commerce and larger team plans ($23-$39/month+)'] },
      { name:'Lovable', desc:'Build full-stack web apps from text descriptions. React + Supabase backend, deploy in one click. No coding needed.', url:'https://lovable.dev', aff:'https://lovable.dev?ref=aiportal', badge:'freemium', bestFor:'Full-stack apps, SaaS MVPs', users:'500K+',
        pros:['Fastest full-stack app builder — React + Supabase backend from a prompt','Includes auth, database and payment setup for SaaS MVPs','GitHub integration keeps your code version-controlled from day one'],
        cons:['Complex business logic often breaks between edits and requires re-prompting','Token costs accumulate quickly for large or frequently revised projects'] },
      { name:'FlutterFlow', desc:'Visual Flutter app builder. Build and deploy native iOS and Android apps without writing code.', url:'https://flutterflow.io', aff:'https://flutterflow.io?ref=aiportal', badge:'freemium', bestFor:'Mobile apps, iOS/Android, native performance', users:'500K+',
        pros:['Build native iOS + Android apps without writing code — publish to App Store','Exports production-ready Flutter code that you fully own','Firebase and Supabase backend integration built directly into the UI'],
        cons:['Some Flutter knowledge helpful for debugging edge cases in generated code','Less design flexibility than writing native SwiftUI or Kotlin'] },
      { name:'Glide', desc:'Turn Google Sheets or Airtable into mobile and web apps without code. 25K+ free rows included.', url:'https://glideapps.com', aff:'https://glideapps.com?ref=aiportal', badge:'freemium', bestFor:'Internal tools, data-driven apps', users:'100K+',
        pros:['Easiest data-to-app builder — connect Google Sheets in under 5 minutes','Free plan includes 25,000 rows — enough for many internal tools','Progressive web app — works on mobile without going through app stores'],
        cons:['Limited to data-driven apps — complex custom business logic not supported','Glide branding on all apps on the free plan'] },
      { name:'Softr', desc:'Build client portals and internal tools from Airtable or Google Sheets in minutes. No code required.', url:'https://softr.io', aff:'https://softr.io?ref=aiportal', badge:'freemium', bestFor:'Client portals, internal dashboards', users:'50K+',
        pros:['Best client portal builder from Airtable data without custom code','Free plan allows up to 5 internal users — genuinely useful for small teams','Membership, payments and user role management built-in'],
        cons:['Primarily optimized for Airtable — other data sources more limited','Not suitable for complex apps beyond portals, dashboards and directories'] },
    ]
  },
  {
    id: 'education', title: 'Education & Learning', icon: '🎓', color: '#2a9d8f',
    tools: [
      { name:'Photomath', desc:'Scan and solve math problems step-by-step with AI. 220M downloads — the most-used math app worldwide.', url:'https://photomath.com', aff:'https://photomath.com?ref=aiportal', badge:'freemium', bestFor:'Math homework, step-by-step solutions', users:'220M+',
        pros:['220M downloads — most widely used math learning app in the world','Step-by-step solutions show HOW to solve, not just the final answer','Covers K-12 through university-level calculus, statistics and linear algebra'],
        cons:['Some students use it to copy answers without actually learning the method','Complex word problems sometimes misidentified by the camera scanner'] },
      { name:'Duolingo Max', desc:'AI language learning with GPT-4 roleplay. Practice real conversations with an AI native speaker.', url:'https://duolingo.com', aff:'https://duolingo.com?ref=aiportal', badge:'freemium', bestFor:'Language learning, speaking practice', users:'100M+',
        pros:['Most popular language learning app — gamification makes habits stick','GPT-4 roleplay scenarios simulate real conversations with an AI native speaker','Free tier covers all core content — Max unlocks AI conversation features'],
        cons:['Max tier at $167/year expensive compared to self-study alternatives','Heavy focus on streaks and gamification over measurable speaking fluency'] },
      { name:'Coursera Coach', desc:'AI learning assistant inside Coursera. Explains concepts, answers questions and personalizes your learning path.', url:'https://coursera.org', aff:'https://coursera.org?ref=aiportal', badge:'freemium', bestFor:'Online courses, professional certificates', users:'100M+',
        pros:['Access to courses from 300+ top universities including Stanford, Yale and Google','Verified certificates recognized by employers globally','AI Coach personalizes learning pace and explains difficult concepts on demand'],
        cons:['Certificate programs cost $39-$79/month — expensive for full programs','AI Coach quality and depth varies significantly across different course subjects'] },
      { name:'Socratic by Google', desc:'Photograph any homework question and get step-by-step visual explanations across all subjects.', url:'https://socratic.org', aff:'https://socratic.org?ref=aiportal', badge:'free', bestFor:'Homework help, all subjects', users:'20M+',
        pros:['Completely free — Google product with no subscription or usage limits','Works on printed text and handwritten problems — photo any homework question','Visual step-by-step explanations across math, science, history and literature'],
        cons:['Requires a Google account to use','Less effective for university-level or highly specialized technical subjects'] },
      { name:'Khanmigo', desc:'AI tutor by Khan Academy. Uses the Socratic method — guides students to answers instead of giving them away.', url:'https://khanmigo.ai', aff:'https://khanmigo.ai?ref=aiportal', badge:'freemium', bestFor:'K-12 tutoring, math, science', users:'500K+',
        pros:['Uses Socratic method — guides students to discover answers themselves','Free for students via Khan Academy scholarships and school programs','Teacher tools included: essay feedback generator and lesson plan builder'],
        cons:['Slower and more deliberate than asking ChatGPT directly','Limited to subjects covered by the Khan Academy curriculum'] },
      { name:'Synthesis', desc:'AI-powered math and problem-solving for kids. Adaptive learning that adjusts to each student\'s level.', url:'https://synthesis.com', aff:'https://synthesis.com?ref=aiportal', badge:'paid', bestFor:'K-8 math, problem-solving skills', users:'200K+',
        pros:['Best adaptive math for K-8 — difficulty adjusts in real-time to each student','Teaches problem-solving thinking, not just memorization of formulas','Originally built for SpaceX\'s Ad Astra school by Elon Musk\'s team'],
        cons:['Paid only — $99/year, no meaningful free tier','Focused on math only — no other subjects covered'] },
    ]
  },
  {
    id: 'presentations', title: 'Presentations & Slides', icon: '🖥️', color: '#8338ec',
    tools: [
      { name:'Slidesgo', desc:'AI presentation template generator. Thousands of Google Slides and PowerPoint themes, free to use.', url:'https://slidesgo.com', aff:'https://slidesgo.com?ref=aiportal', badge:'freemium', bestFor:'Templates, Google Slides, PowerPoint', users:'10M+',
        pros:['10,000+ free templates for Google Slides and PowerPoint — no signup needed','AI generates a full presentation from a topic description in seconds','Most popular free slide template resource online'],
        cons:['AI generation quality inconsistent — always needs editing','Templates used by millions — your design may look familiar to your audience'] },
      { name:'Prezi', desc:'Zoomable presentation canvas with AI design assistant. Stands out from standard slide decks.', url:'https://prezi.com', aff:'https://prezi.com?ref=aiportal', badge:'freemium', bestFor:'Dynamic presentations, storytelling visuals', users:'5M+',
        pros:['Zoomable canvas format immediately stands out vs standard slide decks','AI design assistant automatically redesigns content for visual balance','Great for storytelling and showing relationships between ideas'],
        cons:['Zooming animations can cause motion sickness for some viewers','Less familiar format — some audiences get confused navigating the canvas'] },
      { name:'Tome', desc:'AI-native storytelling tool. Generate a full presentation from a one-line prompt in seconds.', url:'https://tome.app', aff:'https://tome.app?ref=aiportal', badge:'freemium', bestFor:'AI-generated decks, storytelling', users:'1M+',
        pros:['Fastest AI deck generator — full presentation with design from a 1-line prompt','Web-native, interactive and embeddable — no PowerPoint needed','Clean minimal design out of the box with no design skill required'],
        cons:['Less manual layout control than PowerPoint or Google Slides','Not suitable for print-quality or highly branded presentations'] },
      { name:'Beautiful.ai', desc:'AI presentation maker with smart slides that auto-redesign as you add content. 60+ professional templates.', url:'https://beautiful.ai', aff:'https://beautiful.ai?ref=aiportal', badge:'freemium', bestFor:'Business presentations, pitch decks', users:'500K+',
        pros:['Smart slides automatically rebalance and resize content as you type','60+ polished professional templates suited for client-facing work','Best option for business teams producing recurring presentation types'],
        cons:['Free tier limited to 10 slides — not enough for full presentations','Less creative flexibility than building from scratch in Google Slides'] },
      { name:'Pitch', desc:'Collaborative presentation builder with AI writing. Used by fast-growing startups and design teams.', url:'https://pitch.com', aff:'https://pitch.com?ref=aiportal', badge:'freemium', bestFor:'Team presentations, startup decks', users:'500K+',
        pros:['Best real-time collaboration for team-built presentations','Startup-focused templates used by Y Combinator companies','Version history and commenting similar to Google Docs workflow'],
        cons:['AI writing features less powerful than Tome or Gamma for generation speed','Smaller template library than Slidesgo or Beautiful.ai'] },
    ]
  }
];

const ALL_TOOLS = CATEGORIES.flatMap(cat =>
  cat.tools.map(t => ({ ...t, catId: cat.id, catTitle: cat.title, catColor: cat.color, catIcon: cat.icon }))
);

function getDomain(url) {
  try { return new URL(url).hostname.replace('www.', ''); } catch { return ''; }
}

function badgeLabel(b) {
  const map = { free: t('badge.free'), freemium: 'Freemium', paid: t('badge.paid') };
  return map[b] || b;
}

function renderToolCard(tool, color) {
  const c = color || tool.catColor || '#7c6af7';
  const domain = getDomain(tool.url);
  const faviconSrc = `https://www.google.com/s2/favicons?sz=64&domain=${domain}`;
  const usersHtml = tool.users ? `<span class="tool-users">👥 ${tool.users}</span>` : '';
  return `
    <div class="tool-card fade-up" onclick="showToolDetail(event,'${tool.name.replace(/'/g,"\\'")}')">
      <div class="tool-card-top">
        <div class="tool-avatar" style="background:${c}22;border-color:${c}44;">
          <img class="tool-favicon" src="${faviconSrc}" alt="" width="24" height="24"
            onerror="this.style.display='none';this.nextElementSibling.style.display='flex'">
          <span class="tool-avatar-fallback" style="display:none;color:${c}">${tool.name[0]}</span>
        </div>
        <span class="tool-name">${tool.name}</span>
        ${usersHtml}
        <span class="badge badge-${tool.badge}">${badgeLabel(tool.badge)}</span>
      </div>
      <p class="tool-desc">${getToolDesc(tool)}</p>
      <div class="tool-footer">
        <span class="tool-domain">${domain}</span>
        <a class="tool-aff" href="${tool.aff || tool.url}" target="_blank" rel="noopener sponsored" onclick="event.stopPropagation()">${t('tool.open')}</a>
      </div>
    </div>`;
}
