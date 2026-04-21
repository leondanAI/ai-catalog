const CATEGORIES = [
  {
    id: 'chat', title: 'AI Chat & Assistants', icon: '💬', color: '#7c6af7',
    tools: [
      { name:'ChatGPT', desc:'The most popular AI chat by OpenAI. GPT-4o for text, images and voice. Used by 200M+ people.', url:'https://chat.openai.com', aff:'https://chat.openai.com?ref=aiportal', badge:'freemium', bestFor:'General tasks, writing, coding', users:'200M+' },
      { name:'Claude', desc:'AI assistant by Anthropic. Best for long documents, analysis and code. 200K token context window.', url:'https://claude.ai', aff:'https://claude.ai?ref=aiportal', badge:'freemium', bestFor:'Long texts, document analysis, code', users:'20M+' },
      { name:'Gemini', desc:'Google\'s AI with real-time internet access. Gemini 2.0 Ultra with multimodal capabilities.', url:'https://gemini.google.com', aff:'https://gemini.google.com?ref=aiportal', badge:'freemium', bestFor:'Current information, Google ecosystem', users:'100M+' },
      { name:'Perplexity', desc:'AI search with cited sources. Deep Research mode for detailed multi-page analysis on any topic.', url:'https://perplexity.ai', aff:'https://perplexity.ai?ref=aiportal', badge:'freemium', bestFor:'Research, sourced answers', users:'15M+' },
      { name:'DeepSeek', desc:'Chinese LLM rivaling GPT-4 quality — completely free. Open API and web interface available.', url:'https://chat.deepseek.com', aff:'https://chat.deepseek.com?ref=aiportal', badge:'free', bestFor:'Free GPT-4 alternative', users:'30M+' },
      { name:'Grok', desc:'AI by xAI with real-time access to X/Twitter data. Great for trending topics, news and unfiltered answers.', url:'https://x.com/i/grok', aff:'https://x.com/i/grok?ref=aiportal', badge:'freemium', bestFor:'Real-time news, X/Twitter insights', users:'10M+' },
      { name:'Meta AI', desc:'Free AI assistant by Meta built into WhatsApp, Instagram and Messenger. Powered by Llama 4.', url:'https://meta.ai', aff:'https://meta.ai?ref=aiportal', badge:'free', bestFor:'Social media, everyday tasks, free chat', users:'500M+' },
    ]
  },
  {
    id: 'agents', title: 'AI Agents & Automation', icon: '🤖', color: '#ff6b35',
    tools: [
      { name:'n8n', desc:'Open-source workflow automation. Chain AI models, APIs and 400+ apps with a visual editor. Self-host or cloud.', url:'https://n8n.io', aff:'https://n8n.io?ref=aiportal', badge:'freemium', bestFor:'Workflow automation, AI pipelines', users:'500K+' },
      { name:'Make', desc:'Visual automation platform connecting 1,000+ apps. More flexible than Zapier with advanced data routing.', url:'https://make.com', aff:'https://make.com?ref=aiportal', badge:'freemium', bestFor:'Complex automations, app integrations', users:'500K+' },
      { name:'Lindy', desc:'Build AI agents for email, scheduling and customer support in minutes. No code needed.', url:'https://lindy.ai', aff:'https://lindy.ai?ref=aiportal', badge:'freemium', bestFor:'Email agents, scheduling, support bots', users:'100K+' },
      { name:'Microsoft Copilot Studio', desc:'Build and deploy custom AI agents for your business. Direct integration with Office 365 and Teams.', url:'https://copilotstudio.microsoft.com', aff:'https://copilotstudio.microsoft.com?ref=aiportal', badge:'freemium', bestFor:'Enterprise agents, Microsoft ecosystem', users:'1M+' },
      { name:'Relevance AI', desc:'No-code platform to build, train and deploy AI agents and multi-agent teams for any business workflow.', url:'https://relevanceai.com', aff:'https://relevanceai.com?ref=aiportal', badge:'freemium', bestFor:'Multi-agent teams, sales and support bots', users:'100K+' },
      { name:'AutoGPT', desc:'Open-source autonomous AI agent. Give it a goal — it breaks it into steps and executes them automatically.', url:'https://agpt.co', aff:'https://agpt.co?ref=aiportal', badge:'free', bestFor:'Autonomous tasks, open-source AI agents', users:'200K+' },
    ]
  },
  {
    id: 'code', title: 'AI for Development', icon: '💻', color: '#2dd4a0',
    tools: [
      { name:'GitHub Copilot', desc:'AI code autocomplete inside your editor. Supports 40+ languages with GitHub integration.', url:'https://github.com/features/copilot', aff:'https://github.com/features/copilot?ref=aiportal', badge:'freemium', bestFor:'Autocomplete, IDE integration', users:'2M+' },
      { name:'Cursor', desc:'VS Code-based IDE with built-in AI. Edit entire files with plain-text instructions.', url:'https://cursor.sh', aff:'https://cursor.sh?ref=aiportal', badge:'freemium', bestFor:'AI IDE, code refactoring', users:'500K+' },
      { name:'Claude Code', desc:'Anthropic\'s CLI agent — the leading AI dev tool in 2026. Full cycle: code, tests, refactor in terminal.', url:'https://claude.ai/code', aff:'https://claude.ai/code?ref=aiportal', badge:'paid', bestFor:'Terminal, complex agentic tasks', users:'200K+' },
      { name:'v0 by Vercel', desc:'Generates React/Tailwind UI components from text descriptions. Export directly to Next.js.', url:'https://v0.dev', aff:'https://v0.dev?ref=aiportal', badge:'freemium', bestFor:'UI components, React, prototypes', users:'1M+' },
      { name:'Bolt.new', desc:'Full web app from a prompt with one-click deploy. No environment setup — straight in the browser.', url:'https://bolt.new', aff:'https://bolt.new?ref=aiportal', badge:'freemium', bestFor:'Quick prototypes, fullstack MVP', users:'1M+' },
      { name:'Replit', desc:'Cloud coding environment with AI agent that writes, runs and deploys code directly in the browser.', url:'https://replit.com', aff:'https://replit.com?ref=aiportal', badge:'freemium', bestFor:'Cloud coding, learning, quick deploys', users:'10M+' },
    ]
  },
  {
    id: 'writing', title: 'Text & Copywriting', icon: '✍️', color: '#5b8af0',
    tools: [
      { name:'Jasper', desc:'Professional AI copywriter with templates for blogs, ads, email campaigns and SEO content.', url:'https://jasper.ai', aff:'https://jasper.ai?ref=aiportal', badge:'paid', bestFor:'Marketing content, SEO writing', users:'100K+' },
      { name:'Grammarly', desc:'Grammar, style and tone checker. Browser extension that works everywhere you write.', url:'https://grammarly.com', aff:'https://grammarly.com?ref=aiportal', badge:'freemium', bestFor:'Grammar, style, text improvement', users:'50M+' },
      { name:'QuillBot', desc:'Free AI paraphrasing and summarizing tool. Rewrites text in 8 different styles, 125 words free per use.', url:'https://quillbot.com', aff:'https://quillbot.com?ref=aiportal', badge:'freemium', bestFor:'Paraphrasing, summarizing, rewriting', users:'30M+' },
      { name:'DeepL', desc:'Gold standard for AI translation. Supports 30+ languages with 5,000 free characters per translation.', url:'https://deepl.com', aff:'https://deepl.com?ref=aiportal', badge:'freemium', bestFor:'Accurate translation, multilingual content', users:'100M+' },
      { name:'Writesonic', desc:'AI for SEO articles, ad copy and social posts with built-in optimization tools.', url:'https://writesonic.com', aff:'https://writesonic.com?ref=aiportal', badge:'freemium', bestFor:'SEO articles, social content', users:'5M+' },
      { name:'Hemingway Editor', desc:'Free readability tool that highlights complex sentences, passive voice and adverbs. No signup needed.', url:'https://hemingwayapp.com', aff:'https://hemingwayapp.com?ref=aiportal', badge:'free', bestFor:'Clear writing, readability, editing', users:'2M+' },
    ]
  },
  {
    id: 'marketing', title: 'Marketing & SEO', icon: '📈', color: '#e63946',
    tools: [
      { name:'SurferSEO', desc:'Real-time AI content optimization for top Google rankings. Grade your article vs top results as you write.', url:'https://surferseo.com', aff:'https://surferseo.com?ref=aiportal', badge:'paid', bestFor:'On-page SEO, content scoring', users:'150K+' },
      { name:'Semrush', desc:'All-in-one SEO platform with AI writing assistant, keyword research and competitor gap analysis.', url:'https://semrush.com', aff:'https://semrush.com?ref=aiportal', badge:'freemium', bestFor:'SEO research, competitor analysis', users:'10M+' },
      { name:'Copy.ai', desc:'AI marketing copy for ads, emails and social media. 90+ templates, workflow automations and free tier.', url:'https://copy.ai', aff:'https://copy.ai?ref=aiportal', badge:'freemium', bestFor:'Ad copy, email campaigns, social posts', users:'10M+' },
      { name:'AdCreative.ai', desc:'Generate high-converting ad creatives with AI. Connects to your ad accounts and learns what performs best.', url:'https://adcreative.ai', aff:'https://adcreative.ai?ref=aiportal', badge:'paid', bestFor:'Ad graphics, Facebook/Google ads', users:'1M+' },
      { name:'Frase', desc:'AI research, content briefs and SEO optimization in one tool. Write 10× faster with full search context.', url:'https://frase.io', aff:'https://frase.io?ref=aiportal', badge:'paid', bestFor:'Content briefs, SEO writing, SERP analysis', users:'30K+' },
      { name:'Clearscope', desc:'Content optimization platform trusted by top content teams at HubSpot, IBM and Adobe.', url:'https://clearscope.io', aff:'https://clearscope.io?ref=aiportal', badge:'paid', bestFor:'Content grading, keyword optimization', users:'50K+' },
    ]
  },
  // ── Creative & Media group: Image · Video · Design · Voice ───────────────────
  {
    id: 'image', title: 'Image Generation', icon: '🎨', color: '#e05bb5',
    tools: [
      { name:'Midjourney', desc:'Top quality AI art. Photorealism and artistic styles across any genre. Industry standard for designers.', url:'https://midjourney.com', aff:'https://midjourney.com?ref=aiportal', badge:'paid', bestFor:'Artistic art, photorealism', users:'20M+' },
      { name:'Leonardo.ai', desc:'150 free daily tokens for image generation. Consistent characters, product shots and game assets with fine control.', url:'https://leonardo.ai', aff:'https://leonardo.ai?ref=aiportal', badge:'freemium', bestFor:'Game assets, product images, characters', users:'5M+' },
      { name:'Stable Diffusion', desc:'Open-source image generation model. Run locally for full control over every parameter.', url:'https://stability.ai', aff:'https://stability.ai?ref=aiportal', badge:'free', bestFor:'Local run, full customization', users:'10M+' },
      { name:'Adobe Firefly', desc:'Adobe\'s AI inside Photoshop and Illustrator. Copyright-safe content for commercial use.', url:'https://firefly.adobe.com', aff:'https://firefly.adobe.com?ref=aiportal', badge:'freemium', bestFor:'Commercial design, Adobe ecosystem', users:'5M+' },
      { name:'Ideogram', desc:'Best for generating text inside images. Posters, logos and book covers with accurate type.', url:'https://ideogram.ai', aff:'https://ideogram.ai?ref=aiportal', badge:'freemium', bestFor:'Posters with text, typography', users:'3M+' },
      { name:'Recraft AI', desc:'AI that generates scalable SVG vector graphics and icons. 30 free daily credits, commercial use allowed.', url:'https://recraft.ai', aff:'https://recraft.ai?ref=aiportal', badge:'freemium', bestFor:'SVG icons, vector art, brand assets', users:'500K+' },
      { name:'ComfyUI', desc:'The most powerful open-source node-based AI image generation platform. Build and automate full diffusion pipelines visually — connect Stable Diffusion models, LoRAs, ControlNet, upscalers and custom nodes on an infinite canvas. Supports image, video, 3D and audio generation. Used by Plarium and major game studios as a core tool for production-grade asset and model creation. Free forever, runs locally or in the cloud.', url:'https://www.comfy.org', aff:'https://www.comfy.org?ref=aiportal', badge:'free', bestFor:'Advanced pipelines, game studios, custom models, production workflows', users:'10M+' },
    ]
  },
  {
    id: 'video', title: 'Video Generation', icon: '🎬', color: '#f56565',
    tools: [
      { name:'Google Veo 3', desc:'Google\'s video generator with realistic audio and high visual quality. Market leader in 2026.', url:'https://deepmind.google/models/veo/', aff:'https://deepmind.google/models/veo/?ref=aiportal', badge:'freemium', bestFor:'High quality, realistic audio', users:'5M+' },
      { name:'Runway', desc:'Professional AI video editor. Gen-4 keeps characters consistent across scenes for short film production.', url:'https://runwayml.com', aff:'https://runwayml.com?ref=aiportal', badge:'freemium', bestFor:'Cinematic video, professionals', users:'3M+' },
      { name:'HeyGen', desc:'AI avatars and video dubbing in 40+ languages. Perfect for marketing and corporate training.', url:'https://heygen.com', aff:'https://heygen.com?ref=aiportal', badge:'freemium', bestFor:'Avatars, dubbing, marketing', users:'2M+' },
      { name:'Kling AI', desc:'2026 video generation leader. 60M users, videos up to 3 minutes with realistic physics.', url:'https://klingai.com', aff:'https://klingai.com?ref=aiportal', badge:'freemium', bestFor:'Long videos, motion physics', users:'60M+' },
      { name:'CapCut', desc:'Completely free AI video editor — no watermark, no subscription. Auto-subtitles, background removal and AI effects.', url:'https://capcut.com', aff:'https://capcut.com?ref=aiportal', badge:'free', bestFor:'Social media videos, reels, editing', users:'300M+' },
      { name:'Pika', desc:'AI video generation with 80 free monthly credits. Known for "Pikaffects" — unique visual transformations.', url:'https://pika.art', aff:'https://pika.art?ref=aiportal', badge:'freemium', bestFor:'Short clips, creative effects, social', users:'2M+' },
    ]
  },
  {
    id: 'design', title: 'Design & UI/UX', icon: '🖌️', color: '#f56580',
    tools: [
      { name:'Figma AI', desc:'AI features inside Figma. Auto-layout, component generation and layer auto-naming.', url:'https://figma.com', aff:'https://figma.com?ref=aiportal', badge:'freemium', bestFor:'UI/UX design, team collaboration', users:'5M+' },
      { name:'Canva AI', desc:'Magic Studio in Canva. Image generation, background removal and Magic Write for copy.', url:'https://canva.com', aff:'https://canva.com?ref=aiportal', badge:'freemium', bestFor:'Social media, presentations, marketing', users:'150M+' },
      { name:'Framer AI', desc:'Create landing pages from text descriptions with animations. Publish in one click.', url:'https://framer.com', aff:'https://framer.com?ref=aiportal', badge:'freemium', bestFor:'Landing pages, portfolio sites', users:'1M+' },
      { name:'Looka', desc:'AI generation of professional logos and full brand kits for any business in minutes.', url:'https://looka.com', aff:'https://looka.com?ref=aiportal', badge:'paid', bestFor:'Logos, branding for businesses', users:'2M+' },
      { name:'Uizard', desc:'App prototypes from sketches or descriptions in minutes. Built for PMs and startups.', url:'https://uizard.io', aff:'https://uizard.io?ref=aiportal', badge:'freemium', bestFor:'Prototypes, wireframes, MVP', users:'300K+' },
      { name:'Remove.bg', desc:'Remove image backgrounds instantly with one click. Free for web, API for developers, no signup required.', url:'https://remove.bg', aff:'https://remove.bg?ref=aiportal', badge:'freemium', bestFor:'Background removal, product photos, cutouts', users:'150M+' },
      { name:'Relume', desc:'AI website builder that generates sitemaps and wireframes in Figma and Webflow in minutes.', url:'https://relume.io', aff:'https://relume.io?ref=aiportal', badge:'freemium', bestFor:'Website wireframes, Figma, Webflow design', users:'200K+' },
    ]
  },
  {
    id: 'voice', title: 'Voice & Audio', icon: '🎙️', color: '#4aaef5',
    tools: [
      { name:'ElevenLabs', desc:'Best TTS with voice cloning in 29 languages. $11B valuation, now includes music generation.', url:'https://elevenlabs.io', aff:'https://elevenlabs.io?ref=aiportal', badge:'freemium', bestFor:'Voice cloning, TTS, voiceover', users:'5M+' },
      { name:'Whisper', desc:'Audio transcription by OpenAI. Open-source, supports 100 languages with high accuracy.', url:'https://openai.com/research/whisper', aff:'https://openai.com/research/whisper?ref=aiportal', badge:'free', bestFor:'Transcription, subtitles', users:'2M+' },
      { name:'Suno', desc:'AI music in any genre within seconds. 50 free songs per day for personal use.', url:'https://suno.ai', aff:'https://suno.ai?ref=aiportal', badge:'freemium', bestFor:'Fast music generation', users:'10M+' },
      { name:'Udio', desc:'Generate full music tracks with vocals from a text description. Any genre in seconds.', url:'https://udio.com', aff:'https://udio.com?ref=aiportal', badge:'freemium', bestFor:'Music with vocals, full tracks', users:'1M+' },
      { name:'Descript', desc:'Edit podcasts and video like a text document. Automatically removes filler words and pauses.', url:'https://descript.com', aff:'https://descript.com?ref=aiportal', badge:'freemium', bestFor:'Podcasts, text-based video editing', users:'500K+' },
      { name:'Adobe Podcast', desc:'Free AI audio enhancer. Removes background noise and echo — makes any mic sound studio-quality.', url:'https://podcast.adobe.com', aff:'https://podcast.adobe.com?ref=aiportal', badge:'free', bestFor:'Audio cleanup, podcast quality, remote recording', users:'1M+' },
    ]
  },
  {
    id: 'productivity', title: 'Productivity', icon: '⚡', color: '#f5a623',
    tools: [
      { name:'Notion AI', desc:'AI inside your Notion workspace. Write, summarize, translate and structure notes instantly.', url:'https://notion.so', aff:'https://notion.so?ref=aiportal', badge:'freemium', bestFor:'Notes, knowledge base, docs', users:'30M+' },
      { name:'Otter.ai', desc:'Real-time meeting transcription. Integrates with Zoom, Google Meet and Microsoft Teams.', url:'https://otter.ai', aff:'https://otter.ai?ref=aiportal', badge:'freemium', bestFor:'Meetings, transcription, notes', users:'2M+' },
      { name:'Zapier AI', desc:'Automate tasks between 6,000+ apps with AI logic and conditional actions. No code needed.', url:'https://zapier.com', aff:'https://zapier.com?ref=aiportal', badge:'freemium', bestFor:'Automation, no-code integrations', users:'5M+' },
      { name:'Gamma', desc:'Create stunning AI presentations, docs and websites in minutes. 10 free credits to start, no design skills needed.', url:'https://gamma.app', aff:'https://gamma.app?ref=aiportal', badge:'freemium', bestFor:'Presentations, pitch decks, visual docs', users:'2M+' },
      { name:'Fireflies.ai', desc:'AI meeting assistant that records, transcribes and summarizes every call. 800 minutes free storage.', url:'https://fireflies.ai', aff:'https://fireflies.ai?ref=aiportal', badge:'freemium', bestFor:'Meeting notes, action items, summaries', users:'1M+' },
      { name:'Reclaim.ai', desc:'AI that automatically plans your calendar and protects deep-work time from meetings.', url:'https://reclaim.ai', aff:'https://reclaim.ai?ref=aiportal', badge:'freemium', bestFor:'Time management, calendar AI', users:'500K+' },
    ]
  },
  {
    id: 'research', title: 'Research', icon: '🔬', color: '#9b6ef5',
    tools: [
      { name:'Perplexity', desc:'AI search with sources. Deep Research mode for detailed multi-page analysis on any topic.', url:'https://perplexity.ai', aff:'https://perplexity.ai?ref=aiportal', badge:'freemium', bestFor:'Research with citations', users:'15M+' },
      { name:'NotebookLM', desc:'Google\'s AI for your documents. Upload a PDF and get a podcast, summary or Q&A session.', url:'https://notebooklm.google.com', aff:'https://notebooklm.google.com?ref=aiportal', badge:'free', bestFor:'PDF analysis, summaries, Q&A', users:'5M+' },
      { name:'Elicit', desc:'AI research tool. Analyzes hundreds of papers simultaneously with structured conclusions.', url:'https://elicit.com', aff:'https://elicit.com?ref=aiportal', badge:'freemium', bestFor:'Scientific papers, literature review', users:'500K+' },
      { name:'Consensus', desc:'Search across scientific papers. Shows the scientific consensus on any question with percentages.', url:'https://consensus.app', aff:'https://consensus.app?ref=aiportal', badge:'freemium', bestFor:'Scientific consensus, fact-checking', users:'200K+' },
      { name:'Humata', desc:'AI for PDFs — ask any question and get instant answers with clickable citations. 60 pages free.', url:'https://humata.ai', aff:'https://humata.ai?ref=aiportal', badge:'freemium', bestFor:'PDF Q&A, legal docs, research papers', users:'500K+' },
      { name:'Semantic Scholar', desc:'Free AI search across 200M+ scientific papers with citation graphs and key findings.', url:'https://semanticscholar.org', aff:'https://semanticscholar.org?ref=aiportal', badge:'free', bestFor:'Academic search, citations', users:'10M+' },
    ]
  },
  {
    id: 'data', title: 'Data & Analytics', icon: '📊', color: '#38c9b0',
    tools: [
      { name:'Julius AI', desc:'AI data analyst. Upload a CSV and get beautiful charts, insights and conclusions — no code.', url:'https://julius.ai', aff:'https://julius.ai?ref=aiportal', badge:'freemium', bestFor:'CSV analysis, data visualization', users:'500K+' },
      { name:'Hex', desc:'Collaborative data notebooks with AI assistant. SQL, Python and charts for your whole team.', url:'https://hex.tech', aff:'https://hex.tech?ref=aiportal', badge:'freemium', bestFor:'Data science, team analytics', users:'100K+' },
      { name:'Tableau AI', desc:'Einstein AI in Tableau. Automatic insights, forecasts and trend explanations from big data.', url:'https://tableau.com', aff:'https://tableau.com?ref=aiportal', badge:'paid', bestFor:'BI, enterprise, visualization', users:'1M+' },
      { name:'Obviously AI', desc:'Predictive analytics without code. Build ML models and get forecasts in minutes.', url:'https://obviously.ai', aff:'https://obviously.ai?ref=aiportal', badge:'paid', bestFor:'Forecasting, no-code ML', users:'50K+' },
      { name:'Rows', desc:'Smart spreadsheets with AI. Import data from any source and analyze it right in the browser.', url:'https://rows.com', aff:'https://rows.com?ref=aiportal', badge:'freemium', bestFor:'AI spreadsheets, data import', users:'200K+' },
      { name:'Akkio', desc:'No-code AI for business analysts. Build forecasting models from your CSV or CRM data without writing code.', url:'https://akkio.com', aff:'https://akkio.com?ref=aiportal', badge:'freemium', bestFor:'Forecasting, churn prediction, no-code ML', users:'100K+' },
      { name:'Looker Studio', desc:'Free Google BI tool with AI-powered dashboards. Connects to 800+ data sources including Google Analytics and Sheets.', url:'https://lookerstudio.google.com', aff:'https://lookerstudio.google.com?ref=aiportal', badge:'free', bestFor:'BI dashboards, reporting, free analytics', users:'10M+' },
    ]
  },

  {
    id: 'nocode', title: 'No-Code App Builders', icon: '🏗️', color: '#457b9d',
    tools: [
      { name:'Lovable', desc:'Build full-stack web apps from text descriptions. React + Supabase backend, deploy in one click. No coding needed.', url:'https://lovable.dev', aff:'https://lovable.dev?ref=aiportal', badge:'freemium', bestFor:'Full-stack apps, SaaS MVPs', users:'500K+' },
      { name:'Bubble', desc:'The leading no-code platform. Build complex web apps with visual programming — used by 3M+ makers and startups.', url:'https://bubble.io', aff:'https://bubble.io?ref=aiportal', badge:'freemium', bestFor:'Web apps, marketplaces, SaaS', users:'3M+' },
      { name:'Webflow', desc:'Professional AI-powered website builder with CMS. Design pixel-perfect sites, export clean code.', url:'https://webflow.com', aff:'https://webflow.com?ref=aiportal', badge:'freemium', bestFor:'Marketing sites, CMS, landing pages', users:'3M+' },
      { name:'Glide', desc:'Turn Google Sheets or Airtable into mobile and web apps without code. 25K+ free rows included.', url:'https://glideapps.com', aff:'https://glideapps.com?ref=aiportal', badge:'freemium', bestFor:'Internal tools, data-driven apps', users:'100K+' },
      { name:'Softr', desc:'Build client portals and internal tools from Airtable or Google Sheets in minutes. No code required.', url:'https://softr.io', aff:'https://softr.io?ref=aiportal', badge:'freemium', bestFor:'Client portals, internal dashboards', users:'50K+' },
      { name:'FlutterFlow', desc:'Visual Flutter app builder. Build and deploy native iOS and Android apps without writing code.', url:'https://flutterflow.io', aff:'https://flutterflow.io?ref=aiportal', badge:'freemium', bestFor:'Mobile apps, iOS/Android, native performance', users:'500K+' },
    ]
  },
  {
    id: 'education', title: 'Education & Learning', icon: '🎓', color: '#2a9d8f',
    tools: [
      { name:'Khanmigo', desc:'AI tutor by Khan Academy. Uses the Socratic method — guides students to answers instead of giving them away.', url:'https://khanmigo.ai', aff:'https://khanmigo.ai?ref=aiportal', badge:'freemium', bestFor:'K-12 tutoring, math, science', users:'500K+' },
      { name:'Duolingo Max', desc:'AI language learning with GPT-4 roleplay. Practice real conversations with an AI native speaker.', url:'https://duolingo.com', aff:'https://duolingo.com?ref=aiportal', badge:'freemium', bestFor:'Language learning, speaking practice', users:'100M+' },
      { name:'Synthesis', desc:'AI-powered math and problem-solving for kids. Adaptive learning that adjusts to each student\'s level.', url:'https://synthesis.com', aff:'https://synthesis.com?ref=aiportal', badge:'paid', bestFor:'K-8 math, problem-solving skills', users:'200K+' },
      { name:'Coursera Coach', desc:'AI learning assistant inside Coursera. Explains concepts, answers questions and personalizes your learning path.', url:'https://coursera.org', aff:'https://coursera.org?ref=aiportal', badge:'freemium', bestFor:'Online courses, professional certificates', users:'100M+' },
      { name:'Photomath', desc:'Scan and solve math problems step-by-step with AI. 220M downloads — the most-used math app worldwide.', url:'https://photomath.com', aff:'https://photomath.com?ref=aiportal', badge:'freemium', bestFor:'Math homework, step-by-step solutions', users:'220M+' },
      { name:'Socratic by Google', desc:'Photograph any homework question and get step-by-step visual explanations across all subjects.', url:'https://socratic.org', aff:'https://socratic.org?ref=aiportal', badge:'free', bestFor:'Homework help, all subjects', users:'20M+' },
    ]
  },
  {
    id: 'presentations', title: 'Presentations & Slides', icon: '🖥️', color: '#8338ec',
    tools: [
      { name:'Beautiful.ai', desc:'AI presentation maker with smart slides that auto-redesign as you add content. 60+ professional templates.', url:'https://beautiful.ai', aff:'https://beautiful.ai?ref=aiportal', badge:'freemium', bestFor:'Business presentations, pitch decks', users:'500K+' },
      { name:'Tome', desc:'AI-native storytelling tool. Generate a full presentation from a one-line prompt in seconds.', url:'https://tome.app', aff:'https://tome.app?ref=aiportal', badge:'freemium', bestFor:'AI-generated decks, storytelling', users:'1M+' },
      { name:'Pitch', desc:'Collaborative presentation builder with AI writing. Used by fast-growing startups and design teams.', url:'https://pitch.com', aff:'https://pitch.com?ref=aiportal', badge:'freemium', bestFor:'Team presentations, startup decks', users:'500K+' },
      { name:'Slidesgo', desc:'AI presentation template generator. Thousands of Google Slides and PowerPoint themes, free to use.', url:'https://slidesgo.com', aff:'https://slidesgo.com?ref=aiportal', badge:'freemium', bestFor:'Templates, Google Slides, PowerPoint', users:'10M+' },
      { name:'Prezi', desc:'Zoomable presentation canvas with AI design assistant. Stands out from standard slide decks.', url:'https://prezi.com', aff:'https://prezi.com?ref=aiportal', badge:'freemium', bestFor:'Dynamic presentations, storytelling visuals', users:'5M+' },
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
    <div class="tool-card fade-up">
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
