-- INSERT comparisons rows with verdict+FAQ data
-- Pulls tool names/URLs from tools table via subqueries
-- ON CONFLICT: updates choose_a/choose_b/faq if row exists

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'adobe-firefly-vs-midjourney', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='adobe-firefly' AND lang='en'), 'adobe-firefly'),
  COALESCE((SELECT name FROM tools WHERE slug='midjourney' AND lang='en'), 'midjourney'),
  'adobe-firefly', 'midjourney',
  COALESCE((SELECT url FROM tools WHERE slug='adobe-firefly' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='midjourney' AND lang='en'), ''),
  '["✅ You need commercially safe images — Firefly is trained on licensed Adobe Stock content, zero copyright risk", "✅ You already use Adobe Creative Cloud (Photoshop, Illustrator) — Firefly is built in", "✅ Your use case is product/brand visuals where legal clearance matters", "✅ You want video generation alongside images in one Adobe workflow"]',
  '["✅ You prioritize raw artistic quality — Midjourney consistently produces the most aesthetically refined AI art", "✅ You work in creative fields where visual style beats legal compliance", "✅ You want a large community and /imagine prompt culture for inspiration", "✅ Budget is limited — Midjourney Basic at $10/mo is cheaper than Adobe CC"]',
  '[{"q": "Is Adobe Firefly copyright safe?", "a": "Yes. Adobe Firefly is trained exclusively on Adobe Stock images, openly licensed content, and public domain works. Output is commercially safe to use without copyright concerns — unlike most other AI image generators."}, {"q": "Is Midjourney better quality than Adobe Firefly?", "a": "For artistic and aesthetic quality, Midjourney generally produces more visually striking results. Firefly excels at photorealistic product images and brand-consistent visuals. The gap has narrowed significantly with Firefly 3 (2025)."}, {"q": "Can Adobe Firefly generate videos?", "a": "Yes. Adobe Firefly Video Model (launched 2024) generates short video clips from text prompts and is integrated into Adobe Premiere Pro. It focuses on commercially safe video assets for professional production."}, {"q": "Does Midjourney have a free plan?", "a": "No. As of 2025, Midjourney no longer offers a free trial. The cheapest plan is Basic at $10/month for approximately 200 image generations per month."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'aider-vs-github-copilot', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='aider' AND lang='en'), 'aider'),
  COALESCE((SELECT name FROM tools WHERE slug='github-copilot' AND lang='en'), 'github-copilot'),
  'aider', 'github-copilot',
  COALESCE((SELECT url FROM tools WHERE slug='aider' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='github-copilot' AND lang='en'), ''),
  '["✅ You work in the terminal and want autonomous multi-file edits with automatic git commits", "✅ You want to use your own API key (Claude, GPT-4, Gemini) — full model flexibility", "✅ You work on large refactoring tasks where the AI needs to edit across many files at once", "✅ You prefer open-source tools with full transparency"]',
  '["✅ You use VS Code, JetBrains, or Visual Studio and want inline AI suggestions as you type", "✅ Your team is on GitHub — Copilot integrates with PRs, issues, and code review", "✅ You want the most widely supported AI coding assistant with the largest ecosystem", "✅ You need enterprise features: SSO, audit logs, policy controls"]',
  '[{"q": "What is Aider?", "a": "Aider is an open-source AI coding assistant that runs in the terminal. It connects to AI models (Claude, GPT-4, Gemini) and can edit multiple files simultaneously, automatically committing changes to git after each step."}, {"q": "Is Aider better than GitHub Copilot?", "a": "They serve different workflows. Aider is better for autonomous multi-file refactoring from the command line. Copilot is better for real-time inline suggestions inside an IDE. Many developers use both."}, {"q": "Is Aider free?", "a": "Aider itself is free and open-source. You pay for the AI model API you connect it to — Claude or GPT-4 API costs apply per token used."}, {"q": "Does GitHub Copilot work without GitHub?", "a": "GitHub Copilot requires a GitHub account but works in VS Code, JetBrains, Neovim, and Visual Studio regardless of where your code is hosted. You don''''t need to push code to GitHub to use it."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'beautiful-ai-vs-pitch', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='beautiful-ai' AND lang='en'), 'beautiful-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='pitch' AND lang='en'), 'pitch'),
  'beautiful-ai', 'pitch',
  COALESCE((SELECT url FROM tools WHERE slug='beautiful-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='pitch' AND lang='en'), ''),
  '["✅ You create presentations solo and want slides that auto-format as you add content", "✅ You prioritize speed — Beautiful.ai''''s Smart Slides eliminate manual layout work", "✅ You don''''t need real-time collaboration or team analytics", "✅ Your budget is tight — Beautiful.ai Pro is cheaper than Pitch''''s team plans"]',
  '["✅ Your team creates presentations together and needs real-time co-editing", "✅ You want analytics — Pitch shows who viewed your deck and for how long", "✅ You pitch investors or clients and need professional templates with brand control", "✅ You want built-in video comments and async collaboration on slides"]',
  '[{"q": "What is Beautiful.ai used for?", "a": "Beautiful.ai is an AI presentation tool where slides auto-format as you add content. It''''s designed for individuals who create business presentations and want professional-looking results without manual design work."}, {"q": "Does Pitch have AI features?", "a": "Yes. Pitch includes AI slide generation, AI content suggestions, and AI-powered design assistance. It also offers real-time collaboration, viewer analytics, and team workspaces — differentiating it from solo-focused tools."}, {"q": "Is Beautiful.ai free?", "a": "Beautiful.ai offers a free plan with limited slides and features. The Pro plan starts at $12/month and the Team plan at $40/month per user, providing unlimited slides and collaboration."}, {"q": "Which is better for investor pitches — Beautiful.ai or Pitch?", "a": "Pitch is generally preferred for investor pitches due to its professional templates, viewer analytics (see when investors open your deck), and team collaboration. Beautiful.ai works well for internal business presentations."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'bolt-new-vs-cursor', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='bolt-new' AND lang='en'), 'bolt-new'),
  COALESCE((SELECT name FROM tools WHERE slug='cursor' AND lang='en'), 'cursor'),
  'bolt-new', 'cursor',
  COALESCE((SELECT url FROM tools WHERE slug='bolt-new' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='cursor' AND lang='en'), ''),
  '["✅ You''''re a non-developer or designer who wants to build a working web app from a text prompt", "✅ You want a shareable live app URL in minutes without touching a terminal", "✅ You''''re prototyping an idea quickly and don''''t need a local development environment", "✅ You want to deploy instantly to the web without DevOps knowledge"]',
  '["✅ You''''re a professional developer who wants AI assistance inside a full local dev environment", "✅ You work on complex codebases that require multi-file context and architecture decisions", "✅ You need version control, custom extensions, and the full VS Code ecosystem", "✅ You want the AI to understand your entire project, not just a prompt"]',
  '[{"q": "What is Bolt.new?", "a": "Bolt.new is a browser-based AI app builder by StackBlitz. You describe what you want in plain language and it generates a full-stack web application — frontend, backend, and database — running live in the browser without any local setup."}, {"q": "Is Bolt.new better than Cursor?", "a": "They target different users. Bolt.new is for rapid prototyping and non-developers who want results fast. Cursor is for professional developers who need AI assistance in a full local coding environment. Many developers use Bolt for prototyping and Cursor for production work."}, {"q": "Can Bolt.new build real production apps?", "a": "Bolt.new can generate production-ready code for smaller applications. For complex apps with custom infrastructure, performance requirements, or large teams, developers typically export the Bolt-generated code and continue in a local IDE like Cursor."}, {"q": "How much does Cursor cost?", "a": "Cursor offers a free Hobby plan with limited AI requests. The Pro plan is $20/month with unlimited completions and 500 fast requests. The Business plan is $40/user/month with team features and SSO."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'bubble-vs-webflow', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='bubble' AND lang='en'), 'bubble'),
  COALESCE((SELECT name FROM tools WHERE slug='webflow' AND lang='en'), 'webflow'),
  'bubble', 'webflow',
  COALESCE((SELECT url FROM tools WHERE slug='bubble' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='webflow' AND lang='en'), ''),
  '["✅ You''''re building a web application with complex logic — databases, user auth, workflows", "✅ You want a full backend: data storage, APIs, business logic — all without code", "✅ You''''re building a SaaS product, marketplace, or any app where users interact with data", "✅ You need to handle complex user flows, permissions, and custom logic"]',
  '["✅ You''''re building a marketing site, portfolio, or content-heavy website — not an app", "✅ You want pixel-perfect design control with a professional CMS", "✅ You need fast page loads and SEO-friendly output (Webflow generates clean HTML/CSS)", "✅ You want the best visual design tool in the no-code space"]',
  '[{"q": "What is the difference between Bubble and Webflow?", "a": "Bubble is a no-code application builder — it''''s for building web apps with databases, logic, and user interactions. Webflow is a no-code website builder focused on design and CMS. Bubble builds apps; Webflow builds websites."}, {"q": "Is Bubble good for SaaS?", "a": "Yes. Bubble is one of the most popular platforms for building SaaS products without code. It handles user authentication, databases, workflows, and API integrations. Many funded startups use Bubble as their primary platform."}, {"q": "Does Webflow have a database?", "a": "Webflow has a CMS (Content Management System) for structured content like blog posts and product listings. It''''s not a full application database — for user data, transactions, or complex logic, you''''d need Bubble or a custom backend."}, {"q": "Which is cheaper — Bubble or Webflow?", "a": "Webflow''''s Starter plan is free. Bubble also has a free plan. Paid plans are comparable — Webflow Core starts at $29/mo, Bubble Starter at $32/mo. Costs scale differently: Webflow charges per site traffic, Bubble charges per app workload."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'canva-ai-vs-figma-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='canva-ai' AND lang='en'), 'canva-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='figma-ai' AND lang='en'), 'figma-ai'),
  'canva-ai', 'figma-ai',
  COALESCE((SELECT url FROM tools WHERE slug='canva-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='figma-ai' AND lang='en'), ''),
  '["✅ You''''re a marketer, social media manager, or content creator — not a designer", "✅ You need quick social posts, presentations, and marketing materials with AI assistance", "✅ You want Magic Media, Magic Write, and 100+ AI tools in one platform", "✅ Your team includes non-designers who need to create branded content independently"]',
  '["✅ You''''re a UI/UX designer building product interfaces and interactive prototypes", "✅ Your team uses Figma for design handoff to developers — AI features are built in", "✅ You want AI to help with component generation, auto-layout, and design system work", "✅ You need precise design control with variables, constraints, and developer inspect"]',
  '[{"q": "Is Canva AI free?", "a": "Canva offers a free plan with limited AI features. Canva Pro ($15/month) unlocks Magic Media image generation, Magic Write, background remover, and other AI tools. Many AI features require a Pro subscription."}, {"q": "What AI features does Figma have?", "a": "Figma AI (launched 2024) includes AI-generated layers and designs from text prompts, AI rename for layers, first draft generation, and prototype generation. It''''s built into Figma and available to all paid plan users."}, {"q": "Can Canva replace Figma?", "a": "No. Canva and Figma serve different purposes. Canva is for creating marketing content and presentations. Figma is for designing UI/UX interfaces and product prototypes. Designers use Figma; content creators use Canva."}, {"q": "Which is better for beginners — Canva or Figma?", "a": "Canva is significantly easier for beginners — it''''s designed for non-designers with drag-and-drop simplicity. Figma has a steeper learning curve and is designed for professional designers. For quick graphics, start with Canva."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'capcut-vs-kling-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='capcut' AND lang='en'), 'capcut'),
  COALESCE((SELECT name FROM tools WHERE slug='kling-ai' AND lang='en'), 'kling-ai'),
  'capcut', 'kling-ai',
  COALESCE((SELECT url FROM tools WHERE slug='capcut' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='kling-ai' AND lang='en'), ''),
  '["✅ You edit existing footage for TikTok, Instagram Reels, or YouTube Shorts", "✅ You want auto-captions, transitions, and music sync for social media content", "✅ You''''re a content creator who needs a fast, mobile-friendly video editor", "✅ You want to edit real video clips — not generate video from scratch"]',
  '["✅ You want to generate video from text prompts or images — no existing footage needed", "✅ You need high-quality cinematic AI video with realistic motion and physics", "✅ You want native 4K output with per-shot storyboard control", "✅ You''''re creating AI-generated content, ads, or video concepts from scratch"]',
  '[{"q": "What is the difference between CapCut and Kling AI?", "a": "CapCut is a video editor — you import existing video clips and edit them. Kling AI is a video generator — it creates video from text prompts or images. CapCut is for editing; Kling is for generating."}, {"q": "Is Kling AI free?", "a": "Yes. Kling AI offers a free tier with 66 daily credits. This allows significant usage without paying. The Pro plan starts at $6.99/month for higher quality and more credits."}, {"q": "Can CapCut generate AI video?", "a": "CapCut has some AI generation features like Dream, but its primary strength is editing existing footage. For full AI video generation from text prompts, Kling AI, Runway, or Pika are more capable."}, {"q": "Is CapCut free?", "a": "CapCut is free with a generous feature set. CapCut Pro ($7.99/month) adds watermark removal, more AI features, and cloud storage. The free version is sufficient for most social media content creation."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'character-ai-vs-chatgpt', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='character-ai' AND lang='en'), 'character-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='chatgpt' AND lang='en'), 'chatgpt'),
  'character-ai', 'chatgpt',
  COALESCE((SELECT url FROM tools WHERE slug='character-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='chatgpt' AND lang='en'), ''),
  '["✅ You want to chat with AI personas — fictional characters, historical figures, or custom bots", "✅ You''''re interested in entertainment, roleplay, or companionship AI experiences", "✅ You want to create and share your own AI characters with a community", "✅ You''''re a writer using AI characters to explore dialogue and story scenarios"]',
  '["✅ You need a general-purpose AI assistant for real work: writing, coding, research, analysis", "✅ You want to generate images, browse the web, run code, or use plugins", "✅ You need accurate, reliable information — Character.AI prioritizes character over accuracy", "✅ You want the most capable AI model for professional and productivity tasks"]',
  '[{"q": "What is Character.AI used for?", "a": "Character.AI is used for conversational roleplay with AI personas. Users chat with AI versions of celebrities, fictional characters, historical figures, or custom bots. It''''s primarily for entertainment, social interaction, and creative writing — not for work tasks."}, {"q": "Is Character.AI safe?", "a": "Character.AI has content filters and age verification. However, it has faced scrutiny over inappropriate conversations with minors. Parents should monitor use. The platform has added safety features following incidents in 2024."}, {"q": "Can Character.AI help with homework?", "a": "Character.AI can have educational conversations but often prioritizes staying in character over factual accuracy. For homework help, ChatGPT, Claude, or Khanmigo are significantly more reliable and accurate."}, {"q": "Is ChatGPT better than Character.AI?", "a": "For work, research, and real tasks — yes, ChatGPT is far more capable. For entertainment, roleplay, and character-based conversations, Character.AI is purpose-built and has a larger character community. They serve completely different use cases."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'chatgpt-vs-claude', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='chatgpt' AND lang='en'), 'chatgpt'),
  COALESCE((SELECT name FROM tools WHERE slug='claude' AND lang='en'), 'claude'),
  'chatgpt', 'claude',
  COALESCE((SELECT url FROM tools WHERE slug='chatgpt' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='claude' AND lang='en'), ''),
  '["✅ You want the broadest ecosystem — image generation (DALL-E), web browsing, code interpreter, plugins", "✅ You need GPT-4o for multimodal tasks: analyzing images, voice conversations, real-time interaction", "✅ You''''re building on the OpenAI API — the largest developer ecosystem", "✅ You want the most widely integrated AI assistant across third-party apps"]',
  '["✅ You need the longest context window for analyzing large documents, codebases, or research papers", "✅ Your tasks require precise, nuanced writing — Claude''''s prose quality is consistently rated higher", "✅ You do agentic work: Claude 3.7 with extended thinking reasons more deeply on complex problems", "✅ You prioritize safety and careful reasoning — Claude is more likely to say ''''I don''''t know'''' accurately"]',
  '[{"q": "Is Claude better than ChatGPT?", "a": "It depends on the task. Claude generally produces better long-form writing and handles very long documents more accurately. ChatGPT has more features (image generation, voice, plugins) and a larger app ecosystem. On coding benchmarks, they are competitive — Claude 3.7 leads on many."}, {"q": "Which is free — ChatGPT or Claude?", "a": "Both have free plans. ChatGPT Free uses GPT-4o mini with limited GPT-4o access. Claude Free uses Claude 3.5 Haiku with limited Claude 3.5 Sonnet access. Both paid plans ($20/month) unlock the best models with higher usage limits."}, {"q": "Can ChatGPT generate images?", "a": "Yes. ChatGPT Plus and higher plans include DALL-E 3 image generation. Claude does not generate images — it''''s text and code only."}, {"q": "Which AI is better for coding — ChatGPT or Claude?", "a": "Both are excellent. Claude 3.7 Sonnet with extended thinking performs best on SWE-bench (real-world software engineering tasks) as of 2025. Claude Code (the agentic CLI) is specifically built for complex coding workflows. ChatGPT with code interpreter excels at data analysis and running code."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'claude-code-vs-github-copilot', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='claude-code' AND lang='en'), 'claude-code'),
  COALESCE((SELECT name FROM tools WHERE slug='github-copilot' AND lang='en'), 'github-copilot'),
  'claude-code', 'github-copilot',
  COALESCE((SELECT url FROM tools WHERE slug='claude-code' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='github-copilot' AND lang='en'), ''),
  '["✅ You need to refactor, debug, or build across an entire codebase — not just autocomplete", "✅ You work in the terminal and want an autonomous agent that plans and executes multi-step tasks", "✅ You''''re doing complex architecture work where the AI needs deep project understanding", "✅ You want the most capable model (Claude 3.7) for hard engineering problems"]',
  '["✅ You want inline code suggestions as you type in VS Code, JetBrains, or Visual Studio", "✅ Your team is on GitHub and you want AI integrated into PRs, issues, and code review", "✅ You need enterprise compliance features: SSO, audit logs, IP indemnity", "✅ You want broad language support with fast, low-latency completions"]',
  '[{"q": "What is Claude Code?", "a": "Claude Code is Anthropic''''s agentic CLI tool for software engineering. Unlike Copilot which suggests single lines, Claude Code can plan and execute multi-step coding tasks across an entire codebase — editing files, running tests, and committing changes autonomously."}, {"q": "Is Claude Code better than GitHub Copilot?", "a": "For complex, multi-file tasks and autonomous coding workflows, Claude Code is more capable. For real-time inline suggestions in an IDE, Copilot is more convenient. Many developers use both — Copilot for daily coding and Claude Code for larger tasks."}, {"q": "How much does Claude Code cost?", "a": "Claude Code requires a Claude Pro ($20/month) or higher subscription. It uses Claude 3.7 Sonnet and costs are included in the subscription within usage limits, with API overage charges for heavy use."}, {"q": "Does GitHub Copilot use Claude?", "a": "GitHub Copilot primarily uses OpenAI''''s models. GitHub has announced support for multiple models including Claude and Gemini in Copilot, allowing enterprise users to choose their preferred model as of 2025."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'clearscope-vs-surferseo', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='clearscope' AND lang='en'), 'clearscope'),
  COALESCE((SELECT name FROM tools WHERE slug='surferseo' AND lang='en'), 'surferseo'),
  'clearscope', 'surferseo',
  COALESCE((SELECT url FROM tools WHERE slug='clearscope' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='surferseo' AND lang='en'), ''),
  '["✅ You focus on content depth and topic coverage — Clearscope''''s grading system is more refined", "✅ You work with a content team and need clear, shareable content briefs", "✅ You write long-form content that requires comprehensive topic research", "✅ You want integrations with Google Docs and WordPress for seamless workflow"]',
  '["✅ You want real-time content scoring as you write — Surfer''''s editor updates live", "✅ You need an all-in-one SEO tool: content editor, keyword research, and SERP analysis", "✅ You want AI-generated content outlines and first drafts (Surfer AI)", "✅ You''''re a solo blogger or small team on a tighter budget"]',
  '[{"q": "What is the difference between Clearscope and SurferSEO?", "a": "Both are AI content optimization tools but with different strengths. Clearscope excels at content grading and topic depth analysis. SurferSEO offers a more complete platform with a real-time content editor, keyword research, and AI writing. Clearscope is deeper for content quality; Surfer is broader as an all-in-one tool."}, {"q": "Is SurferSEO worth it?", "a": "For content marketers publishing regularly, SurferSEO is generally considered worth the cost. It reduces content optimization time significantly and its recommendations correlate well with ranking improvements. The Essential plan at $99/month works for most small teams."}, {"q": "Does Clearscope have AI writing?", "a": "Clearscope focuses on content analysis and optimization rather than AI writing. It grades your content and suggests terms to include. For AI content generation, SurferSEO (with Surfer AI) or Jasper are better options."}, {"q": "How much does Clearscope cost?", "a": "Clearscope starts at $189/month for the Essentials plan, making it significantly more expensive than SurferSEO ($99/month). Clearscope targets enterprise content teams; SurferSEO serves a broader range of budgets."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'cursor-vs-copilot', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='cursor' AND lang='en'), 'cursor'),
  COALESCE((SELECT name FROM tools WHERE slug='github-copilot' AND lang='en'), 'github-copilot'),
  'cursor', 'github-copilot',
  COALESCE((SELECT url FROM tools WHERE slug='cursor' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='github-copilot' AND lang='en'), ''),
  '["✅ You want a full IDE built around AI — not just autocomplete added to an existing editor", "✅ You need the AI to understand your entire codebase context for accurate suggestions", "✅ You want Composer (multi-file editing) and deep codebase-aware chat", "✅ You''''re a power user who wants the most capable AI coding experience available"]',
  '["✅ You''''re already using VS Code, JetBrains, or Visual Studio and don''''t want to switch editors", "✅ Your team uses GitHub for everything — Copilot is natively integrated", "✅ You need enterprise security, compliance, and audit features", "✅ You prefer paying per seat for a team with consistent experience across all editors"]',
  '[{"q": "Is Cursor better than GitHub Copilot?", "a": "Cursor generally provides more powerful AI assistance — its codebase-aware context and Composer multi-file editing are more capable than Copilot''''s inline suggestions. However, Copilot has broader IDE support and enterprise features. Cursor is the choice for individual developers wanting the best AI experience."}, {"q": "Is Cursor free?", "a": "Cursor has a free Hobby plan with limited AI requests (2000 completions/month). The Pro plan is $20/month with unlimited completions and 500 fast Claude/GPT-4 requests. Business is $40/user/month."}, {"q": "Does Cursor use Claude or GPT-4?", "a": "Cursor supports multiple AI models including Claude 3.5 Sonnet, GPT-4o, and Cursor''''s own fine-tuned models. Pro users can choose which model to use. Claude 3.5 Sonnet is generally recommended for complex coding tasks."}, {"q": "Can I use GitHub Copilot and Cursor together?", "a": "Yes, but they''''d overlap significantly. Most developers choose one as their primary AI coding assistant. Cursor is typically preferred for its more powerful features, while Copilot is kept for teams using GitHub enterprise workflows."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'deepseek-vs-chatgpt', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='deepseek' AND lang='en'), 'deepseek'),
  COALESCE((SELECT name FROM tools WHERE slug='chatgpt' AND lang='en'), 'chatgpt'),
  'deepseek', 'chatgpt',
  COALESCE((SELECT url FROM tools WHERE slug='deepseek' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='chatgpt' AND lang='en'), ''),
  '["✅ You want the best free AI for reasoning and math — DeepSeek R1 rivals o1 at zero cost", "✅ You''''re a developer needing very cheap API access — DeepSeek''''s API is 20-40× cheaper than GPT-4", "✅ You work on coding and technical problems that benefit from chain-of-thought reasoning", "✅ You don''''t need image generation or voice and want maximum reasoning value for free"]',
  '["✅ You need image generation (DALL-E), voice conversations, or web browsing", "✅ You want the most reliable, well-tested AI with the largest support ecosystem", "✅ You use GPT-4o for multimodal tasks: analyzing images, documents, and data", "✅ You need enterprise features, SOC 2 compliance, and US-based data handling"]',
  '[{"q": "Is DeepSeek better than ChatGPT?", "a": "DeepSeek R1 matches or exceeds GPT-o1 on reasoning and math benchmarks — at a fraction of the cost. For pure text reasoning and coding, DeepSeek is competitive with the best models. ChatGPT has more features (images, voice, plugins) and better ecosystem support."}, {"q": "Is DeepSeek safe to use?", "a": "DeepSeek is a Chinese company (Hangzhou DeepSeek AI). Some organizations have concerns about data privacy under Chinese law. The model weights are open-source and can be run locally to avoid data sharing. US government agencies and some enterprises have restricted its use."}, {"q": "Is DeepSeek free?", "a": "Yes. DeepSeek chat at chat.deepseek.com is free with no usage limits on the web interface. The API is also very cheap — around $0.14 per million input tokens for DeepSeek V3, compared to $2.50 for GPT-4o mini."}, {"q": "What is DeepSeek R1?", "a": "DeepSeek R1 is DeepSeek''''s reasoning model, released January 2025. It uses chain-of-thought reasoning similar to OpenAI o1 and achieved comparable benchmark scores. It shocked the AI industry by matching frontier model performance at dramatically lower training and inference costs."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'gemini-vs-chatgpt', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='gemini' AND lang='en'), 'gemini'),
  COALESCE((SELECT name FROM tools WHERE slug='chatgpt' AND lang='en'), 'chatgpt'),
  'gemini', 'chatgpt',
  COALESCE((SELECT url FROM tools WHERE slug='gemini' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='chatgpt' AND lang='en'), ''),
  '["✅ You''''re deep in Google Workspace — Gemini works inside Gmail, Docs, Sheets, Slides natively", "✅ You want the best Google Search integration and real-time web information", "✅ You use Android or want the best mobile AI assistant for Google''''s ecosystem", "✅ You need multimodal analysis of complex documents with Google''''s Workspace files"]',
  '["✅ You need image generation, voice mode, or advanced data analysis (code interpreter)", "✅ You use the largest third-party app ecosystem — ChatGPT integrates with hundreds of apps", "✅ You want GPT-4o''''s proven track record and broad benchmark performance", "✅ You build on the API — OpenAI''''s developer ecosystem is the most mature"]',
  '[{"q": "Is Gemini better than ChatGPT in 2026?", "a": "On Google Workspace tasks, Gemini Ultra is the better choice. On general benchmarks, GPT-4o and Gemini 2.0 Ultra are competitive. ChatGPT has more features (image generation, voice, code interpreter) and a larger third-party ecosystem. Gemini wins for Google users; ChatGPT wins for general use."}, {"q": "Is Gemini free?", "a": "Yes. Gemini is free with access to Gemini 1.5 Flash. Google AI Pro ($19.99/month) unlocks Gemini 2.0 Ultra and integration with Google Workspace. Google One AI Premium ($19.99/month) adds Workspace integration."}, {"q": "Can Gemini generate images?", "a": "Yes. Gemini can generate images using Google''''s Imagen model. The quality is competitive but generally rated below Midjourney or DALL-E 3 for artistic output. It''''s convenient for quick image creation within the Google ecosystem."}, {"q": "What is the difference between Gemini and Google Bard?", "a": "Bard was Google''''s original AI chatbot, rebranded as Gemini in February 2024. They are the same product — if you used Bard, you''''re now using Gemini. The rebrand accompanied a significant upgrade in model capabilities."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'grok-vs-chatgpt', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='grok' AND lang='en'), 'grok'),
  COALESCE((SELECT name FROM tools WHERE slug='chatgpt' AND lang='en'), 'chatgpt'),
  'grok', 'chatgpt',
  COALESCE((SELECT url FROM tools WHERE slug='grok' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='chatgpt' AND lang='en'), ''),
  '["✅ You''''re active on X (Twitter) and want AI that understands real-time social media context", "✅ You want current news and trending topics without a knowledge cutoff", "✅ You want uncensored, edgier AI responses — Grok has fewer content restrictions", "✅ You''''re already paying for X Premium and want AI included in your subscription"]',
  '["✅ You need image generation, voice conversations, or advanced data analysis", "✅ You want the most reliable, feature-complete AI for professional work", "✅ You need a large plugin and integration ecosystem", "✅ You want the best-documented, most widely supported AI platform for building apps"]',
  '[{"q": "What is Grok AI?", "a": "Grok is xAI''''s AI assistant built into X (Twitter). It has real-time access to X posts and trending topics, making it unique for social media intelligence. Grok 3 (2025) is a frontier model competitive with GPT-4o on reasoning benchmarks."}, {"q": "Is Grok free?", "a": "Grok is included with X Premium ($8/month) and X Premium+ ($16/month). A standalone Grok app with more features is available for $30/month. There is no completely free version of Grok."}, {"q": "Is Grok 3 better than GPT-4?", "a": "Grok 3 is competitive with GPT-4o on reasoning and math benchmarks, and leads on some STEM tasks. For general-purpose use, coding, and ecosystem features, GPT-4o still has advantages. Grok''''s main differentiator is real-time X/Twitter access."}, {"q": "Does Grok generate images?", "a": "Yes. Grok includes Aurora, an image generation model. Quality is competitive with DALL-E 3. Grok is more permissive with image content than other AI assistants."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'heygen-vs-synthesia', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='heygen' AND lang='en'), 'heygen'),
  COALESCE((SELECT name FROM tools WHERE slug='synthesia' AND lang='en'), 'synthesia'),
  'heygen', 'synthesia',
  COALESCE((SELECT url FROM tools WHERE slug='heygen' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='synthesia' AND lang='en'), ''),
  '["✅ You need video translation with lip sync — HeyGen translates video in 175+ languages with matching lip movements", "✅ You create marketing, social media, or personalized video at scale", "✅ You want the most natural-looking AI avatars for consumer-facing content", "✅ You need streaming avatars for real-time customer interactions"]',
  '["✅ You create corporate training, onboarding, or compliance videos at enterprise scale", "✅ Your organization needs strict data security, SOC 2 compliance, and enterprise SSO", "✅ You want a proven platform with hundreds of professional avatar options", "✅ You need a SCORM-compatible LMS integration for e-learning delivery"]',
  '[{"q": "What is the difference between HeyGen and Synthesia?", "a": "HeyGen leads on video translation (lip-synced dubbing in 175+ languages) and natural-looking avatar quality. Synthesia leads on enterprise features, compliance, and LMS integration for corporate training. HeyGen targets marketing; Synthesia targets L&D teams."}, {"q": "Can HeyGen clone my voice?", "a": "Yes. HeyGen can clone your voice and create an AI avatar that looks and sounds like you from a short recording. This is used for video translation — your avatar speaks in other languages with your cloned voice."}, {"q": "Is Synthesia free?", "a": "Synthesia offers a free plan with 3 minutes of video per month. Paid plans start at $29/month for the Starter plan (10 minutes) and $89/month for Creator. Enterprise pricing is custom."}, {"q": "How much does HeyGen cost?", "a": "HeyGen''''s Creator plan starts at $29/month (4 minutes of video). Business is $89/month (15 minutes). Enterprise pricing is custom. Video translation credits are sold separately."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'kling-vs-runway', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='kling-ai' AND lang='en'), 'kling-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='runway' AND lang='en'), 'runway'),
  'kling-ai', 'runway',
  COALESCE((SELECT url FROM tools WHERE slug='kling-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='runway' AND lang='en'), ''),
  '["✅ You want the most generous free tier — 66 daily credits for video generation at no cost", "✅ You need native 4K output with per-shot storyboard control", "✅ You want built-in lip-synced audio generation in one pipeline", "✅ Budget matters — Kling Pro starts at $6.99/mo vs Runway''''s $15/mo"]',
  '["✅ You need the highest benchmark quality — Gen-4.5 is #1 on text-to-video leaderboards", "✅ You want access to multiple models (Veo 3.1, Kling, Seedance, FLUX) in one subscription", "✅ Character and environment consistency across multi-shot sequences is critical", "✅ You''''re a professional video creator who needs the best available output"]',
  '[{"q": "Is Kling AI better than Runway in 2026?", "a": "It depends on your priority. Runway Gen-4.5 leads on benchmark quality and offers a multi-model subscription. Kling 3.0 offers better value — more free credits, native 4K, and lower paid pricing. For professionals, Runway. For value, Kling."}, {"q": "Can I use Kling AI for free?", "a": "Yes. Kling AI offers 66 free credits daily — the most generous free tier among quality AI video generators. Runway''''s free trial gives 125 one-time credits that don''''t renew."}, {"q": "What is Runway Gen-4.5?", "a": "Runway Gen-4.5 is Runway''''s latest video model, ranking #1 on text-to-video quality leaderboards as of 2025. It''''s available on all paid Runway plans and one subscription also includes Veo 3.1, Kling 3.0, Seedance, and FLUX."}, {"q": "Does Kling AI support 4K?", "a": "Yes. Kling 3.0 (February 2026) supports native 4K output with a storyboard tool for per-shot camera control and built-in lip-synced audio generation."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'deepl-vs-grammarly', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='deepl' AND lang='en'), 'deepl'),
  COALESCE((SELECT name FROM tools WHERE slug='grammarly' AND lang='en'), 'grammarly'),
  'deepl', 'grammarly',
  COALESCE((SELECT url FROM tools WHERE slug='deepl' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='grammarly' AND lang='en'), ''),
  '["✅ You translate documents between languages professionally — DeepL''''s quality is best-in-class", "✅ You need bulk document translation (PDF, Word, PowerPoint) with formatting preserved", "✅ You work in a multilingual team or communicate with international clients", "✅ You want a glossary to ensure consistent terminology across translations"]',
  '["✅ You write in English and want real-time grammar, style, tone, and clarity suggestions", "✅ You need a browser extension that works across Gmail, Docs, Slack, and any text field", "✅ You want AI-powered rewriting, tone detection, and plagiarism checking", "✅ You''''re a student, writer, or professional who writes daily and wants consistent quality"]',
  '[{"q": "Can DeepL improve my English writing?", "a": "DeepL Write (a separate tool from DeepL Translate) improves English and German writing by rephrasing sentences for clarity and style. It''''s less comprehensive than Grammarly for grammar checking but strong for rephrasing."}, {"q": "Is Grammarly good for translation?", "a": "Grammarly does not translate between languages — it only works on English writing (and some other languages for basic checks). For translation, DeepL is the right tool."}, {"q": "Is DeepL free?", "a": "DeepL offers a free plan with text translation up to 5,000 characters per request and 3 document translations per month. DeepL Pro starts at $8.74/month for unlimited text translation and more document pages."}, {"q": "Which is more accurate — DeepL or Google Translate?", "a": "DeepL consistently outperforms Google Translate on accuracy and naturalness in studies, particularly for European languages. Google Translate supports more languages (100+ vs DeepL''''s 31), but DeepL''''s quality for supported languages is superior."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'descript-vs-adobe-podcast', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='descript' AND lang='en'), 'descript'),
  COALESCE((SELECT name FROM tools WHERE slug='adobe-podcast' AND lang='en'), 'adobe-podcast'),
  'descript', 'adobe-podcast',
  COALESCE((SELECT url FROM tools WHERE slug='descript' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='adobe-podcast' AND lang='en'), ''),
  '["✅ You edit podcasts or videos by editing the transcript — the most intuitive editing workflow", "✅ You want to remove filler words (um, uh) with one click across your entire recording", "✅ You need screen recording, video editing, and podcast production in one tool", "✅ You create YouTube content and need both video and audio editing in one place"]',
  '["✅ You specifically need AI audio enhancement — Enhance Speech removes background noise remarkably well", "✅ You record in a noisy environment and need to sound like you''''re in a studio", "✅ You''''re a podcaster focused purely on audio quality, not video", "✅ You already use Adobe Creative Cloud — Podcast integrates with Audition and Premiere"]',
  '[{"q": "What is Descript used for?", "a": "Descript is an audio and video editor where you edit by editing the text transcript. It''''s used for podcasts, video content, and screen recordings. Key features include automatic transcription, filler word removal, overdub (AI voice cloning), and screen recording."}, {"q": "Is Adobe Podcast free?", "a": "Adobe Podcast (now integrated into Adobe Firefly and Adobe Express) offers the Enhance Speech feature free with a free Adobe account. Advanced features require an Adobe Creative Cloud subscription."}, {"q": "Can Descript remove background noise?", "a": "Descript has Studio Sound, an AI feature that reduces background noise and improves audio quality. It''''s good but Adobe Podcast''''s Enhance Speech is generally considered more powerful for audio cleanup."}, {"q": "Does Descript have AI voice cloning?", "a": "Yes. Descript''''s Overdub feature creates an AI voice clone from a recording of your voice. You can type new words and have them spoken in your voice — useful for correcting audio without re-recording."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'elevenlabs-vs-murf-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='elevenlabs' AND lang='en'), 'elevenlabs'),
  COALESCE((SELECT name FROM tools WHERE slug='murf-ai' AND lang='en'), 'murf-ai'),
  'elevenlabs', 'murf-ai',
  COALESCE((SELECT url FROM tools WHERE slug='elevenlabs' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='murf-ai' AND lang='en'), ''),
  '["✅ You need the most natural-sounding AI voices and highest quality voice cloning", "✅ You create audio content (podcasts, audiobooks, voiceovers) where quality is paramount", "✅ You want to clone a specific voice from a short audio sample", "✅ You need a large selection of diverse voices across many languages and accents"]',
  '["✅ You create e-learning courses, explainer videos, or corporate training with voiceovers", "✅ You need a studio-style interface with a built-in video editor for lip-synced avatars", "✅ You want consistent, professional voices specifically optimized for presentation content", "✅ You need team collaboration and multiple users on one account"]',
  '[{"q": "Is ElevenLabs better than Murf?", "a": "ElevenLabs produces higher quality, more natural-sounding voices and has superior voice cloning. Murf is better for e-learning and presentation voiceovers with its integrated video sync and team features. Choose ElevenLabs for quality; Murf for e-learning workflows."}, {"q": "Can ElevenLabs clone my voice?", "a": "Yes. ElevenLabs can clone your voice from as little as 1 minute of clean audio. Professional voice cloning (Instant Voice Clone) is available on the Starter plan ($5/month). High-quality cloning (Professional Voice Clone) requires the Creator plan ($22/month)."}, {"q": "How much does Murf AI cost?", "a": "Murf offers a free plan with 10 minutes of voice generation. Creator plan is $29/month (2 hours/month), Business is $99/month (8 hours/month), and Enterprise is custom."}, {"q": "What languages does ElevenLabs support?", "a": "ElevenLabs supports 32+ languages including English, Spanish, French, German, Hindi, Arabic, Chinese, Japanese, and more. Voice quality varies by language — English and major European languages have the most natural output."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'suno-vs-udio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='suno' AND lang='en'), 'suno'),
  COALESCE((SELECT name FROM tools WHERE slug='udio' AND lang='en'), 'udio'),
  'suno', 'udio',
  COALESCE((SELECT url FROM tools WHERE slug='suno' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='udio' AND lang='en'), ''),
  '["✅ You want to generate complete songs quickly from a text description", "✅ You''''re a casual creator who wants full songs with vocals in seconds", "✅ You need a simple interface — describe the song, get the song", "✅ You want the most widely used AI music platform with the largest community"]',
  '["✅ You prioritize sonic quality and musical detail over speed", "✅ You''''re a musician wanting more control over stems and musical structure", "✅ You create instrumental or specific genre music where quality nuance matters", "✅ You want to generate shorter, high-quality music clips to build into longer tracks"]',
  '[{"q": "Is Suno or Udio better?", "a": "Suno is better for quickly generating complete songs — it''''s faster and more user-friendly. Udio generally produces higher sonic quality but has limitations on downloads in some regions. Both are competitive; Suno leads on ease of use and community size."}, {"q": "Is Suno free?", "a": "Suno offers a free plan with 50 credits per day (about 10 songs). The Pro plan is $8/month and Premier is $24/month for more credits, commercial use rights, and priority generation."}, {"q": "Can I sell music made with Suno?", "a": "Yes, on paid plans. Suno Pro and Premier grant commercial use rights to generated music. The free plan does not allow commercial use. Always check current terms as AI music licensing continues to evolve."}, {"q": "What is Udio AI?", "a": "Udio is an AI music generation tool that creates songs from text prompts. It launched in 2024 and is known for particularly high sonic quality. Udio has faced legal challenges from major record labels over training data."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'make-vs-n8n', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='make' AND lang='en'), 'make'),
  COALESCE((SELECT name FROM tools WHERE slug='n8n' AND lang='en'), 'n8n'),
  'make', 'n8n',
  COALESCE((SELECT url FROM tools WHERE slug='make' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='n8n' AND lang='en'), ''),
  '["✅ You want the most visual, beginner-friendly automation platform with a drag-and-drop interface", "✅ You need 1,500+ pre-built app connectors without writing code", "✅ You''''re a marketer or operations person building automations without developer help", "✅ You want reliable cloud hosting with built-in error handling and monitoring"]',
  '["✅ You want full control — n8n is open-source and can be self-hosted for free", "✅ You''''re a developer comfortable with JavaScript who wants to write custom node logic", "✅ You need to keep data on your own infrastructure for privacy or compliance reasons", "✅ You''''re building complex AI workflows with LLM nodes and vector databases"]',
  '[{"q": "What is the difference between Make and n8n?", "a": "Make is a cloud-based visual automation platform designed for non-technical users with 1,500+ connectors. n8n is an open-source automation tool that can be self-hosted, offering more technical flexibility and code control. Make is easier; n8n is more powerful for developers."}, {"q": "Is n8n free?", "a": "n8n is free to self-host on your own server. The cloud version (n8n.cloud) starts at $24/month. Self-hosting requires technical knowledge to set up and maintain."}, {"q": "Is Make better than Zapier?", "a": "Make (formerly Integromat) generally offers more complex automation workflows at a lower price than Zapier. Make''''s visual scenario builder handles multi-step, conditional logic better. Zapier is simpler and has broader app support. For power users, Make wins on value."}, {"q": "Can Make handle AI automations?", "a": "Yes. Make has built-in OpenAI, Anthropic, and other AI modules. You can build automations that call AI models, process responses, and trigger actions. It''''s widely used for AI-powered content generation and classification workflows."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'notion-ai-vs-zapier-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='notion-ai' AND lang='en'), 'notion-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='zapier-ai' AND lang='en'), 'zapier-ai'),
  'notion-ai', 'zapier-ai',
  COALESCE((SELECT url FROM tools WHERE slug='notion-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='zapier-ai' AND lang='en'), ''),
  '["✅ You live in Notion and want AI writing assistance, summarization, and Q&A from your docs", "✅ You want to ask questions across your entire Notion workspace with AI", "✅ You create written content — notes, docs, wikis — and want AI to improve, translate, or summarize", "✅ You''''re a Notion power user who wants AI that understands your existing knowledge base"]',
  '["✅ You want to automate workflows between different apps — not just write content", "✅ You need AI to classify, extract, or transform data as part of a larger automation", "✅ You connect 7,000+ apps and want AI as one step in a multi-app workflow", "✅ You''''re building automated processes that run without manual intervention"]',
  '[{"q": "What is the difference between Notion AI and Zapier AI?", "a": "Notion AI is an AI writing assistant built into Notion for creating and improving content within your workspace. Zapier AI is automation-focused — it uses AI to enhance workflow automations between apps. Notion AI is for knowledge work; Zapier AI is for workflow automation."}, {"q": "Is Notion AI worth it?", "a": "For Notion users who write regularly, Notion AI ($10/month added to any plan) is useful for summarizing, translating, rewriting, and Q&A across your docs. If you primarily need a writing assistant outside Notion, Claude or ChatGPT offer more capability for the same price."}, {"q": "Can Zapier AI replace a developer?", "a": "Zapier AI can automate many tasks that previously required developer effort — data extraction, classification, and transformation. However, complex custom logic still requires coding. Zapier AI reduces but doesn''''t eliminate the need for technical resources."}, {"q": "Does Notion have automation?", "a": "Notion has basic built-in automations (button triggers, database automations). For complex cross-app workflows, you''''d use Zapier or Make integrated with Notion. Notion AI handles content; Zapier handles external app connections."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'cline-vs-github-copilot', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='cline' AND lang='en'), 'cline'),
  COALESCE((SELECT name FROM tools WHERE slug='github-copilot' AND lang='en'), 'github-copilot'),
  'cline', 'github-copilot',
  COALESCE((SELECT url FROM tools WHERE slug='cline' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='github-copilot' AND lang='en'), ''),
  '["✅ You want an autonomous AI agent inside VS Code that plans and executes multi-file tasks", "✅ You use your own API key (Claude, GPT-4, Gemini) and want full model flexibility", "✅ You work on complex refactoring where AI needs to edit across many files in sequence", "✅ You prefer open-source tools with full transparency into what the AI is doing"]',
  '["✅ You want inline code suggestions as you type in VS Code, JetBrains, or Visual Studio", "✅ Your team is on GitHub and needs AI integrated into PRs, issues, and code review", "✅ You need enterprise features: SSO, audit logs, IP indemnity, policy controls", "✅ You want the most widely supported AI coding assistant across all major IDEs"]',
  '[{"q": "What is Cline?", "a": "Cline is an open-source AI coding agent that runs inside VS Code. Unlike Copilot which suggests single lines, Cline can plan and execute complex multi-step tasks — creating files, running commands, and making changes across your codebase autonomously."}, {"q": "Is Cline free?", "a": "Cline itself is free and open-source. You pay only for the AI model API you connect it to — Claude, GPT-4, or Gemini API costs apply per token. Heavy use can cost $10-50/month in API fees depending on your model choice."}, {"q": "Cline vs Cursor — what''''s the difference?", "a": "Both are AI-powered coding tools, but Cline is a VS Code extension (you keep your existing editor) while Cursor is a full VS Code fork with deeper AI integration. Cline uses your own API key; Cursor includes model access in its subscription. Cursor generally has a more polished experience; Cline offers more flexibility."}, {"q": "Does GitHub Copilot work outside of GitHub?", "a": "GitHub Copilot works in VS Code, JetBrains, Neovim, Visual Studio, and other IDEs regardless of where your code is hosted. You need a GitHub account but don''''t need to use GitHub for version control to benefit from Copilot''''s suggestions."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'consensus-vs-perplexity', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='consensus' AND lang='en'), 'consensus'),
  COALESCE((SELECT name FROM tools WHERE slug='perplexity' AND lang='en'), 'perplexity'),
  'consensus', 'perplexity',
  COALESCE((SELECT url FROM tools WHERE slug='consensus' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='perplexity' AND lang='en'), ''),
  '["✅ You need answers backed by peer-reviewed scientific papers — not just web pages", "✅ You''''re a researcher, student, or health professional who needs cited academic sources", "✅ You want consensus meters that show what percentage of studies agree on a claim", "✅ You work in medicine, science, or policy where evidence quality matters most"]',
  '["✅ You want fast answers from across the entire web, not just academic databases", "✅ You need current news, recent events, or information updated within days", "✅ You want a general-purpose AI search engine for everyday research questions", "✅ You need to explore broad topics quickly with cited web sources"]',
  '[{"q": "What is Consensus AI?", "a": "Consensus is an AI-powered academic search engine that searches 200+ million peer-reviewed papers. It extracts key findings, shows consensus percentages across studies, and provides cited answers — specifically for scientific and medical questions."}, {"q": "Is Consensus free?", "a": "Consensus has a free plan with limited searches per month. Consensus Premium is $8.99/month and unlocks unlimited searches, GPT-4 summaries, study snapshots, and advanced filters."}, {"q": "Is Perplexity good for academic research?", "a": "Perplexity searches the web including academic sources, but it doesn''''t specialize in peer-reviewed papers the way Consensus does. For academic research requiring study citations and evidence quality, Consensus is more reliable. Perplexity is better for broad current-events research."}, {"q": "What is the difference between Consensus and Google Scholar?", "a": "Google Scholar is a search index — it finds papers but you have to read them yourself. Consensus uses AI to extract key findings from papers and synthesize them into direct answers, with a consensus meter showing how much agreement exists across studies. Consensus saves significant reading time."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'copilot-studio-vs-manus', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), 'microsoft-copilot-studio'),
  COALESCE((SELECT name FROM tools WHERE slug='manus' AND lang='en'), 'manus'),
  'microsoft-copilot-studio', 'manus',
  COALESCE((SELECT url FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='manus' AND lang='en'), ''),
  '["✅ You''''re building custom AI chatbots for Microsoft Teams, SharePoint, or enterprise portals", "✅ Your organization runs on Microsoft 365 and needs AI within existing workflows", "✅ You want a no-code chatbot builder with Power Platform connectors and compliance", "✅ You need enterprise governance, SSO, data residency, and audit logging"]',
  '["✅ You want an autonomous AI agent that completes full tasks on your behalf — not just answers questions", "✅ You need an AI that can browse the web, write code, and execute multi-step plans independently", "✅ You work on research, analysis, or task automation that requires independent decision-making", "✅ You want general-purpose agentic AI rather than a chatbot for a specific platform"]',
  '[{"q": "What is Microsoft Copilot Studio?", "a": "Copilot Studio is Microsoft''''s no-code platform for building custom AI chatbots and agents. It integrates with Microsoft 365, Teams, SharePoint, and Power Platform. Organizations use it to create HR bots, customer service agents, and internal knowledge assistants."}, {"q": "What is Manus AI?", "a": "Manus is an autonomous AI agent developed in China that can complete complex tasks independently — browsing the web, writing code, managing files, and executing multi-step plans. Unlike chatbots, Manus takes actions rather than just answering questions."}, {"q": "Is Copilot Studio free?", "a": "Copilot Studio requires a Microsoft 365 subscription. It includes 25,000 generative AI messages per month per tenant on paid plans. Additional message packs are available. The pricing model is complex — contact Microsoft for enterprise pricing."}, {"q": "Can Manus replace human work?", "a": "Manus can automate many research, analysis, and task-execution workflows that previously required human effort. However, it works best for well-defined tasks with clear goals. Complex judgment calls, sensitive decisions, and creative work still benefit from human oversight."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'copy-ai-vs-jasper', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='copy-ai' AND lang='en'), 'copy-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='jasper' AND lang='en'), 'jasper'),
  'copy-ai', 'jasper',
  COALESCE((SELECT url FROM tools WHERE slug='copy-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='jasper' AND lang='en'), ''),
  '["✅ You want a free plan with generous AI writing capabilities for marketing copy", "✅ You need workflow automation — Copy.ai''''s automated pipelines handle multi-step content tasks", "✅ You create short-form marketing content: ads, social posts, product descriptions, emails", "✅ You want a simple interface with 90+ copywriting templates to get started quickly"]',
  '["✅ You manage a team and need brand voice controls — Jasper learns your specific writing style", "✅ You create long-form content: blog posts, white papers, and multi-chapter documents", "✅ You need enterprise features: team collaboration, user permissions, and SSO", "✅ You''''re a content marketing team producing high volume content that must stay on-brand"]',
  '[{"q": "What is Copy.ai used for?", "a": "Copy.ai is an AI writing platform for marketing content. It generates ad copy, email subject lines, product descriptions, social media posts, and blog outlines. The platform also offers automated content workflows that run multi-step AI tasks without manual prompting."}, {"q": "Is Copy.ai free?", "a": "Copy.ai offers a free plan with 2,000 words per month and limited workflow runs. The Pro plan starts at $49/month for unlimited words and 200 workflow credits. Team and enterprise plans are available for larger organizations."}, {"q": "Is Jasper worth the price?", "a": "Jasper is one of the more expensive AI writing tools, starting at $49/month. For individual creators, Claude or ChatGPT offer comparable writing quality at lower cost. Jasper''''s value is in brand voice training and team collaboration features — worth it for marketing teams of 3+ people."}, {"q": "What is the difference between Copy.ai and Jasper?", "a": "Copy.ai focuses on marketing copy and workflow automation at a more accessible price. Jasper focuses on brand consistency and long-form content for enterprise teams. Copy.ai is better for solo marketers; Jasper is better for teams with strict brand guidelines."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'devin-vs-copilot-studio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='devin' AND lang='en'), 'devin'),
  COALESCE((SELECT name FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), 'microsoft-copilot-studio'),
  'devin', 'microsoft-copilot-studio',
  COALESCE((SELECT url FROM tools WHERE slug='devin' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), ''),
  '["✅ You need an autonomous AI software engineer that can plan and execute entire coding projects", "✅ You want AI that runs in its own environment — browser, terminal, editor — to complete coding tasks", "✅ You have well-defined engineering tasks: bug fixes, feature implementation, test writing", "✅ You''''re a team wanting to scale engineering output without hiring more developers"]',
  '["✅ You''''re building AI chatbots and copilots for Microsoft Teams or enterprise portals", "✅ Your use case is customer service, HR, or internal knowledge bots — not code generation", "✅ You need Microsoft compliance, data residency, and enterprise governance", "✅ You want a no-code builder for non-technical teams to create business chatbots"]',
  '[{"q": "What is Devin AI?", "a": "Devin is an autonomous AI software engineer by Cognition AI. It runs in its own sandboxed environment with a browser, terminal, and code editor, and can complete multi-step engineering tasks — planning, implementing, testing, and debugging — with minimal human input."}, {"q": "How much does Devin cost?", "a": "Devin is available as an enterprise product. Pricing is not publicly listed and requires contacting Cognition AI. A Teams version for smaller organizations was announced in 2025. It''''s designed for engineering teams, not individual developers."}, {"q": "Is Devin better than GitHub Copilot?", "a": "They serve different purposes. Devin is an autonomous agent that completes entire tasks. Copilot is an assistant that helps developers as they write code. Devin replaces engineering effort on defined tasks; Copilot amplifies developer productivity. Both can be used together."}, {"q": "What can Copilot Studio build?", "a": "Copilot Studio can build customer service chatbots, HR assistants, IT helpdesk bots, internal knowledge bases with Q&A, and automated workflows connected to Microsoft 365 data. It''''s designed for business use cases, not software engineering automation."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'duolingo-max-vs-khanmigo', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='duolingo-max' AND lang='en'), 'duolingo-max'),
  COALESCE((SELECT name FROM tools WHERE slug='khanmigo' AND lang='en'), 'khanmigo'),
  'duolingo-max', 'khanmigo',
  COALESCE((SELECT url FROM tools WHERE slug='duolingo-max' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='khanmigo' AND lang='en'), ''),
  '["✅ You''''re learning a new language and want AI-powered conversation practice and role-play", "✅ You love gamified learning — streaks, XP, leagues — to stay motivated daily", "✅ You want Explain My Answer and Roleplay features powered by GPT-4 for language immersion", "✅ You''''re a casual learner who wants bite-sized lessons on mobile at any time"]',
  '["✅ You''''re a student needing help with math, science, history, or humanities subjects", "✅ You want a Socratic tutor that guides you to the answer rather than giving it directly", "✅ You''''re a teacher wanting AI tools for lesson planning, feedback, and student support", "✅ You study with Khan Academy and want AI integrated into that curriculum"]',
  '[{"q": "What is Duolingo Max?", "a": "Duolingo Max is the premium tier of Duolingo that adds AI features powered by GPT-4: Explain My Answer (detailed explanations of why you got a question right or wrong) and Roleplay (practice conversations with AI characters in real-life scenarios)."}, {"q": "What is Khanmigo?", "a": "Khanmigo is Khan Academy''''s AI tutor powered by GPT-4. It helps students with academic subjects using the Socratic method — asking guiding questions rather than giving direct answers. It''''s free for students in the US thanks to Khan Academy funding."}, {"q": "Is Khanmigo free?", "a": "Khanmigo is free for students in the United States. For schools and districts, Khanmigo is available through Khan Academy''''s district programs. Outside the US, it requires a Khan Academy donation of $4+/month to access."}, {"q": "Can Duolingo teach me to be fluent?", "a": "Duolingo builds vocabulary and basic grammar effectively but is generally not sufficient to reach fluency alone. It works best as a daily habit combined with other practice like speaking with native speakers, watching content, or using tools like iTalki for conversation practice."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'elevenlabs-vs-playht', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='elevenlabs' AND lang='en'), 'elevenlabs'),
  COALESCE((SELECT name FROM tools WHERE slug='playht' AND lang='en'), 'playht'),
  'elevenlabs', 'playht',
  COALESCE((SELECT url FROM tools WHERE slug='elevenlabs' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='playht' AND lang='en'), ''),
  '["✅ You need the most natural-sounding AI voices — ElevenLabs is consistently rated #1 for voice quality", "✅ You want to clone a specific voice from a short audio sample for voiceovers or dubbing", "✅ You create high-quality audio content like audiobooks, podcasts, or professional voiceovers", "✅ You need the widest language and accent selection with natural emotional expression"]',
  '["✅ You want faster generation speeds for high-volume text-to-speech workflows", "✅ You need a more affordable plan for basic voice generation without advanced cloning", "✅ You create podcast content and want built-in podcast hosting integration", "✅ You want ultra-low latency streaming voices for real-time conversational AI applications"]',
  '[{"q": "Is ElevenLabs better than Play.ht?", "a": "ElevenLabs generally produces higher quality, more natural-sounding voices and has superior voice cloning. Play.ht offers faster generation and lower pricing for basic use cases. For quality-critical work like audiobooks and professional voiceovers, ElevenLabs leads."}, {"q": "Is Play.ht free?", "a": "Play.ht offers a free plan with 12,500 characters per month (roughly 10 minutes of audio). Creator plan starts at $31.20/month, Unlimited at $49.50/month. Enterprise pricing is custom."}, {"q": "Can Play.ht clone voices?", "a": "Yes. Play.ht has an Instant Voice Clone feature that creates a voice clone from an audio sample. Quality is good but generally rated below ElevenLabs for naturalness and accuracy on short samples."}, {"q": "What is ElevenLabs used for?", "a": "ElevenLabs is used for AI voiceovers, audiobook narration, podcast production, video dubbing, voice cloning, and building voice-enabled AI applications. Its API is widely used by developers building conversational AI products and voice assistants."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'elicit-vs-consensus', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='elicit' AND lang='en'), 'elicit'),
  COALESCE((SELECT name FROM tools WHERE slug='consensus' AND lang='en'), 'consensus'),
  'elicit', 'consensus',
  COALESCE((SELECT url FROM tools WHERE slug='elicit' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='consensus' AND lang='en'), ''),
  '["✅ You conduct systematic literature reviews and need to extract structured data from many papers", "✅ You want to automate the screening and data extraction phase of academic research", "✅ You need tables summarizing specific fields (sample size, methodology, outcomes) across studies", "✅ You''''re a researcher doing meta-analysis who processes dozens to hundreds of papers"]',
  '["✅ You want quick, plain-language answers backed by peer-reviewed papers", "✅ You need consensus meters showing how many studies agree or disagree on a claim", "✅ You''''re a student, clinician, or policy professional who needs fast evidence-based answers", "✅ You want a simpler interface for finding scientific consensus without data extraction"]',
  '[{"q": "What is Elicit?", "a": "Elicit is an AI research assistant designed for systematic literature reviews. It searches academic databases, screens papers for relevance, and extracts structured data into tables — automating the most time-consuming parts of academic research. It''''s used by researchers, scientists, and evidence synthesis teams."}, {"q": "What is the difference between Elicit and Consensus?", "a": "Elicit is built for systematic reviews — it extracts structured data from papers into tables for meta-analysis. Consensus is built for fast Q&A — it synthesizes findings from papers into plain-language answers with a consensus meter. Elicit is for deep research workflows; Consensus is for quick evidence-based answers."}, {"q": "Is Elicit free?", "a": "Elicit has a free plan with 5,000 credits per month (roughly 500 paper summaries). Elicit Plus is $12/month for 15,000 credits, and higher tiers are available for teams and institutions."}, {"q": "Can Elicit replace a research assistant?", "a": "Elicit can handle the mechanical parts of systematic reviews: paper screening, data extraction, and summarization. It significantly reduces research assistant hours for literature reviews. However, expert judgment for quality assessment and interpretation of findings still requires human researchers."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'figma-ai-vs-canva-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='figma-ai' AND lang='en'), 'figma-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='canva-ai' AND lang='en'), 'canva-ai'),
  'figma-ai', 'canva-ai',
  COALESCE((SELECT url FROM tools WHERE slug='figma-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='canva-ai' AND lang='en'), ''),
  '["✅ You''''re a UI/UX designer building product interfaces, prototypes, or design systems", "✅ Your team uses Figma for developer handoff — AI features are built into your existing workflow", "✅ You want AI to generate components, auto-layout suggestions, and design variations", "✅ You need precise control with variables, constraints, and auto-layout for professional product design"]',
  '["✅ You''''re a marketer, content creator, or social media manager — not a trained designer", "✅ You need quick social posts, presentations, and marketing materials with 100+ AI tools", "✅ You want Magic Media image generation, Magic Write, and background removal in one platform", "✅ Your team includes non-designers who need to create branded content independently"]',
  '[{"q": "What AI features does Figma have?", "a": "Figma AI includes first draft generation (create designs from text prompts), AI rename (automatically name layers based on content), prototype generation, visual search, and AI-powered design suggestions. Features launched in 2024 and are available to all paid Figma users."}, {"q": "Is Canva AI good for professional design?", "a": "Canva AI is excellent for marketing content, presentations, and social graphics. For professional UI/UX product design, it lacks the precision, prototyping, and developer handoff capabilities of Figma. Designers use Figma for product work and Canva for marketing assets."}, {"q": "Can Canva replace Figma?", "a": "No. They serve fundamentally different purposes. Figma is for designing software products — apps, websites — with precision and developer collaboration. Canva is for creating marketing visuals. A product designer at a tech company uses Figma; a social media manager uses Canva."}, {"q": "Is Figma free?", "a": "Figma has a free Starter plan for up to 3 projects and 3 collaborators. Professional is $15/editor/month. Organization is $45/editor/month with advanced team features. AI features are included in paid plans."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'fiscal-ai-vs-koyfin', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='finchat' AND lang='en'), 'finchat'),
  COALESCE((SELECT name FROM tools WHERE slug='koyfin' AND lang='en'), 'koyfin'),
  'finchat', 'koyfin',
  COALESCE((SELECT url FROM tools WHERE slug='finchat' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='koyfin' AND lang='en'), ''),
  '["✅ You want to ask natural language questions about a company''''s earnings calls and SEC filings", "✅ You research specific stocks and want AI to answer precise questions from financial documents", "✅ You analyze earnings reports, 10-Ks, and 10-Qs and need AI to extract key insights fast", "✅ You prefer conversational Q&A over dashboards for financial research"]',
  '["✅ You want a Bloomberg-style terminal for fundamental and market data at a fraction of the cost", "✅ You need comprehensive financial charts, screening tools, and peer comparison dashboards", "✅ You track portfolios, monitor news, and screen for investment ideas across thousands of stocks", "✅ You''''re a professional investor who needs a data-rich research platform, not just document Q&A"]',
  '[{"q": "What is Fiscal.ai / FinChat?", "a": "Fiscal.ai (also known as FinChat) is an AI-powered financial research tool that lets investors chat with company financial documents — earnings call transcripts, SEC filings, annual reports. Ask any question and get cited answers directly from source documents."}, {"q": "What is Koyfin?", "a": "Koyfin is a financial data and analytics platform positioned as an affordable alternative to Bloomberg Terminal. It provides fundamental data, financial charts, market data, portfolio tracking, and screening tools for individual investors and investment professionals."}, {"q": "Is Koyfin free?", "a": "Koyfin has a free plan with limited features. The Plus plan is $19/month and Pro is $59/month, both offering significantly more data and features than free. It''''s considerably cheaper than Bloomberg ($24,000/year) or FactSet while covering most individual investor needs."}, {"q": "Can Fiscal.ai analyze multiple companies at once?", "a": "Fiscal.ai is best for deep-dive research on specific companies — querying their documents in detail. For comparing multiple companies simultaneously across quantitative metrics, Koyfin''''s screening and comparison tools are more efficient."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'flutterflow-vs-bubble', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='flutterflow' AND lang='en'), 'flutterflow'),
  COALESCE((SELECT name FROM tools WHERE slug='bubble' AND lang='en'), 'bubble'),
  'flutterflow', 'bubble',
  COALESCE((SELECT url FROM tools WHERE slug='flutterflow' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='bubble' AND lang='en'), ''),
  '["✅ You''''re building native iOS and Android mobile apps — not just web apps", "✅ You want to generate production Flutter/Dart code that you can export and own", "✅ You need offline functionality, native device features (camera, GPS, push notifications)", "✅ You want a visual builder that compiles to real native mobile code, not a web wrapper"]',
  '["✅ You''''re building a web application with complex database logic and user interactions", "✅ You need a full-stack no-code platform: database, auth, workflows, and API connections", "✅ You''''re creating a SaaS product, marketplace, or app where users interact with data", "✅ You want the largest no-code developer community and plugin ecosystem"]',
  '[{"q": "What is the difference between FlutterFlow and Bubble?", "a": "FlutterFlow builds native mobile apps (iOS and Android) using Flutter — it outputs real Flutter code. Bubble builds web applications with complex logic and databases, accessible via browser. FlutterFlow is for mobile; Bubble is for web apps."}, {"q": "Can FlutterFlow export code?", "a": "Yes. FlutterFlow can export production-ready Flutter/Dart code to GitHub or download it locally. This means you can start visually and continue development in code — you''''re not locked into the platform."}, {"q": "Is Bubble good for mobile?", "a": "Bubble builds web apps that work on mobile browsers, but not native iOS/Android apps. For true native mobile apps, FlutterFlow or React Native are better choices. Bubble''''s strength is web application logic, not mobile native features."}, {"q": "How much does FlutterFlow cost?", "a": "FlutterFlow''''s free plan supports basic apps. The Standard plan is $30/month and the Pro plan is $70/month. A Teams plan is available for collaborative work. Code export requires a paid plan."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'flux-vs-stable-diffusion', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='flux' AND lang='en'), 'flux'),
  COALESCE((SELECT name FROM tools WHERE slug='stable-diffusion' AND lang='en'), 'stable-diffusion'),
  'flux', 'stable-diffusion',
  COALESCE((SELECT url FROM tools WHERE slug='flux' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='stable-diffusion' AND lang='en'), ''),
  '["✅ You want the best current image quality — FLUX.1 leads on photorealism and prompt accuracy", "✅ You use FLUX through commercial APIs (Replicate, fal.ai) and want premium results", "✅ You need precise text rendering within images — FLUX handles typography significantly better", "✅ You want natural-looking human hands, faces, and anatomy without common AI artifacts"]',
  '["✅ You want completely free, unlimited image generation running locally on your own hardware", "✅ You need access to thousands of community fine-tuned models for specific styles", "✅ You want full control: ControlNet, LoRA, img2img, inpainting — the full generation pipeline", "✅ You value privacy — images never leave your machine when running locally"]',
  '[{"q": "Is FLUX better than Stable Diffusion?", "a": "FLUX.1 by Black Forest Labs produces significantly better image quality than SDXL — sharper, more photorealistic, with better text and hand rendering. However, Stable Diffusion has a massive ecosystem of community models, LoRAs, and tools built around it that FLUX doesn''''t yet match."}, {"q": "Can I run FLUX locally?", "a": "Yes. FLUX.1 Schnell (the fast version) and FLUX.1 Dev are available on Hugging Face and can be run locally. However, FLUX requires more VRAM than Stable Diffusion — ideally 24GB+ for full quality. Smaller quantized versions work on 8-12GB GPUs."}, {"q": "What is FLUX.1?", "a": "FLUX.1 is an image generation model by Black Forest Labs, founded by the original Stable Diffusion researchers. Released in August 2024, it comes in three versions: Schnell (fast, open weights), Dev (quality, open weights), and Pro (best quality, API only). It quickly became the benchmark leader for image quality."}, {"q": "Is Stable Diffusion free?", "a": "Yes. Stable Diffusion model weights are open-source and free to download and use locally. You need a compatible GPU (Nvidia recommended) and software like ComfyUI or Automatic1111 to run it. There are no usage fees for local generation."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'framer-ai-vs-canva-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='framer-ai' AND lang='en'), 'framer-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='canva-ai' AND lang='en'), 'canva-ai'),
  'framer-ai', 'canva-ai',
  COALESCE((SELECT url FROM tools WHERE slug='framer-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='canva-ai' AND lang='en'), ''),
  '["✅ You want to publish a complete, live website — not just design graphics", "✅ You need a professional web presence with custom domain, animations, and CMS", "✅ You want AI to generate a full website from a text description that you can edit and publish", "✅ You''''re a designer or startup building a landing page or portfolio that needs to go live"]',
  '["✅ You create marketing graphics, social media posts, presentations, and printed materials", "✅ You''''re a non-designer who needs beautiful visuals without learning a new tool", "✅ You want 100+ AI tools: image generation, Magic Write, background removal, video editing", "✅ You collaborate with a team on branded design assets across many different formats"]',
  '[{"q": "What is Framer AI?", "a": "Framer AI is a website builder where you describe your site in text and AI generates a complete, styled website. You can then edit the design visually, add CMS content, and publish to a live URL with a custom domain. It bridges the gap between AI generation and professional web design."}, {"q": "Can Canva build a website?", "a": "Canva has a basic website builder feature, but it''''s limited compared to dedicated website builders like Framer or Webflow. Canva websites lack advanced animations, CMS functionality, and design control. Canva is best for graphics; Framer is better for actual websites."}, {"q": "Is Framer AI free?", "a": "Framer has a free plan for one site with a framer.app subdomain. Mini plan is $5/month, Basic is $15/month, and Pro is $30/month — all with custom domain support. AI site generation is included in the free plan."}, {"q": "Is Framer better than Webflow?", "a": "Framer is faster to use and has better AI generation. Webflow has more advanced CMS capabilities, more complex e-commerce, and a larger freelancer ecosystem. Framer suits designers who want speed; Webflow suits agencies building complex client sites."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'frase-vs-semrush', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='frase' AND lang='en'), 'frase'),
  COALESCE((SELECT name FROM tools WHERE slug='semrush' AND lang='en'), 'semrush'),
  'frase', 'semrush',
  COALESCE((SELECT url FROM tools WHERE slug='frase' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='semrush' AND lang='en'), ''),
  '["✅ You create SEO content and want AI to research, outline, and optimize articles in one workflow", "✅ You want to analyze what top-ranking pages cover and build better content briefs faster", "✅ You''''re a content marketer who needs AI writing assistance alongside SEO optimization", "✅ Your primary need is content creation and on-page optimization, not full SEO strategy"]',
  '["✅ You need a complete SEO platform: keyword research, backlink analysis, site audits, competitor tracking", "✅ You manage SEO strategy across multiple clients or websites", "✅ You want PPC research, social media monitoring, and PR tools alongside SEO", "✅ You need the most comprehensive competitive intelligence in digital marketing"]',
  '[{"q": "What is Frase IO?", "a": "Frase is an AI-powered SEO content tool that helps you research, write, and optimize articles for search. It analyzes the top-ranking pages for your target keyword, extracts key topics they cover, and helps you create briefs and content that matches search intent."}, {"q": "Is SEMrush worth the price?", "a": "For serious SEO professionals and agencies, SEMrush is generally considered worth the $139-449/month price. It replaces multiple standalone tools (keyword research, backlink checker, site audit, rank tracking). For small businesses doing basic SEO, cheaper alternatives like Ubersuggest may suffice."}, {"q": "Can Frase replace SEMrush?", "a": "No. Frase focuses on content optimization — it doesn''''t do full keyword research, backlink analysis, or technical SEO audits the way SEMrush does. Frase is often used alongside SEMrush: SEMrush for strategy and keyword research, Frase for content creation and optimization."}, {"q": "How much does Frase cost?", "a": "Frase Solo plan is $15/month (1 user, 4 articles/month). Basic is $45/month (1 user, 30 articles). Team is $115/month (3 users, unlimited articles). A Frase Pro add-on ($35/month) adds unlimited AI writing."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'gamma-vs-beautiful-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='gamma' AND lang='en'), 'gamma'),
  COALESCE((SELECT name FROM tools WHERE slug='beautiful-ai' AND lang='en'), 'beautiful-ai'),
  'gamma', 'beautiful-ai',
  COALESCE((SELECT url FROM tools WHERE slug='gamma' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='beautiful-ai' AND lang='en'), ''),
  '["✅ You want to generate a polished presentation from a text prompt in under 2 minutes", "✅ You prefer card-based, web-native presentations that are shareable as links — no downloads needed", "✅ You want AI to write the content and design the slides simultaneously", "✅ You need to embed video, analytics on who viewed your deck, and interactive elements"]',
  '["✅ You prefer PowerPoint-like slide control with Smart Slides that auto-format as you type", "✅ You want slides that export cleanly to PowerPoint for clients or presentations requiring that format", "✅ You create traditional business presentations where slide-by-slide structure is expected", "✅ You want a more familiar slide editor experience with AI assistance rather than full AI generation"]',
  '[{"q": "What is Gamma AI?", "a": "Gamma is an AI presentation tool that generates complete, designed presentations from a text prompt. Unlike traditional slide builders, Gamma creates card-based web presentations that are shared as links. It generates content, layout, and visuals simultaneously in seconds."}, {"q": "Is Gamma free?", "a": "Gamma has a free plan with 400 AI credits (enough for several full presentations). Plus is $10/month and Pro is $20/month for unlimited AI generation, custom domains, and analytics on who views your decks."}, {"q": "Can Beautiful.ai export to PowerPoint?", "a": "Yes. Beautiful.ai can export presentations to PowerPoint format (.pptx). This makes it useful when you need to share files with people who expect traditional slide formats. Gamma''''s web-native format doesn''''t export to PowerPoint as cleanly."}, {"q": "Which is better for business presentations — Gamma or Beautiful.ai?", "a": "For fast AI-generated presentations shared digitally, Gamma is faster and more modern. For traditional business presentations that may need PowerPoint export or a conventional slide-by-slide structure, Beautiful.ai gives more control. Both produce professional results."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'gamma-vs-notion-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='gamma' AND lang='en'), 'gamma'),
  COALESCE((SELECT name FROM tools WHERE slug='notion-ai' AND lang='en'), 'notion-ai'),
  'gamma', 'notion-ai',
  COALESCE((SELECT url FROM tools WHERE slug='gamma' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='notion-ai' AND lang='en'), ''),
  '["✅ You need to create a presentation, deck, or visual document — not a written note", "✅ You want AI to generate a complete visual presentation from a text prompt in seconds", "✅ You share work as live web links and want viewer analytics and embedded media", "✅ Your output needs to look like a designed presentation, not a text document"]',
  '["✅ You live in Notion and want AI to help write, summarize, and organize your existing docs", "✅ You want to ask questions across your entire Notion workspace with AI search", "✅ You create notes, wikis, databases, and project documentation — not presentations", "✅ You''''re already paying for Notion and want AI integrated into your daily workflow"]',
  '[{"q": "What is the difference between Gamma and Notion AI?", "a": "Gamma is a presentation generator — it creates visual slide decks from text prompts. Notion AI is an assistant built into the Notion workspace for writing, summarizing, and querying documents. Gamma makes presentations; Notion AI makes your writing and knowledge management better."}, {"q": "Can Notion AI create presentations?", "a": "Notion AI can create structured documents and outlines that look like presentation content, but it doesn''''t produce designed slides or visual presentations. For actual presentations, Gamma, Beautiful.ai, or Pitch are the right tools."}, {"q": "Is Notion AI worth it?", "a": "For regular Notion users who write frequently, Notion AI ($10/month add-on) is useful for drafting, summarizing, translating, and Q&A. If you primarily need AI writing outside Notion, Claude or ChatGPT offer more flexibility for the same price."}, {"q": "Is Gamma good for business use?", "a": "Yes. Gamma is used for sales decks, client presentations, investor pitches, internal reports, and training materials. The viewer analytics (who opened your deck, how long they spent on each card) are particularly useful for sales and business development."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'gamma-vs-pitch', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='gamma' AND lang='en'), 'gamma'),
  COALESCE((SELECT name FROM tools WHERE slug='pitch' AND lang='en'), 'pitch'),
  'gamma', 'pitch',
  COALESCE((SELECT url FROM tools WHERE slug='gamma' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='pitch' AND lang='en'), ''),
  '["✅ You want to create a presentation solo and fast — AI generates the full deck in seconds", "✅ You prefer modern card-based web presentations shared as links rather than file downloads", "✅ You don''''t need real-time team co-editing for this specific presentation", "✅ You want built-in analytics, embedded video, and interactive elements in your deck"]',
  '["✅ Your team co-creates presentations in real-time — Pitch has the best collaborative editor", "✅ You pitch investors or clients and need professional templates with viewer engagement analytics", "✅ You want video comments and async feedback directly on slides without leaving the tool", "✅ You need brand management with locked templates that maintain visual consistency across the team"]',
  '[{"q": "Is Gamma good for investor pitches?", "a": "Gamma can create visually appealing investor decks quickly, and the link-sharing with analytics is useful. However, Pitch''''s professional templates, team collaboration, and more detailed viewer analytics (time per slide) make it better suited for high-stakes investor pitches where polish and insights matter."}, {"q": "Is Pitch free?", "a": "Pitch has a free plan for unlimited decks with basic collaboration. The Pro plan is $25/month for advanced analytics, custom domains, and premium templates. Business plans start at $100/month for larger teams."}, {"q": "Does Gamma have collaboration features?", "a": "Gamma supports basic collaboration — sharing and comments. However, real-time co-editing like Google Slides or Pitch is more limited. For teams actively co-creating presentations, Pitch offers a more robust collaborative experience."}, {"q": "What is Pitch used for?", "a": "Pitch is a collaborative presentation platform designed for teams. It''''s used for investor pitches, sales decks, client presentations, and company all-hands. Its key differentiators are real-time collaboration, viewer analytics (who watched, for how long), and video messaging on slides."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'gamma-vs-prezi', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='gamma' AND lang='en'), 'gamma'),
  COALESCE((SELECT name FROM tools WHERE slug='prezi' AND lang='en'), 'prezi'),
  'gamma', 'prezi',
  COALESCE((SELECT url FROM tools WHERE slug='gamma' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='prezi' AND lang='en'), ''),
  '["✅ You want AI to generate a complete, well-designed presentation from a text prompt in seconds", "✅ You prefer modern flat card-based layouts over non-linear zooming presentations", "✅ You want to share presentations as web links with viewer analytics and embedded media", "✅ You need a faster, more current AI presentation tool — Gamma was built in 2023+"]',
  '["✅ You want non-linear, zoomable presentations that tell a visual story differently than slides", "✅ You present live and want the kinetic zooming effect to engage audiences", "✅ You have existing Prezi presentations and need to work within that format", "✅ You want a presentation style that clearly stands out from standard slide decks"]',
  '[{"q": "Is Prezi still relevant in 2026?", "a": "Prezi is still used and has added AI features. However, its zooming presentation style has become less fashionable, and newer tools like Gamma have surpassed it for AI generation quality and modern design. Prezi''''s main remaining differentiator is its unique non-linear presentation format."}, {"q": "Does Prezi have AI?", "a": "Yes. Prezi AI (launched 2023) can generate presentations from prompts and transform documents into presentations. The AI quality has improved but is generally considered below Gamma or Tome for design output."}, {"q": "Is Gamma free?", "a": "Gamma has a free plan with 400 AI credits — enough for several full presentations. Plus is $10/month and Pro is $20/month for unlimited AI generation, analytics, and custom domains."}, {"q": "What happened to Prezi?", "a": "Prezi remains active and profitable but has declined from its peak popularity around 2012-2016. It pivoted to Prezi Video (presenting with overlays on video calls) and Prezi Design, and added AI features. It still has millions of users, particularly in education."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'glide-vs-bubble', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='glide' AND lang='en'), 'glide'),
  COALESCE((SELECT name FROM tools WHERE slug='bubble' AND lang='en'), 'bubble'),
  'glide', 'bubble',
  COALESCE((SELECT url FROM tools WHERE slug='glide' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='bubble' AND lang='en'), ''),
  '["✅ You want to build a simple mobile app from data already in Google Sheets or Airtable", "✅ Your use case is a directory, portal, or internal tool with straightforward data display", "✅ You''''re a non-technical user who needs an app built in hours, not weeks", "✅ You want the fastest path from spreadsheet data to a working mobile app"]',
  '["✅ You''''re building a complex web application with custom business logic and database", "✅ You need user authentication, conditional workflows, and multi-step data operations", "✅ You''''re creating a SaaS product, marketplace, or any app with complex user interactions", "✅ You want the most powerful no-code platform with the largest developer ecosystem"]',
  '[{"q": "What is Glide?", "a": "Glide is a no-code platform that turns Google Sheets, Excel, or Airtable data into mobile apps. You connect your spreadsheet, choose a layout, and get a working app without code. It''''s designed for simple use cases: directories, portals, inventory trackers, and internal tools."}, {"q": "What is the difference between Glide and Bubble?", "a": "Glide turns spreadsheets into simple apps quickly and is designed for non-technical users. Bubble is a full no-code web application builder that handles complex logic, databases, and workflows. Glide is faster for simple apps; Bubble is more powerful for complex products."}, {"q": "Is Glide free?", "a": "Glide has a free plan for simple apps with Glide branding and limited features. Maker plan is $49/month, Team is $99/month. Business plans vary by data usage and number of users."}, {"q": "Can Glide build complex apps?", "a": "Glide works well for apps up to moderate complexity — multiple tables, user roles, basic logic. For SaaS products, marketplaces, or apps with complex conditional logic and custom workflows, Bubble offers significantly more power. Many users start with Glide and migrate to Bubble as needs grow."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'google-veo-3-vs-runway', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='google-veo-3' AND lang='en'), 'google-veo-3'),
  COALESCE((SELECT name FROM tools WHERE slug='runway' AND lang='en'), 'runway'),
  'google-veo-3', 'runway',
  COALESCE((SELECT url FROM tools WHERE slug='google-veo-3' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='runway' AND lang='en'), ''),
  '["✅ You want the highest quality AI video with native audio generation (dialogue, sound effects, music)", "✅ You''''re in the Google ecosystem and want access through Google AI Ultra or Gemini", "✅ You need cinematic realism with synchronized audio in a single generation step", "✅ You want the latest frontier video model — Veo 3 leads quality benchmarks in 2025"]',
  '["✅ You''''re a professional video creator who needs a complete production platform, not just a generator", "✅ You want access to multiple models (Veo 3.1, Kling 3.0, Seedance, FLUX) in one subscription", "✅ You need precise editing tools: inpainting, motion brush, multi-shot consistency", "✅ You have an established video workflow and need AI as one component, not the entire pipeline"]',
  '[{"q": "What is Google Veo 3?", "a": "Google Veo 3 is Google''''s latest AI video generation model, released at Google I/O 2025. It generates high-quality video with synchronized native audio — dialogue, ambient sound, and music — from text prompts. It''''s available through Google AI Ultra subscription and the VideoFX tool."}, {"q": "How much does Google Veo 3 cost?", "a": "Veo 3 is available through Google AI Ultra ($249.99/month) which also includes the latest Gemini models and Google Workspace AI. Access through VideoFX (labs.google/fx) has been offered in limited preview. API pricing for developers is separate."}, {"q": "Is Runway Gen-4.5 better than Veo 3?", "a": "Veo 3 leads on overall realism and native audio generation. Runway Gen-4.5 ranks #1 on third-party text-to-video leaderboards for visual quality and character consistency. For production workflows, Runway''''s full feature set (editing tools, multi-model access) has advantages over Veo 3 as a standalone generator."}, {"q": "Can Runway generate audio with video?", "a": "Runway can generate video and has some audio features, but native synchronized audio generation is not its primary strength. Google Veo 3''''s simultaneous audio-visual generation (dialogue, sound effects, music) is more advanced as of 2025."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'hemingway-editor-vs-grammarly', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='hemingway-editor' AND lang='en'), 'hemingway-editor'),
  COALESCE((SELECT name FROM tools WHERE slug='grammarly' AND lang='en'), 'grammarly'),
  'hemingway-editor', 'grammarly',
  COALESCE((SELECT url FROM tools WHERE slug='hemingway-editor' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='grammarly' AND lang='en'), ''),
  '["✅ You write content that needs to be clear, simple, and readable — blogs, emails, landing pages", "✅ You want to eliminate adverbs, passive voice, and complex sentences for stronger writing", "✅ You want a distraction-free editor focused purely on readability — no grammar nitpicking", "✅ You''''re a writer who already knows grammar and needs structural feedback, not spell checking"]',
  '["✅ You want real-time grammar, spelling, and punctuation corrections as you type", "✅ You write in many places — browser extension covers Gmail, Docs, Slack, and every text field", "✅ You want AI-powered tone detection, clarity suggestions, and full rewriting assistance", "✅ You need plagiarism detection for academic or professional writing"]',
  '[{"q": "What does Hemingway Editor do?", "a": "Hemingway Editor analyzes your writing for readability. It highlights long sentences, passive voice, complex words, and unnecessary adverbs — color-coded by severity. It assigns a grade-level readability score. The goal is writing that''''s clear, direct, and easy to read."}, {"q": "Is Hemingway Editor free?", "a": "Hemingway Editor has a free web version at hemingwayapp.com. The desktop app (Mac/Windows) is a one-time purchase of $19.99. There is no subscription — pay once and own it permanently."}, {"q": "Is Grammarly better than Hemingway?", "a": "They do different things. Grammarly checks grammar, spelling, and style with real-time suggestions. Hemingway focuses on sentence structure and readability. Many writers use both: Grammarly for correctness, Hemingway for clarity. Grammarly is more comprehensive; Hemingway is more focused."}, {"q": "Does Hemingway Editor have AI writing?", "a": "Hemingway Editor added AI writing features in 2023 powered by GPT-4. You can ask the AI to rewrite highlighted sentences, generate content, or improve passages. The AI is an add-on — the core product remains the readability analysis."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'hex-vs-looker-studio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='hex' AND lang='en'), 'hex'),
  COALESCE((SELECT name FROM tools WHERE slug='looker-studio' AND lang='en'), 'looker-studio'),
  'hex', 'looker-studio',
  COALESCE((SELECT url FROM tools WHERE slug='hex' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='looker-studio' AND lang='en'), ''),
  '["✅ You''''re a data scientist or analyst who wants collaborative Python and SQL notebooks with AI assistance", "✅ You build data apps — interactive tools where business users explore data with filters and inputs", "✅ You need a platform where data teams and business stakeholders can work in the same document", "✅ You want AI that writes SQL and Python from natural language and explains code"]',
  '["✅ You need free dashboards connected to Google Analytics, BigQuery, Sheets, or Ads data", "✅ You create shareable reports for clients or teams without paying anything", "✅ You''''re a marketer or analyst building straightforward dashboards, not complex data apps", "✅ You want the simplest path from Google data to a visual dashboard"]',
  '[{"q": "What is Hex?", "a": "Hex is a collaborative data platform combining SQL notebooks, Python, and no-code charts into a single workspace. Data teams use it to analyze data and build interactive data apps. Hex Magic (AI) writes SQL and Python from natural language, explains code, and auto-generates visualizations."}, {"q": "Is Looker Studio free?", "a": "Yes. Looker Studio (formerly Google Data Studio) is completely free. It connects to 800+ data sources including Google Analytics, BigQuery, Sheets, Ads, and many third-party connectors. There are no limits on dashboards, reports, or data volume."}, {"q": "What is the difference between Looker Studio and Hex?", "a": "Looker Studio creates drag-and-drop visual dashboards — it''''s a reporting tool for business users. Hex is a data notebook and app builder for data teams who work in SQL and Python. Looker Studio is read-only visual reporting; Hex is interactive analysis and computation."}, {"q": "How much does Hex cost?", "a": "Hex has a free plan for individuals with 2 published apps. Team plan is $24/user/month. Pro and Enterprise plans are available for larger organizations. The free plan is generous for individual analysts."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'ideogram-vs-midjourney', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='ideogram' AND lang='en'), 'ideogram'),
  COALESCE((SELECT name FROM tools WHERE slug='midjourney' AND lang='en'), 'midjourney'),
  'ideogram', 'midjourney',
  COALESCE((SELECT url FROM tools WHERE slug='ideogram' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='midjourney' AND lang='en'), ''),
  '["✅ You need text rendered accurately inside images — logos, posters, t-shirt designs, typography", "✅ You create graphic design assets where legible text within the image is essential", "✅ You want a generous free tier — Ideogram offers free daily generations", "✅ You need prompt adherence that reliably produces what you describe, not artistic interpretation"]',
  '["✅ You prioritize raw visual quality and aesthetic beauty — Midjourney leads on artistic output", "✅ You create photography-style images, concept art, or illustrations where style matters most", "✅ You want the largest AI art community for prompt inspiration and sharing", "✅ You work in creative fields where visual excellence beats text accuracy"]',
  '[{"q": "What is Ideogram AI?", "a": "Ideogram is an AI image generator specifically optimized for generating text within images. It excels at creating posters, logos, t-shirt designs, and any image where readable text is part of the visual. Ideogram 2.0 (2024) also added strong photorealism and design capabilities."}, {"q": "Can Midjourney generate text in images?", "a": "Midjourney V6 added improved text generation, but it still struggles with accurate text rendering compared to Ideogram or DALL-E 3. For images where text accuracy is critical — signs, logos, product labels — Ideogram is the better choice."}, {"q": "Is Ideogram free?", "a": "Ideogram has a free plan with 10 slow generations per day. Basic plan is $7/month, Plus is $16/month, Pro is $48/month. The free tier is generous for occasional use."}, {"q": "Is Midjourney better than DALL-E 3?", "a": "For artistic quality and aesthetic appeal, most users rate Midjourney above DALL-E 3. DALL-E 3 is better for prompt accuracy and text generation. Midjourney V6 leads in photorealism and creative imagery; DALL-E 3 leads in following complex descriptions literally."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'jasper-vs-writesonic', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='jasper' AND lang='en'), 'jasper'),
  COALESCE((SELECT name FROM tools WHERE slug='writesonic' AND lang='en'), 'writesonic'),
  'jasper', 'writesonic',
  COALESCE((SELECT url FROM tools WHERE slug='jasper' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='writesonic' AND lang='en'), ''),
  '["✅ You manage a content marketing team and need brand voice training across all AI output", "✅ You create long-form content — blog posts, white papers — with consistent brand style", "✅ You need enterprise features: user permissions, team collaboration, and SSO", "✅ Quality and brand consistency matter more than cost for your organization"]',
  '["✅ You want an all-in-one platform: AI writer, chatbot (Chatsonic), and image generation", "✅ You need more affordable AI writing — Writesonic plans start lower than Jasper", "✅ You create high-volume content quickly without strict brand voice requirements", "✅ You want built-in Google Search integration for fact-checked, up-to-date content"]',
  '[{"q": "Is Jasper AI worth it in 2026?", "a": "Jasper is worth it for content teams of 3+ people where brand consistency is critical. The brand voice training and team features justify the higher price. For individual creators, Claude, ChatGPT, or Writesonic offer comparable writing quality at lower cost."}, {"q": "What is Writesonic used for?", "a": "Writesonic is an AI content platform for marketers and businesses. It generates blog posts, ads, product descriptions, and landing pages. Chatsonic (its chatbot) has Google Search access for current information. It also generates AI images via Photosonic."}, {"q": "Is Writesonic free?", "a": "Writesonic has a free trial with 25 credits. Individual plan starts at $16/month, Small Team at $45/month. Enterprise plans are custom. It''''s generally cheaper than Jasper at equivalent feature levels."}, {"q": "Does Jasper have SEO tools?", "a": "Jasper integrates with Surfer SEO for content optimization. This combination — Jasper for writing, Surfer for optimization — is popular with content marketing teams. Jasper alone doesn''''t include SEO analysis; Surfer must be added separately."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'julius-ai-vs-looker-studio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='julius-ai' AND lang='en'), 'julius-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='looker-studio' AND lang='en'), 'looker-studio'),
  'julius-ai', 'looker-studio',
  COALESCE((SELECT url FROM tools WHERE slug='julius-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='looker-studio' AND lang='en'), ''),
  '["✅ You want to upload a CSV or connect data and ask questions in plain English to get answers instantly", "✅ You need on-demand data analysis without building and maintaining a dashboard", "✅ You''''re a business user who wants AI to do the analysis and explain findings for you", "✅ You need statistical analysis, forecasting, or data transformation through conversation"]',
  '["✅ You need persistent, shareable dashboards that update automatically from live data sources", "✅ You create regular reports for stakeholders that need to refresh on a schedule", "✅ You connect to Google Analytics, Ads, BigQuery, or Sheets and need ongoing monitoring", "✅ You want free dashboards that anyone can view without needing an account"]',
  '[{"q": "What is Julius AI?", "a": "Julius AI is a conversational data analysis tool. You upload CSV files, connect databases, or link Google Sheets, then ask questions in plain language. Julius writes and runs the analysis, generates charts, and explains findings in plain English — no SQL or code needed."}, {"q": "Is Julius AI free?", "a": "Julius AI has a free plan with limited messages per month. Pro plan is $28/month for unlimited messages and advanced features. It''''s designed for individuals and small teams who analyze data regularly."}, {"q": "What is the difference between Julius AI and ChatGPT for data?", "a": "Julius AI is purpose-built for data analysis with persistent file uploads, code execution, and chart generation optimized for data tasks. ChatGPT with the data analysis tool (code interpreter) does similar things but is more general-purpose. Julius has a cleaner data-focused UX."}, {"q": "Can Looker Studio analyze data with AI?", "a": "Looker Studio is a visualization and dashboard tool — it displays data but doesn''''t perform AI analysis or answer natural language questions. Google is adding AI features to Looker (the enterprise product), but Looker Studio itself is primarily a reporting tool without conversational AI."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'khanmigo-vs-photomath', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='khanmigo' AND lang='en'), 'khanmigo'),
  COALESCE((SELECT name FROM tools WHERE slug='photomath' AND lang='en'), 'photomath'),
  'khanmigo', 'photomath',
  COALESCE((SELECT url FROM tools WHERE slug='khanmigo' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='photomath' AND lang='en'), ''),
  '["✅ You need help across multiple academic subjects — not just math, but science, history, and writing", "✅ You want a Socratic tutor that guides you to the answer with questions rather than just solving it", "✅ You''''re a teacher who wants AI tools for lesson planning, student feedback, and class prep", "✅ You use Khan Academy''''s curriculum and want AI integrated into those lessons"]',
  '["✅ You need quick, step-by-step solutions to math problems from a photo on your phone", "✅ You want immediate answers with worked solutions — not Socratic guidance", "✅ You''''re a student who needs math homework help fast, from arithmetic to calculus", "✅ You need offline capability — Photomath works without internet on mobile"]',
  '[{"q": "What is Khanmigo?", "a": "Khanmigo is Khan Academy''''s AI tutor powered by GPT-4. It uses the Socratic method — asking guiding questions rather than giving answers — to help students understand concepts. It works across math, science, history, and humanities. Free for US students."}, {"q": "Is Photomath free?", "a": "Photomath is free for basic step-by-step solutions. Photomath Plus ($9.99/month or $69.99/year) adds animated video explanations, multiple solution methods, and access to a math expert for deeper understanding."}, {"q": "Is Khanmigo free?", "a": "Khanmigo is free for students in the United States through Khan Academy. For international users, it requires a donation of $4+/month to Khan Academy to access. Schools and districts can access it through Khan Academy''''s district programs."}, {"q": "Can Photomath solve word problems?", "a": "Yes. Photomath can solve word problems — you can type or photograph text-based math problems, not just equations. It handles algebra word problems, but complex multi-step reasoning problems may require a more capable AI like Khanmigo or Wolfram Alpha."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'koyfin-vs-tradingview', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='koyfin' AND lang='en'), 'koyfin'),
  COALESCE((SELECT name FROM tools WHERE slug='tradingview' AND lang='en'), 'tradingview'),
  'koyfin', 'tradingview',
  COALESCE((SELECT url FROM tools WHERE slug='koyfin' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='tradingview' AND lang='en'), ''),
  '["✅ You focus on fundamental analysis — earnings, financial ratios, revenue trends, and company metrics", "✅ You want a Bloomberg-alternative terminal for fundamental data at a fraction of the cost", "✅ You research stocks for long-term investing and need income statements, balance sheets, and cash flows", "✅ You want AI-powered earnings call summaries and financial document analysis"]',
  '["✅ You use technical analysis — charts, indicators, and price patterns to make trading decisions", "✅ You trade actively and need real-time prices, advanced charting, and alert systems", "✅ You want access to the world''''s largest trading community for ideas and shared strategies", "✅ You need Pine Script to build and backtest custom trading strategies and indicators"]',
  '[{"q": "What is the difference between Koyfin and TradingView?", "a": "Koyfin is a fundamental analysis platform — financial data, earnings, metrics, and company research. TradingView is a technical analysis and charting platform — price charts, indicators, and trading community. Investors doing fundamental research use Koyfin; active traders use TradingView."}, {"q": "Is Koyfin free?", "a": "Koyfin has a free plan with limited data access. Plus plan is $19/month and Pro is $59/month. It''''s priced as an affordable Bloomberg Terminal alternative — Bloomberg costs $24,000/year."}, {"q": "Is TradingView free?", "a": "TradingView has a generous free plan with up to 3 indicators per chart and limited alerts. Essential plan is $14.95/month, Plus is $29.95/month, and Premium is $59.95/month for more indicators, alerts, and data feeds."}, {"q": "Can I use both Koyfin and TradingView?", "a": "Many investors use both — Koyfin for fundamental research (earnings, financial metrics, peer comparison) and TradingView for technical analysis (price charts, entry/exit timing). They complement each other for investors who consider both fundamentals and technicals."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'leonardo-ai-vs-midjourney', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='leonardo-ai' AND lang='en'), 'leonardo-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='midjourney' AND lang='en'), 'midjourney'),
  'leonardo-ai', 'midjourney',
  COALESCE((SELECT url FROM tools WHERE slug='leonardo-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='midjourney' AND lang='en'), ''),
  '["✅ You create game assets, characters, or concept art needing consistency across many images", "✅ You want to fine-tune models on your own images for consistent style and character", "✅ You need built-in tools: canvas editor, background removal, and image-to-image generation", "✅ You want a more generous free tier — Leonardo offers 150 free tokens per day"]',
  '["✅ You prioritize the highest overall image quality and aesthetic output — Midjourney leads here", "✅ You create photorealistic images, editorial photography, or high-end concept art", "✅ You want the largest AI art community for sharing, feedback, and prompt learning", "✅ You work in commercial creative where visual quality is the primary requirement"]',
  '[{"q": "What is Leonardo.ai used for?", "a": "Leonardo.ai is an AI image generation platform popular with game developers, concept artists, and designers. It offers fine-tuning on custom image sets, a canvas editor, motion generation, and character reference features for maintaining consistency across a series of images."}, {"q": "Is Leonardo AI free?", "a": "Leonardo.ai has a free plan with 150 tokens per day (roughly 30 standard images). Apprentice Membership is $12/month, Artisan is $30/month, Maestro is $60/month, offering more tokens, priority generation, and additional features."}, {"q": "Is Leonardo.ai better than Stable Diffusion?", "a": "Leonardo.ai is built on top of Stable Diffusion but adds a curated platform experience, fine-tuned models, better UI, and community features. For users who don''''t want to set up local Stable Diffusion, Leonardo offers similar capabilities with significantly less technical setup."}, {"q": "Which is better for game assets — Leonardo or Midjourney?", "a": "Leonardo.ai is generally preferred for game asset production. Its fine-tuning capabilities ensure character and style consistency across multiple images. Midjourney produces higher quality individual images but lacks fine-tuning for maintaining consistent visual identity across a project."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'lindy-vs-copilot-studio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='lindy' AND lang='en'), 'lindy'),
  COALESCE((SELECT name FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), 'microsoft-copilot-studio'),
  'lindy', 'microsoft-copilot-studio',
  COALESCE((SELECT url FROM tools WHERE slug='lindy' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), ''),
  '["✅ You want a personal AI assistant that manages your email, calendar, and research tasks autonomously", "✅ You build AI agents for specific personal and business workflows without enterprise Microsoft requirements", "✅ You need meeting preparation, email drafting, and CRM updates handled automatically", "✅ You want flexible AI agents that connect to 5000+ apps without being locked to Microsoft"]',
  '["✅ Your organization runs on Microsoft 365, Teams, and SharePoint — Copilot Studio integrates natively", "✅ You build enterprise chatbots with strict compliance, data residency, and governance requirements", "✅ You need Power Platform connectors, Power Automate workflows, and SharePoint integration", "✅ You deploy chatbots for hundreds or thousands of enterprise users with SSO and audit logging"]',
  '[{"q": "What is Lindy AI?", "a": "Lindy is an AI assistant platform that builds personal and business AI agents. Agents can handle email management, meeting preparation, CRM updates, research, and customer support. You connect Lindy to your apps (Gmail, Slack, Salesforce) and define workflows for it to execute."}, {"q": "Is Lindy AI free?", "a": "Lindy has a free plan with 400 tasks per month. Paid plans start at $49.99/month for 5,000 tasks. Teams and Enterprise plans offer higher task limits and multi-user features."}, {"q": "What is the difference between Lindy and Zapier?", "a": "Zapier automates fixed, rule-based workflows between apps. Lindy uses AI to handle variable situations — reading emails, making decisions, responding contextually. Zapier is better for predictable automation; Lindy is better when tasks require judgment and natural language."}, {"q": "Is Copilot Studio the same as Microsoft Copilot?", "a": "No. Microsoft Copilot is the AI assistant built into Windows and Microsoft 365. Copilot Studio is a separate no-code platform for building custom AI chatbots and agents. Copilot Studio lets you create your own Copilot for specific business use cases."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'looka-vs-canva-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='looka' AND lang='en'), 'looka'),
  COALESCE((SELECT name FROM tools WHERE slug='canva-ai' AND lang='en'), 'canva-ai'),
  'looka', 'canva-ai',
  COALESCE((SELECT url FROM tools WHERE slug='looka' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='canva-ai' AND lang='en'), ''),
  '["✅ You need a complete brand identity package: logo, color palette, fonts, and brand guidelines", "✅ You''''re starting a business and want a professional logo from AI in minutes", "✅ You need your logo in vector formats (SVG, EPS) for print and large-scale use", "✅ You want matching brand kit assets: business cards, social templates, email signatures"]',
  '["✅ You need ongoing marketing design — not just a logo, but posts, presentations, and ads", "✅ You''''re already creating content in Canva and want AI design assistance built in", "✅ You want Magic Media, background removal, and 100+ AI tools for all content types", "✅ You need team collaboration on branded templates and shared design assets"]',
  '[{"q": "What is Looka?", "a": "Looka is an AI logo maker and brand identity platform. Enter your company name and preferences, and Looka generates dozens of logo options using AI. You customize your chosen logo and download brand assets including vector files, color codes, and fonts."}, {"q": "Is Looka free?", "a": "Looka lets you generate and preview logos for free. To download high-resolution files, you pay per logo ($65 for basic package) or subscribe to Brand Kit ($96/year) for ongoing access to all brand assets and templates."}, {"q": "Can Canva make a professional logo?", "a": "Canva''''s Logo Maker can create logos using AI, but for a fully professional brand identity with vector files and brand guidelines, Looka is more specialized. Canva logos are good for simple use cases; Looka is better when you need a complete brand package."}, {"q": "Is a Looka logo unique?", "a": "Looka generates logos using templates and AI combination, so they''''re not custom-designed from scratch. There is some risk of similarity with other businesses using Looka. For a truly unique logo, a human designer is recommended. For most small businesses, Looka''''s results are professional and distinctive enough."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'looker-studio-vs-tableau-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='looker-studio' AND lang='en'), 'looker-studio'),
  COALESCE((SELECT name FROM tools WHERE slug='tableau-ai' AND lang='en'), 'tableau-ai'),
  'looker-studio', 'tableau-ai',
  COALESCE((SELECT url FROM tools WHERE slug='looker-studio' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='tableau-ai' AND lang='en'), ''),
  '["✅ You need free, shareable dashboards connected to Google Analytics, Ads, BigQuery, or Sheets", "✅ You''''re a small team or individual who can''''t justify enterprise BI pricing", "✅ You create client-facing reports that need to be shared without requiring accounts", "✅ You work primarily with Google data sources and want native, seamless integration"]',
  '["✅ You''''re an enterprise analyst who needs advanced data modeling and complex calculations", "✅ You have very large datasets requiring Tableau''''s optimized data engine for performance", "✅ You need sophisticated statistical analysis, custom data extracts, and governed data access", "✅ You''''re in a data-mature organization where Tableau is the established standard"]',
  '[{"q": "Is Looker Studio free?", "a": "Yes. Looker Studio is completely free with no limits on dashboards, reports, or data volume. It connects to 800+ data sources. There are paid Looker Studio Pro features for enterprise governance, but the core product is free."}, {"q": "How much does Tableau cost?", "a": "Tableau Viewer is $15/user/month, Explorer is $42/user/month, and Creator is $75/user/month. Enterprise pricing varies. Tableau is significantly more expensive than alternatives but widely considered the gold standard for complex enterprise analytics."}, {"q": "Is Looker Studio as powerful as Tableau?", "a": "For most business reporting needs, Looker Studio is sufficient. Tableau has advantages for very large datasets, complex calculations, advanced statistical analysis, and enterprise governance. Looker Studio handles everyday BI dashboards well; Tableau is for advanced data teams with complex requirements."}, {"q": "What is Tableau AI?", "a": "Tableau AI refers to Einstein AI features embedded in Tableau, including natural language querying (ask questions of your data), AI-generated insights, and automated anomaly detection. These features require Tableau+ or Tableau with Salesforce Einstein licensing."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'lovable-vs-bubble', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='lovable' AND lang='en'), 'lovable'),
  COALESCE((SELECT name FROM tools WHERE slug='bubble' AND lang='en'), 'bubble'),
  'lovable', 'bubble',
  COALESCE((SELECT url FROM tools WHERE slug='lovable' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='bubble' AND lang='en'), ''),
  '["✅ You want to describe an app in plain language and have AI generate working code instantly", "✅ You''''re a developer or technical founder who wants to ship MVPs dramatically faster", "✅ You want ownership of clean React code you can export and continue building", "✅ You need tight GitHub integration and want AI to iterate on your codebase"]',
  '["✅ You''''re non-technical and want a visual no-code builder without writing or owning code", "✅ You need complex conditional logic, multi-step workflows, and custom business rules visually", "✅ You want the largest no-code ecosystem: 1000+ plugins, templates, and community resources", "✅ You''''re building a SaaS product and want proven no-code infrastructure"]',
  '[{"q": "What is Lovable?", "a": "Lovable (formerly GPT Engineer) is an AI app builder where you describe what you want and it generates a complete React/TypeScript web application. Unlike no-code tools, it produces actual code. Developers can edit the code directly or continue chatting with the AI to make changes."}, {"q": "Is Lovable free?", "a": "Lovable has a free plan with 5 messages per day. Starter is $20/month for 100 messages, Launch is $50/month for 250 messages, Scale is $100/month for 500 messages. Messages are consumed when generating or modifying code."}, {"q": "Is Lovable better than Bubble for non-developers?", "a": "Bubble is generally better for non-developers who want to build without writing code. Lovable generates actual code which, while impressive, can require developer knowledge to debug and maintain. For non-technical founders, Bubble''''s visual editor is more accessible."}, {"q": "Can Lovable build full-stack apps?", "a": "Yes. Lovable can connect to Supabase for database and authentication, generating full-stack applications with a React frontend and PostgreSQL backend. It''''s popular for building SaaS prototypes and MVPs quickly."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'luma-ai-vs-runway', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='luma-ai' AND lang='en'), 'luma-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='runway' AND lang='en'), 'runway'),
  'luma-ai', 'runway',
  COALESCE((SELECT url FROM tools WHERE slug='luma-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='runway' AND lang='en'), ''),
  '["✅ You want a generous free tier for AI video generation — Dream Machine offers free daily credits", "✅ You need smooth, physics-accurate motion and fluid camera movements in generated video", "✅ You create image-to-video animations and want high-quality results at low cost", "✅ You''''re experimenting with AI video and want to try it without a paid commitment"]',
  '["✅ You''''re a professional video creator who needs a complete production platform", "✅ You want access to multiple video models (Gen-4.5, Veo 3.1, Kling, Seedance) in one subscription", "✅ You need editing tools: inpainting, motion brush, Act-One, video-to-video — beyond generation", "✅ You produce commercial content where quality and reliability are non-negotiable"]',
  '[{"q": "What is Luma Dream Machine?", "a": "Dream Machine is Luma AI''''s text-to-video and image-to-video generator. It''''s known for producing smooth, physically realistic motion. The free tier allows daily video generation. Luma AI also makes Genie (3D generation) and builds AI infrastructure for other products."}, {"q": "Is Luma AI free?", "a": "Luma Dream Machine has a free plan with a limited number of video generations per month. Standard plan is $29.99/month for more generations and faster processing. Pro is $99.99/month for high-volume use."}, {"q": "Is Dream Machine better than Sora?", "a": "Sora (OpenAI) and Dream Machine target different strengths. Sora produces longer, more complex videos with stronger story coherence. Dream Machine produces excellent short clips with smooth motion at a lower cost and with a free tier. Runway Gen-4.5 is generally considered the current quality leader."}, {"q": "What is Runway used for professionally?", "a": "Runway is used by filmmakers, VFX artists, and video editors for AI video generation, background removal, video inpainting, rotoscoping, and motion tracking. Studios like Universal and Paramount have used Runway tools in productions. It''''s the professional-grade choice in AI video."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'make-vs-copilot-studio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='make' AND lang='en'), 'make'),
  COALESCE((SELECT name FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), 'microsoft-copilot-studio'),
  'make', 'microsoft-copilot-studio',
  COALESCE((SELECT url FROM tools WHERE slug='make' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), ''),
  '["✅ You want to automate workflows between 1,500+ apps without being tied to the Microsoft ecosystem", "✅ You''''re a marketer or operations professional building multi-step automation scenarios visually", "✅ You need complex branching logic, data transformation, and custom API connections", "✅ You want affordable automation starting at $9/month vs enterprise Microsoft pricing"]',
  '["✅ You''''re building AI chatbots for Microsoft Teams, SharePoint, or enterprise web portals", "✅ Your organization is Microsoft-first and needs AI within the M365 compliance boundary", "✅ You want a no-code chatbot builder, not a workflow automation tool", "✅ You need Power Platform integration and enterprise governance features"]',
  '[{"q": "What is the difference between Make and Microsoft Copilot Studio?", "a": "Make (formerly Integromat) is a visual workflow automation platform — it automates processes between apps like Zapier but with more power. Copilot Studio is a chatbot builder for Microsoft environments. Make automates tasks; Copilot Studio builds conversational AI agents."}, {"q": "Is Make better than Zapier?", "a": "Make offers more complex automation at lower prices than Zapier. Make''''s visual scenario builder handles conditional logic, loops, and data transformation better. Zapier is simpler and has broader app support. Power users generally prefer Make; beginners prefer Zapier."}, {"q": "Can Make integrate with AI?", "a": "Yes. Make has built-in modules for OpenAI, Anthropic, Google Gemini, and other AI services. You can build automations that process text with AI, classify content, generate responses, and trigger actions based on AI output."}, {"q": "Does Copilot Studio require Microsoft 365?", "a": "Copilot Studio requires an Azure subscription and is deeply integrated with Microsoft 365. Standalone access is possible but most features work best within an M365 tenant. Enterprise pricing applies — it''''s not priced for individuals or small teams."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'meta-ai-vs-chatgpt', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='meta-ai' AND lang='en'), 'meta-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='chatgpt' AND lang='en'), 'chatgpt'),
  'meta-ai', 'chatgpt',
  COALESCE((SELECT url FROM tools WHERE slug='meta-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='chatgpt' AND lang='en'), ''),
  '["✅ You''''re on WhatsApp, Instagram, or Facebook and want AI help without switching apps", "✅ You want completely free AI access to a frontier model — Meta AI is free with no limits", "✅ You want real-time web search results included in your AI conversations", "✅ You generate images casually and want AI image generation built into your social apps"]',
  '["✅ You need advanced capabilities: code interpreter, image generation (DALL-E), voice mode", "✅ You use AI for professional work: coding, research, analysis, complex writing", "✅ You want the best available model with the largest ecosystem of tools and integrations", "✅ You need reliable, consistent performance for high-stakes professional tasks"]',
  '[{"q": "What is Meta AI?", "a": "Meta AI is Meta''''s AI assistant powered by Llama 4, integrated into WhatsApp, Instagram, Facebook, and Messenger. It can answer questions, generate images, search the web in real-time, and assist with tasks — all without leaving Meta''''s apps. Available free globally."}, {"q": "Is Meta AI free?", "a": "Yes. Meta AI is completely free with no usage limits. It''''s available to anyone with a WhatsApp, Instagram, Facebook, or Messenger account. There is no paid tier — Meta funds it through its advertising business."}, {"q": "Is Meta AI as good as ChatGPT?", "a": "Meta AI (Llama 4) is competitive with GPT-4 on many benchmarks. For general conversation and everyday questions, the quality difference is minimal. ChatGPT has more features (code interpreter, DALL-E images, voice) and a larger app ecosystem. Meta AI wins on accessibility; ChatGPT wins on features."}, {"q": "Can Meta AI generate images?", "a": "Yes. Meta AI can generate images from text prompts using Meta''''s Emu image model. Quality is decent but generally rated below Midjourney or DALL-E 3. It''''s convenient for casual use directly within Instagram or WhatsApp."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'microsoft-copilot-vs-chatgpt', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='microsoft-copilot' AND lang='en'), 'microsoft-copilot'),
  COALESCE((SELECT name FROM tools WHERE slug='chatgpt' AND lang='en'), 'chatgpt'),
  'microsoft-copilot', 'chatgpt',
  COALESCE((SELECT url FROM tools WHERE slug='microsoft-copilot' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='chatgpt' AND lang='en'), ''),
  '["✅ You''''re deep in the Microsoft ecosystem — Windows, Edge, Bing, and Microsoft 365", "✅ You want AI access for free with real-time Bing web search included in every response", "✅ You need AI integrated into Word, Excel, PowerPoint, and Outlook (with M365 Copilot license)", "✅ You want an AI assistant that works in your Windows taskbar and Edge browser seamlessly"]',
  '["✅ You need the most capable AI model with the broadest feature set — image generation, voice, code", "✅ You use AI for professional work: coding, data analysis, research, and complex writing", "✅ You want the largest plugin and GPT ecosystem for specialized tasks", "✅ You build on the API — OpenAI''''s developer platform is the most mature and widely used"]',
  '[{"q": "What is the difference between Microsoft Copilot and ChatGPT?", "a": "Microsoft Copilot is powered by OpenAI''''s models (GPT-4) and is built into Windows, Edge, and Microsoft 365. ChatGPT is OpenAI''''s standalone product. Copilot integrates with Microsoft''''s ecosystem; ChatGPT has more features and is the primary product. Copilot is free for Windows users; ChatGPT has a free web version."}, {"q": "Is Microsoft Copilot free?", "a": "Microsoft Copilot is free in Windows and Edge with Bing search. Microsoft 365 Copilot (AI in Word, Excel, Outlook) requires a Microsoft 365 Business subscription plus a $30/user/month Copilot add-on. The free version is basic; enterprise features cost extra."}, {"q": "Does Microsoft Copilot use ChatGPT?", "a": "Yes. Microsoft Copilot is powered by OpenAI''''s GPT-4 and DALL-E models through Microsoft''''s partnership with OpenAI. Microsoft invested $13 billion in OpenAI and has deep integration rights. Copilot''''s responses come from the same underlying models as ChatGPT."}, {"q": "Which is better for Office tasks — Copilot or ChatGPT?", "a": "Microsoft 365 Copilot is better for tasks within Office apps — it can read your existing Word documents, Excel spreadsheets, and email history to provide contextual help. ChatGPT requires you to paste content manually. For pure writing and reasoning tasks outside Office, ChatGPT is more flexible."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'midjourney-vs-flux', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='midjourney' AND lang='en'), 'midjourney'),
  COALESCE((SELECT name FROM tools WHERE slug='flux' AND lang='en'), 'flux'),
  'midjourney', 'flux',
  COALESCE((SELECT url FROM tools WHERE slug='midjourney' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='flux' AND lang='en'), ''),
  '["✅ You prioritize aesthetic beauty and artistic quality — Midjourney leads for creative visual work", "✅ You want the largest AI art community for prompt sharing, inspiration, and style exploration", "✅ You create photography-style portraits, landscapes, and editorial imagery", "✅ You prefer the Midjourney Discord community and V6/niji model ecosystem"]',
  '["✅ You want the best photorealistic image quality and accurate prompt adherence", "✅ You need an API for production use — FLUX is available via Replicate, fal.ai, and others", "✅ You require open-weights models you can run locally or fine-tune on your own images", "✅ You generate text within images — FLUX handles typography significantly better than Midjourney"]',
  '[{"q": "Is FLUX better than Midjourney?", "a": "FLUX.1 Pro leads on photorealism, prompt adherence, and text in images. Midjourney V6 leads on aesthetic quality and artistic style. They''''re best at different things: FLUX for accuracy and realism, Midjourney for artistic beauty."}, {"q": "Can I run FLUX locally?", "a": "Yes. FLUX.1 Schnell and FLUX.1 Dev are open-source and available on Hugging Face. You can run them locally with ComfyUI or other frontends. FLUX.1 Pro is API-only (not open weights). You need a GPU with at least 8-12GB VRAM for good performance."}, {"q": "Is Midjourney open source?", "a": "No. Midjourney is a closed-source commercial product. The model weights are not publicly available. You can only use Midjourney through their Discord bot or web app. FLUX.1 Schnell and Dev are open-source alternatives."}, {"q": "What is FLUX used for?", "a": "FLUX is used for AI image generation with emphasis on photorealism, accurate text rendering, and prompt fidelity. It''''s popular for product photography mockups, graphic design with text, and any application where the image needs to match the prompt closely."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'midjourney-vs-stable-diffusion', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='midjourney' AND lang='en'), 'midjourney'),
  COALESCE((SELECT name FROM tools WHERE slug='stable-diffusion' AND lang='en'), 'stable-diffusion'),
  'midjourney', 'stable-diffusion',
  COALESCE((SELECT url FROM tools WHERE slug='midjourney' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='stable-diffusion' AND lang='en'), ''),
  '["✅ You want the best image quality with minimal effort — no technical setup required", "✅ You work in creative fields where visual quality is the primary requirement", "✅ You want the largest AI art community and Discord ecosystem for learning prompts", "✅ You generate images occasionally and don''''t mind a subscription cost"]',
  '["✅ You want completely free, unlimited image generation with no monthly fees", "✅ You have a compatible GPU and are comfortable with technical setup", "✅ You need custom fine-tuned models, LoRAs, or ControlNet for specific styles", "✅ You value privacy — images never leave your machine when running locally"]',
  '[{"q": "Is Stable Diffusion better than Midjourney?", "a": "Midjourney consistently produces higher quality aesthetic output with less effort. Stable Diffusion requires more technical knowledge but offers unlimited free generation, fine-tuning, and full control. For most users wanting great images easily, Midjourney wins. For power users wanting control and cost-free generation, Stable Diffusion wins."}, {"q": "Is Stable Diffusion free?", "a": "Yes. Stable Diffusion model weights are free to download and use locally. You need a GPU with at least 4GB VRAM and software like ComfyUI or Automatic1111. There are no usage fees for local generation."}, {"q": "Can Stable Diffusion match Midjourney quality?", "a": "With the right models (SDXL, FLUX-based models), fine-tuning, and prompting skills, Stable Diffusion can produce images comparable to Midjourney. However, Midjourney V6 typically wins on aesthetic quality with far less effort. Reaching Midjourney-level results with SD requires significant experience."}, {"q": "What is the latest version of Stable Diffusion?", "a": "Stable Diffusion 3 (SD3) was released by Stability AI in 2024. However, FLUX.1 by Black Forest Labs (founded by original SD researchers) has largely superseded SD3 in quality and community adoption. Most advanced users now use FLUX models alongside or instead of SD3."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'mistral-le-chat-vs-chatgpt', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='mistral-le-chat' AND lang='en'), 'mistral-le-chat'),
  COALESCE((SELECT name FROM tools WHERE slug='chatgpt' AND lang='en'), 'chatgpt'),
  'mistral-le-chat', 'chatgpt',
  COALESCE((SELECT url FROM tools WHERE slug='mistral-le-chat' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='chatgpt' AND lang='en'), ''),
  '["✅ You''''re privacy-conscious and prefer a European AI company subject to GDPR, not US data law", "✅ You want extremely fast responses — Le Chat uses Mistral''''s flash models for near-instant output", "✅ You need free access to a capable AI without usage limits on the free tier", "✅ You use AI for professional tasks in Europe where data sovereignty matters to your organization"]',
  '["✅ You need image generation, voice conversations, data analysis, or web browsing", "✅ You want the most feature-complete AI assistant with the largest third-party app ecosystem", "✅ You use AI for complex professional tasks where GPT-4o''''s capabilities matter", "✅ You build on the API — OpenAI''''s developer ecosystem is the largest and most mature"]',
  '[{"q": "What is Mistral Le Chat?", "a": "Le Chat is Mistral AI''''s conversational AI assistant, available at mistral.ai. It''''s powered by Mistral''''s own frontier models — Mistral Large, Mistral Small, and Pixtral. Mistral is a French AI company emphasizing European data sovereignty and open-weight model development."}, {"q": "Is Mistral better than ChatGPT?", "a": "Mistral Large is competitive with GPT-4o on many benchmarks. Le Chat is notably faster than ChatGPT. ChatGPT has more features (DALL-E images, voice, code interpreter) and a larger ecosystem. For pure text reasoning at speed, Le Chat is a strong alternative."}, {"q": "Is Le Chat free?", "a": "Le Chat has a free plan with access to capable Mistral models. Le Chat Pro is €14.99/month for Mistral Large, image generation, and extended context. The free plan is generous for everyday AI tasks."}, {"q": "Are Mistral models open source?", "a": "Mistral releases some models as open weights (Mistral 7B, Mixtral 8x7B, Mistral Small) that anyone can download and run locally. Their frontier models (Mistral Large) are commercial-only through their API and Le Chat. The open models have a strong developer community."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'motion-vs-reclaim-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='motion' AND lang='en'), 'motion'),
  COALESCE((SELECT name FROM tools WHERE slug='reclaim-ai' AND lang='en'), 'reclaim-ai'),
  'motion', 'reclaim-ai',
  COALESCE((SELECT url FROM tools WHERE slug='motion' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='reclaim-ai' AND lang='en'), ''),
  '["✅ You want AI to automatically build and manage your entire daily schedule based on your tasks and deadlines", "✅ You struggle with prioritization — Motion decides what to work on next and schedules it automatically", "✅ You have many competing tasks and projects and want AI to handle the calendar puzzle for you", "✅ You want automatic rescheduling when your day changes — Motion rebuilds the plan in real time"]',
  '["✅ You want to protect time blocks for habits, focus time, and personal priorities automatically", "✅ You need smart meeting scheduling that finds the best time for all attendees automatically", "✅ You want calendar syncing that prevents conflicts across personal and work calendars", "✅ You prefer a lighter tool that optimizes your existing schedule without full AI control"]',
  '[{"q": "What is Motion?", "a": "Motion is an AI calendar and task manager that automatically schedules all your tasks into your calendar based on priorities, deadlines, and available time. When meetings are added or tasks run long, Motion automatically rescheduled everything to keep you on track."}, {"q": "Is Motion worth the price?", "a": "Motion is $34/month (or $19/month billed annually) — expensive for a calendar app. Users who struggle with scheduling and prioritization often find it transformative. Those who are already disciplined schedulers may find the value harder to justify. Most offer a 7-day free trial."}, {"q": "What is Reclaim.ai?", "a": "Reclaim.ai is a smart calendar tool that automatically protects time for habits, tasks, and focus blocks in your Google Calendar. It also has intelligent meeting scheduling and calendar sync to prevent conflicts across multiple calendars."}, {"q": "Is Reclaim.ai free?", "a": "Reclaim.ai has a free plan with basic features for one user. Starter is $8/user/month, Business is $12/user/month, and Enterprise is custom. It''''s significantly cheaper than Motion for teams."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'n8n-vs-copilot-studio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='n8n' AND lang='en'), 'n8n'),
  COALESCE((SELECT name FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), 'microsoft-copilot-studio'),
  'n8n', 'microsoft-copilot-studio',
  COALESCE((SELECT url FROM tools WHERE slug='n8n' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), ''),
  '["✅ You''''re a developer who wants self-hosted automation with full control over your infrastructure", "✅ You build complex AI workflows with LLM nodes, vector databases, and code execution", "✅ You want to keep sensitive data on your own servers for compliance or privacy reasons", "✅ You need unlimited automations on a self-hosted instance without per-workflow pricing"]',
  '["✅ You''''re building AI chatbots for Microsoft Teams, SharePoint, or enterprise web portals", "✅ Your organization is Microsoft-first and needs AI within the M365 compliance boundary", "✅ You want a no-code builder for non-technical teams to create business chatbots", "✅ You need Power Platform connectors and enterprise governance — no server management"]',
  '[{"q": "What is n8n?", "a": "n8n is an open-source workflow automation platform. It can be self-hosted for free or used on n8n.cloud. n8n is popular with developers for building complex automations, AI agent workflows, and integrations that require custom code. It has 400+ pre-built connectors."}, {"q": "Is n8n free?", "a": "n8n is free to self-host on your own server. The cloud version starts at $24/month. Self-hosting requires a server and technical knowledge to set up. For teams without devops resources, the cloud version is simpler."}, {"q": "n8n vs Zapier — which is better?", "a": "n8n is more powerful for complex technical workflows and cheaper at scale (especially self-hosted). Zapier is simpler, has more app integrations (7000+ vs n8n''''s 400+), and is better for non-technical teams. n8n wins on flexibility and cost; Zapier wins on ease of use."}, {"q": "Can n8n build AI agents?", "a": "Yes. n8n has AI agent nodes that use OpenAI, Anthropic, and other LLMs. You can build multi-step AI workflows, RAG pipelines, and autonomous agents that take actions based on AI decisions. This is one of n8n''''s strongest use cases in 2025."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'notebooklm-vs-humata', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='notebooklm' AND lang='en'), 'notebooklm'),
  COALESCE((SELECT name FROM tools WHERE slug='humata' AND lang='en'), 'humata'),
  'notebooklm', 'humata',
  COALESCE((SELECT url FROM tools WHERE slug='notebooklm' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='humata' AND lang='en'), ''),
  '["✅ You research from multiple documents and want AI to synthesize across all of them at once", "✅ You want audio overviews — NotebookLM can generate podcast-style conversations about your docs", "✅ You''''re a student, researcher, or journalist doing deep work with source documents", "✅ You want Google''''s Gemini powering document Q&A with strong citation and grounding"]',
  '["✅ You need to quickly ask questions about a single large document or PDF", "✅ You want simple, direct document Q&A without setting up a notebook workflow", "✅ You process contracts, research papers, or reports and need cited answers fast", "✅ You want document analysis that integrates with your existing Google Drive files"]',
  '[{"q": "What is NotebookLM?", "a": "NotebookLM is Google''''s AI research assistant powered by Gemini. You upload documents, PDFs, YouTube videos, or web pages and it creates a notebook where you can ask questions, get summaries, and generate audio overviews (podcast-style conversations about your content)."}, {"q": "Is NotebookLM free?", "a": "NotebookLM is free for all Google account users at notebooklm.google.com. NotebookLM Plus (available through Google One AI Premium at $19.99/month or Google Workspace) offers higher limits on notebooks, sources, and audio generation."}, {"q": "What is Humata AI?", "a": "Humata is an AI document analysis tool focused on Q&A with uploaded files — primarily PDFs. You upload a document and ask questions; Humata returns cited answers. It''''s simpler than NotebookLM but effective for quick document analysis."}, {"q": "Can NotebookLM analyze YouTube videos?", "a": "Yes. NotebookLM can use YouTube video URLs as sources — it processes the transcript and lets you ask questions about video content. This makes it useful for analyzing lectures, interviews, podcasts, and any content available as a YouTube video."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'otter-ai-vs-fireflies-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='otter-ai' AND lang='en'), 'otter-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='fireflies-ai' AND lang='en'), 'fireflies-ai'),
  'otter-ai', 'fireflies-ai',
  COALESCE((SELECT url FROM tools WHERE slug='otter-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='fireflies-ai' AND lang='en'), ''),
  '["✅ You want real-time transcription during meetings — see words appear as people speak", "✅ You use Zoom, Google Meet, or Microsoft Teams and want live captions and notes", "✅ You''''re a journalist, student, or note-taker who needs accurate real-time transcription", "✅ You want to highlight and comment on transcript sections during the meeting itself"]',
  '["✅ You want automatic meeting recording, transcription, and AI summary without joining the call", "✅ You need CRM integration — Fireflies can automatically log meeting notes to Salesforce or HubSpot", "✅ You track conversation intelligence: talk time, sentiment, topic tracking across many meetings", "✅ You need meeting analytics across your entire team for coaching and deal intelligence"]',
  '[{"q": "What is Otter.ai used for?", "a": "Otter.ai transcribes meetings in real-time and creates searchable notes. It joins Zoom, Google Meet, and Teams automatically or records in-person conversations. It''''s used for meeting notes, journalism interviews, lecture notes, and any situation requiring accurate transcription."}, {"q": "Is Otter.ai free?", "a": "Otter.ai has a free plan with 300 minutes of transcription per month and up to 3 audio imports. Pro is $16.99/month for 1,200 minutes. Business is $30/user/month for team features and advanced integrations."}, {"q": "What is Fireflies.ai?", "a": "Fireflies.ai is a meeting intelligence platform that automatically records, transcribes, and summarizes meetings. It provides searchable transcripts, AI meeting summaries, and conversation analytics. It integrates with 50+ tools including Salesforce, HubSpot, Slack, and Notion."}, {"q": "Is Fireflies.ai free?", "a": "Fireflies.ai has a free plan with 800 minutes of storage per month and basic AI summaries. Pro is $18/user/month for unlimited storage, full AI features, and integrations. Business is $29/user/month for CRM integrations and advanced analytics."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'perplexity-vs-notebooklm', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='perplexity' AND lang='en'), 'perplexity'),
  COALESCE((SELECT name FROM tools WHERE slug='notebooklm' AND lang='en'), 'notebooklm'),
  'perplexity', 'notebooklm',
  COALESCE((SELECT url FROM tools WHERE slug='perplexity' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='notebooklm' AND lang='en'), ''),
  '["✅ You need answers about current events, recent news, or information updated within days", "✅ You want to search the entire web and get cited, sourced answers quickly", "✅ You do broad exploratory research where you don''''t have specific documents to upload", "✅ You want a daily AI search engine replacement that cites its sources"]',
  '["✅ You have specific documents (PDFs, research papers, notes) you want to analyze deeply", "✅ You want AI that works exclusively from your sources — not the open web", "✅ You do research synthesis across multiple uploaded documents simultaneously", "✅ You want audio overviews that turn your documents into podcast-style conversations"]',
  '[{"q": "Is Perplexity better than Google?", "a": "Perplexity is better than Google when you want a direct answer with citations rather than a list of links to read. For navigating to websites, finding local businesses, or general browsing, Google is still better. Perplexity excels for research questions where you want a synthesized answer."}, {"q": "Is NotebookLM free?", "a": "NotebookLM is free for all Google users at notebooklm.google.com. NotebookLM Plus is available through Google One AI Premium ($19.99/month) with higher usage limits."}, {"q": "What is the difference between Perplexity and NotebookLM?", "a": "Perplexity searches the live web to answer questions. NotebookLM only uses documents you upload — it has no web access. Perplexity is for questions about the world; NotebookLM is for questions about your specific documents. They serve different research needs."}, {"q": "Is Perplexity free?", "a": "Perplexity has a free plan with limited Pro searches (5/day) using GPT-4 or Claude. Perplexity Pro is $20/month for unlimited Pro searches, file uploads, and access to all available AI models."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'photomath-vs-duolingo-max', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='photomath' AND lang='en'), 'photomath'),
  COALESCE((SELECT name FROM tools WHERE slug='duolingo-max' AND lang='en'), 'duolingo-max'),
  'photomath', 'duolingo-max',
  COALESCE((SELECT url FROM tools WHERE slug='photomath' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='duolingo-max' AND lang='en'), ''),
  '["✅ You need step-by-step help with math homework — algebra, calculus, geometry, statistics", "✅ You learn best by seeing worked solutions with explanations of each step", "✅ You want to photograph a math problem and get an instant solution", "✅ You''''re a student, parent, or teacher who needs a math-specific learning tool"]',
  '["✅ You''''re learning a new language and want gamified daily practice with AI conversation", "✅ You want Roleplay conversations with AI characters to practice real-world language scenarios", "✅ You want to understand why you got a language exercise wrong with Explain My Answer", "✅ You''''re motivated by streaks, XP, and leagues to build a daily language learning habit"]',
  '[{"q": "What is Photomath?", "a": "Photomath is a math problem solver app. Point your camera at any math problem — handwritten or printed — and it instantly provides step-by-step solutions with explanations. It covers arithmetic, algebra, trigonometry, calculus, and statistics."}, {"q": "Is Photomath cheating?", "a": "This depends on how it''''s used. Using Photomath to check your work or understand where you went wrong is educational. Using it to copy answers without understanding the method is counterproductive. The step-by-step explanations are designed to help students learn, not just get answers."}, {"q": "What is Duolingo Max?", "a": "Duolingo Max is the highest Duolingo subscription tier ($29.99/month or $167.99/year), adding GPT-4 powered features: Roleplay (practice conversations with AI in real-life scenarios) and Explain My Answer (detailed explanations of exercise answers)."}, {"q": "Is Duolingo Max worth it vs Duolingo Super?", "a": "Duolingo Super ($12.99/month) removes ads and adds offline access. Max adds the Roleplay and Explain My Answer AI features for roughly double the price. If you actively use Roleplay for conversation practice, Max is worth it. If you mainly do standard exercises, Super is sufficient."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'pika-vs-kling-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='pika' AND lang='en'), 'pika'),
  COALESCE((SELECT name FROM tools WHERE slug='kling-ai' AND lang='en'), 'kling-ai'),
  'pika', 'kling-ai',
  COALESCE((SELECT url FROM tools WHERE slug='pika' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='kling-ai' AND lang='en'), ''),
  '["✅ You create short, stylized social media videos and want unique visual effects (Pikaffects)", "✅ You want to animate specific parts of an image while keeping others still", "✅ You need creative video transformations: explode, melt, crush — not realistic video generation", "✅ You create fun, viral content where creative effects matter more than photorealism"]',
  '["✅ You want longer, more realistic AI video with better physical motion accuracy", "✅ You need the most generous free tier — 66 daily credits for video generation", "✅ You want native 4K output and per-shot storyboard control for cinematic sequences", "✅ You create professional content where photorealism and video quality take priority"]',
  '[{"q": "What is Pika AI?", "a": "Pika is an AI video generator known for creative effects and stylized output. Its Pikaffects features (explode, crush, melt, deflate) create dramatic visual transformations. Pika 2.2 (2025) added Scene Ingredients for compositing specific characters into scenes."}, {"q": "Is Pika free?", "a": "Pika has a free plan with 150 credits on signup and 50 monthly credits. Standard is $8/month, Pro is $28/month, Unlimited is $98/month. The free credits reset monthly on the standard plans."}, {"q": "What is the difference between Pika and Kling?", "a": "Pika specializes in creative effects and stylized short videos. Kling focuses on realistic, longer-form video with better physics simulation. Pika is better for creative social content; Kling is better for cinematic realism and professional video generation."}, {"q": "Can Kling AI generate 4K video?", "a": "Yes. Kling 3.0 (February 2026) supports native 4K output with per-shot storyboard control and built-in lip-synced audio generation. This makes it one of the highest resolution AI video generators available."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'quillbot-vs-grammarly', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='quillbot' AND lang='en'), 'quillbot'),
  COALESCE((SELECT name FROM tools WHERE slug='grammarly' AND lang='en'), 'grammarly'),
  'quillbot', 'grammarly',
  COALESCE((SELECT url FROM tools WHERE slug='quillbot' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='grammarly' AND lang='en'), ''),
  '["✅ You need to paraphrase, rewrite, or rephrase text in different tones and styles", "✅ You''''re a student or writer who needs to express ideas in new ways without plagiarism", "✅ You want AI summarization — condense long articles or documents into key points", "✅ You want a translator and grammar checker bundled with paraphrasing at a lower price"]',
  '["✅ You want real-time grammar, spelling, and punctuation corrections as you type anywhere", "✅ You need a browser extension that works across Gmail, Google Docs, Slack, and every web form", "✅ You want AI-powered tone suggestions, clarity improvements, and full sentence rewrites", "✅ You need plagiarism detection for academic or professional writing"]',
  '[{"q": "What is the difference between QuillBot and Grammarly?", "a": "QuillBot specializes in paraphrasing and rewriting — transforming existing text into new forms. Grammarly specializes in grammar checking and real-time writing suggestions. QuillBot is better for rephrasing; Grammarly is better for correctness and style improvement."}, {"q": "Is QuillBot free?", "a": "QuillBot has a free plan with 125 words per paraphrase and limited modes. QuillBot Premium is $4.17/month (annual) or $9.95/month for unlimited paraphrasing, all modes, faster processing, and summarization."}, {"q": "Can QuillBot fix grammar?", "a": "Yes. QuillBot includes a grammar checker as part of its suite. However, Grammarly''''s grammar checking is more comprehensive and its browser extension works everywhere. QuillBot''''s grammar tool is secondary to its paraphrasing core feature."}, {"q": "Does Grammarly paraphrase?", "a": "Grammarly has a rewrite feature that can rephrase sentences for clarity or tone. However, it''''s less flexible than QuillBot''''s dedicated paraphrasing modes (Academic, Formal, Creative, etc.). For systematic paraphrasing of paragraphs, QuillBot is the more specialized tool."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'recraft-ai-vs-midjourney', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='recraft-ai' AND lang='en'), 'recraft-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='midjourney' AND lang='en'), 'midjourney'),
  'recraft-ai', 'midjourney',
  COALESCE((SELECT url FROM tools WHERE slug='recraft-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='midjourney' AND lang='en'), ''),
  '["✅ You need vector graphics, SVGs, and scalable design assets — Recraft specializes in vectors", "✅ You create brand assets, icons, logos, and UI elements that need to scale without quality loss", "✅ You want consistent brand style across multiple generated images using style references", "✅ You need print-ready files or graphics that work at any size for professional design"]',
  '["✅ You prioritize raw visual quality and aesthetic beauty for creative and artistic work", "✅ You create photography-quality images, editorial illustrations, or concept art", "✅ You want the largest AI art community for prompt inspiration and style exploration", "✅ You''''re in a creative field where visual excellence is the primary requirement"]',
  '[{"q": "What is Recraft AI?", "a": "Recraft AI is an AI image generator specialized in vector graphics and brand-consistent design. Unlike most AI tools that produce raster images, Recraft can generate true SVG vector files, icon sets, and scalable brand assets. It''''s popular with designers who need production-ready design files."}, {"q": "Can Recraft AI generate SVG files?", "a": "Yes. This is Recraft''''s primary differentiator — it generates true SVG (scalable vector graphics) files that can be scaled to any size without quality loss. This makes it essential for logo design, icon creation, and any print or large-format design work."}, {"q": "Is Recraft AI free?", "a": "Recraft AI has a free plan with 50 generation credits. Pro plan is $12/month for 1,000 credits. Enterprise plans are available for teams. The free plan is generous for light use."}, {"q": "What is the difference between Recraft and Midjourney for design work?", "a": "Recraft is optimized for design assets — vectors, icons, consistent brand visuals. Midjourney is optimized for artistic image quality. Designers needing production files use Recraft; artists and creative professionals use Midjourney. Many designers use both for different purposes."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'relevance-ai-vs-copilot-studio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='relevance-ai' AND lang='en'), 'relevance-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), 'microsoft-copilot-studio'),
  'relevance-ai', 'microsoft-copilot-studio',
  COALESCE((SELECT url FROM tools WHERE slug='relevance-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='microsoft-copilot-studio' AND lang='en'), ''),
  '["✅ You want to build multi-agent AI pipelines and autonomous AI workflows without deep coding", "✅ You need AI agents that use tools, search the web, analyze documents, and call APIs", "✅ You''''re building a sales AI agent, research agent, or support agent that completes tasks", "✅ You want flexibility to choose any AI model (OpenAI, Anthropic, Gemini) for your agents"]',
  '["✅ You''''re building AI chatbots for Microsoft Teams, SharePoint, or enterprise web portals", "✅ Your organization is Microsoft-first and needs AI within the M365 compliance boundary", "✅ You want a no-code chatbot builder with Power Platform connectors for enterprise workflows", "✅ You need enterprise governance, SSO, data residency, and audit logging"]',
  '[{"q": "What is Relevance AI?", "a": "Relevance AI is a platform for building AI agents and multi-agent systems without deep coding. Agents can use tools, search the web, read documents, and call APIs to complete complex multi-step tasks. It''''s used for sales automation, research, customer support, and data enrichment."}, {"q": "Is Relevance AI free?", "a": "Relevance AI has a free plan with 100 credits. Starter is $19/month, Team is $199/month, and Business is $599/month. Credits are consumed by AI model calls within agent workflows."}, {"q": "What is the difference between Relevance AI and Zapier?", "a": "Zapier automates fixed rule-based workflows between apps. Relevance AI builds AI agents that reason and adapt — they use AI models to decide what to do next. Zapier is deterministic automation; Relevance is autonomous AI decision-making."}, {"q": "Can Copilot Studio build autonomous agents?", "a": "Copilot Studio can build agents that perform actions, but it''''s primarily designed for conversational chatbots within Microsoft''''s ecosystem. Relevance AI is more specialized for complex multi-step autonomous agents that can use many external tools."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'relume-vs-framer-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='relume' AND lang='en'), 'relume'),
  COALESCE((SELECT name FROM tools WHERE slug='framer-ai' AND lang='en'), 'framer-ai'),
  'relume', 'framer-ai',
  COALESCE((SELECT url FROM tools WHERE slug='relume' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='framer-ai' AND lang='en'), ''),
  '["✅ You want AI to generate a complete website sitemap and wireframe structure from a description", "✅ You build websites in Webflow and want to generate component libraries and page structures", "✅ You''''re a web designer who needs to rapidly create website blueprints for client approval", "✅ You want AI to generate copy alongside wireframes for a complete design brief"]',
  '["✅ You want to generate and publish a complete, live website — not just wireframes", "✅ You need a finished website with custom domain, CMS, and working pages to deploy immediately", "✅ You want AI that builds the actual website you can launch, not a design blueprint", "✅ You''''re a startup or individual who needs a professional website live in hours"]',
  '[{"q": "What is Relume?", "a": "Relume is an AI website design tool that generates sitemaps, wireframes, and page structures from a text description. It has a Webflow component library and integrates with Figma. Designers use it to rapidly plan website architecture and create wireframes before building."}, {"q": "What is the difference between Relume and Framer?", "a": "Relume generates wireframes and website blueprints — the planning stage of web design. Framer AI generates and publishes actual finished websites. Relume is for design planning; Framer is for the live website. Relume exports to Webflow; Framer hosts and publishes directly."}, {"q": "Is Relume free?", "a": "Relume has a free plan with limited sitemap and wireframe generations. Pro is $36/month and Teams is $64/month. The free plan allows you to test the core sitemap and wireframe generation capabilities."}, {"q": "Does Relume work with Figma?", "a": "Yes. Relume has Figma and Webflow plugins that let you import generated wireframes directly into your design or build workflow. This is a key part of its value — it accelerates the handoff between website planning and actual design."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'replit-vs-github-copilot', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='replit' AND lang='en'), 'replit'),
  COALESCE((SELECT name FROM tools WHERE slug='github-copilot' AND lang='en'), 'github-copilot'),
  'replit', 'github-copilot',
  COALESCE((SELECT url FROM tools WHERE slug='replit' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='github-copilot' AND lang='en'), ''),
  '["✅ You want to code entirely in the browser — no installation, no local setup", "✅ You''''re learning to code and need an environment that''''s instantly ready with any language", "✅ You want to deploy web apps directly from your development environment with one click", "✅ You build and share interactive projects and want a live URL for your running app"]',
  '["✅ You''''re a professional developer using VS Code, JetBrains, or another established IDE locally", "✅ You want AI coding assistance inside your existing development environment and workflow", "✅ Your team uses GitHub for version control and wants AI integrated into PRs and code review", "✅ You need enterprise features: SSO, audit logs, and IP indemnity for professional use"]',
  '[{"q": "What is Replit?", "a": "Replit is a browser-based IDE and cloud development platform. You write, run, and deploy code entirely in the browser — no local installation needed. It supports 50+ programming languages and Replit AI (Ghostwriter) provides AI coding assistance."}, {"q": "Is Replit free?", "a": "Replit has a free plan with limited compute and storage. Core plan is $20/month for more power, private projects, and better AI. Teams plans are available for collaborative development."}, {"q": "Can Replit deploy web apps?", "a": "Yes. Replit has built-in deployments — you can deploy web apps, APIs, and databases directly from your Replit environment. Apps run on Replit''''s infrastructure at a .replit.app subdomain or custom domain."}, {"q": "Is Replit good for beginners?", "a": "Yes. Replit is one of the best platforms for beginners — no setup required, works in any browser, and supports all major programming languages. The AI assistant helps explain code and fix errors. Many coding bootcamps and schools use Replit for this reason."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'retool-ai-vs-looker-studio', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='retool-ai' AND lang='en'), 'retool-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='looker-studio' AND lang='en'), 'looker-studio'),
  'retool-ai', 'looker-studio',
  COALESCE((SELECT url FROM tools WHERE slug='retool-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='looker-studio' AND lang='en'), ''),
  '["✅ You build internal tools — admin panels, dashboards with actions, CRUD apps for your team", "✅ You need to not just display data but take actions: edit records, run queries, trigger workflows", "✅ You connect to databases (PostgreSQL, MySQL, MongoDB) and internal APIs directly", "✅ You''''re a developer or technical team building custom internal software quickly"]',
  '["✅ You need free visual dashboards connected to Google Analytics, Ads, BigQuery, or Sheets", "✅ You create reports for stakeholders who need to view data without needing to act on it", "✅ You want the simplest read-only data visualization with no server management", "✅ You share dashboards externally with clients or partners who just need to see the numbers"]',
  '[{"q": "What is Retool?", "a": "Retool is a low-code platform for building internal tools. Developers connect to databases and APIs, then build admin panels, dashboards, and CRUD apps using drag-and-drop components. Unlike dashboards, Retool apps can take actions — edit database records, trigger workflows, send data."}, {"q": "Is Retool free?", "a": "Retool has a free plan for up to 5 users with basic features. Team plan is $10/user/month, Business is $50/user/month, and Enterprise is custom. The free plan is functional for small teams building internal tools."}, {"q": "What is the difference between Retool and Looker Studio?", "a": "Looker Studio creates read-only visual dashboards for viewing data. Retool builds interactive internal tools where you can edit data, run actions, and manage operations. If you need to just see data — Looker Studio. If you need to act on data — Retool."}, {"q": "Is Retool a no-code tool?", "a": "Retool is low-code rather than no-code. It requires some technical knowledge — connecting to databases, writing SQL queries, and understanding APIs. It''''s designed for developers and technical teams, not business users without technical background."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'rows-vs-hex', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='rows' AND lang='en'), 'rows'),
  COALESCE((SELECT name FROM tools WHERE slug='hex' AND lang='en'), 'hex'),
  'rows', 'hex',
  COALESCE((SELECT url FROM tools WHERE slug='rows' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='hex' AND lang='en'), ''),
  '["✅ You want a spreadsheet with built-in API connections to live data (Stripe, Salesforce, Google Analytics)", "✅ You''''re a business analyst who loves spreadsheets but needs real-time external data without coding", "✅ You want to publish interactive spreadsheet reports that non-technical stakeholders can use", "✅ You need OpenAI integration directly in spreadsheet cells for AI-powered analysis"]',
  '["✅ You''''re a data scientist who works in Python and SQL for complex analysis", "✅ You build interactive data apps and dashboards beyond what spreadsheets can handle", "✅ You need collaborative notebooks where data teams and business users work together", "✅ You want AI that writes Python and SQL from natural language for complex data tasks"]',
  '[{"q": "What is Rows?", "a": "Rows is an AI-powered spreadsheet that connects to external data sources — Stripe, Salesforce, Google Analytics, social media APIs — and pulls live data directly into spreadsheet cells. It works like Excel or Google Sheets but with built-in API integrations and an AI analyst."}, {"q": "Is Rows free?", "a": "Rows has a free plan for individuals with limited integrations. Plus is $59/month for more connections and AI features. Business is $119/month for team collaboration and advanced features."}, {"q": "What is the difference between Rows and Google Sheets?", "a": "Google Sheets is a general-purpose spreadsheet with some API connections through add-ons. Rows is specifically designed for connecting to business data sources with first-class API integrations built in. Rows is more powerful for live business data; Sheets is more universal."}, {"q": "What is Hex used for?", "a": "Hex is a collaborative data platform for data teams. It combines SQL, Python notebooks, and no-code charts in one workspace. Teams use it to build data apps — interactive tools where business users can explore data with filters and parameters. Hex Magic (AI) writes code from natural language."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'runway-vs-capcut', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='runway' AND lang='en'), 'runway'),
  COALESCE((SELECT name FROM tools WHERE slug='capcut' AND lang='en'), 'capcut'),
  'runway', 'capcut',
  COALESCE((SELECT url FROM tools WHERE slug='runway' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='capcut' AND lang='en'), ''),
  '["✅ You''''re a professional video creator needing AI generation, inpainting, and VFX-grade tools", "✅ You want to generate entirely new video from text prompts for commercial or film production", "✅ You need cinematic quality AI video for advertising, film, or professional creative projects", "✅ You require advanced tools: motion brush, rotoscoping, video-to-video, multi-shot consistency"]',
  '["✅ You edit existing video footage for TikTok, Instagram Reels, or YouTube Shorts", "✅ You want auto-captions, transitions, filters, and music sync for social media content", "✅ You''''re a mobile content creator who needs a fast, intuitive video editor", "✅ You want to edit real recorded clips — not generate video from scratch"]',
  '[{"q": "What is the difference between Runway and CapCut?", "a": "Runway is a professional AI video generation and editing platform — it creates video from text and offers VFX-grade tools. CapCut is a video editor for existing footage — you import clips and edit them with AI-assisted tools. Runway generates; CapCut edits."}, {"q": "Is CapCut free?", "a": "CapCut is free with a generous feature set including auto-captions, effects, and basic AI tools. CapCut Pro ($7.99/month) adds watermark removal, more AI features, and cloud storage."}, {"q": "Is Runway used by professionals?", "a": "Yes. Runway is used by filmmakers, VFX artists, music video directors, and advertising agencies. Studios including Universal Pictures and Legendary have used Runway tools. It''''s the professional-grade choice in AI video production."}, {"q": "Can CapCut generate AI video?", "a": "CapCut has some AI generation features (Dream), but its primary strength is editing existing footage. For full AI video generation from text prompts or images, Runway, Kling AI, or Pika are significantly more capable."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'scite-vs-semantic-scholar', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='scite' AND lang='en'), 'scite'),
  COALESCE((SELECT name FROM tools WHERE slug='semantic-scholar' AND lang='en'), 'semantic-scholar'),
  'scite', 'semantic-scholar',
  COALESCE((SELECT url FROM tools WHERE slug='scite' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='semantic-scholar' AND lang='en'), ''),
  '["✅ You want to understand how a paper is cited — whether other studies support, contrast, or mention it", "✅ You''''re evaluating the reliability of a study and want to see contradicting or confirming evidence", "✅ You need citation context — not just citation counts, but what other papers actually say about this one", "✅ You''''re a researcher doing systematic reviews who needs evidence quality assessment"]',
  '["✅ You want free, broad academic search across 200+ million papers from any field", "✅ You need AI-powered paper recommendations and personalized research feeds", "✅ You search for papers by topic without knowing specific citation relationships", "✅ You want open access PDF links and semantic search that understands research concepts"]',
  '[{"q": "What is Scite?", "a": "Scite is an academic research tool that shows how scientific papers have been cited — specifically whether citations are supporting, contrasting, or mentioning the original claim. This helps researchers evaluate the reliability and controversy around specific findings."}, {"q": "Is Semantic Scholar free?", "a": "Yes. Semantic Scholar is completely free and covers 200+ million academic papers across all fields. It''''s run by the Allen Institute for AI (a nonprofit) and provides open access to metadata, abstracts, and PDF links where available."}, {"q": "Is Scite free?", "a": "Scite has a free plan with limited reference checks per month. Scite Pro is $20/month or $144/year for unlimited access. Institutional and group plans are available."}, {"q": "What is the difference between Scite and Google Scholar?", "a": "Google Scholar shows how many times a paper was cited. Scite shows how it was cited — supporting, contrasting, or mentioning — giving context on whether subsequent research validated or challenged the original findings. Scite adds qualitative citation analysis that Google Scholar lacks."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'semrush-vs-copy-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='semrush' AND lang='en'), 'semrush'),
  COALESCE((SELECT name FROM tools WHERE slug='copy-ai' AND lang='en'), 'copy-ai'),
  'semrush', 'copy-ai',
  COALESCE((SELECT url FROM tools WHERE slug='semrush' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='copy-ai' AND lang='en'), ''),
  '["✅ You need a complete SEO platform: keyword research, backlink analysis, site audits, rank tracking", "✅ You manage digital marketing strategy across SEO, PPC, content, and social", "✅ You do competitive intelligence — analyzing what competitors rank for and their backlink profiles", "✅ You''''re an SEO professional or agency managing multiple clients'''' digital presence"]',
  '["✅ You need AI to generate marketing copy: ads, emails, social posts, product descriptions", "✅ You want workflow automation for content production pipelines", "✅ You''''re a marketer who needs words — not SEO data — generated at scale", "✅ You want an affordable AI writing platform with a generous free plan"]',
  '[{"q": "What is the difference between SEMrush and Copy.ai?", "a": "SEMrush is an SEO and digital marketing analytics platform — it provides data about keywords, backlinks, competitors, and site health. Copy.ai is an AI content generator — it writes marketing copy. SEMrush tells you what to write about; Copy.ai writes it. Many marketers use both together."}, {"q": "Is SEMrush worth it for small businesses?", "a": "SEMrush starts at $139/month, which is a significant investment for small businesses. For local businesses doing basic SEO, cheaper tools like Ubersuggest or Google Search Console may be sufficient. For businesses where SEO is a primary growth channel, SEMrush ROI is typically justified."}, {"q": "Is Copy.ai good for SEO content?", "a": "Copy.ai can generate SEO content but lacks built-in keyword research and optimization scoring. For SEO-optimized content, combining Copy.ai with a dedicated SEO tool like Surfer or Clearscope produces better results than either alone."}, {"q": "Does SEMrush have AI writing?", "a": "SEMrush added ContentShake AI — an AI content writing tool integrated with SEMrush data. It generates SEO-optimized articles based on keyword research. This competes with tools like Frase and Surfer AI. It''''s included in some SEMrush plans."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'slidesgo-vs-gamma', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='slidesgo' AND lang='en'), 'slidesgo'),
  COALESCE((SELECT name FROM tools WHERE slug='gamma' AND lang='en'), 'gamma'),
  'slidesgo', 'gamma',
  COALESCE((SELECT url FROM tools WHERE slug='slidesgo' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='gamma' AND lang='en'), ''),
  '["✅ You want professionally designed PowerPoint or Google Slides templates with beautiful layouts", "✅ You need presentations that work in traditional formats your audience expects", "✅ You want a huge library of templates for specific industries, occasions, and topics", "✅ You prefer to start from a designed template and customize it rather than AI-generating everything"]',
  '["✅ You want AI to generate a complete, designed presentation from a text prompt in under 2 minutes", "✅ You prefer card-based web presentations shared as links rather than downloaded files", "✅ You want built-in analytics showing who viewed your deck and for how long", "✅ You need interactive elements, embedded video, and modern design — not classic slide decks"]',
  '[{"q": "What is Slidesgo?", "a": "Slidesgo is a library of free and premium presentation templates for Google Slides and PowerPoint. It offers thousands of professionally designed templates for business, education, marketing, and creative purposes. Slidesgo AI can generate presentations from text prompts as complete Google Slides files."}, {"q": "Is Slidesgo free?", "a": "Slidesgo offers free templates with limited selection and Slidesgo branding. Premium plan is $5.99/month or $49.99/year for access to all templates without branding. Slidesgo AI generation requires a premium subscription."}, {"q": "What is the difference between Slidesgo and Canva?", "a": "Both offer presentation templates, but Slidesgo specializes in presentation templates for Google Slides and PowerPoint. Canva is a broader design platform with presentations as one of many format types. Slidesgo has more presentation-specific templates; Canva has more overall design versatility."}, {"q": "Is Gamma better than PowerPoint?", "a": "Gamma produces more modern, web-native presentations with AI-generated content and built-in analytics. PowerPoint offers more design control and works offline. For modern business presentations shared digitally, Gamma is increasingly preferred. For traditional formats or print, PowerPoint remains the standard."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'softr-vs-bubble', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='softr' AND lang='en'), 'softr'),
  COALESCE((SELECT name FROM tools WHERE slug='bubble' AND lang='en'), 'bubble'),
  'softr', 'bubble',
  COALESCE((SELECT url FROM tools WHERE slug='softr' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='bubble' AND lang='en'), ''),
  '["✅ You want to turn Airtable or Google Sheets data into a client portal, directory, or membership site", "✅ You''''re non-technical and need a working web app from your existing spreadsheet data quickly", "✅ You build internal tools, job boards, directories, or client-facing portals from structured data", "✅ You want the fastest path from Airtable base to a published, password-protected web app"]',
  '["✅ You need to build a full web application with complex custom logic and multi-step workflows", "✅ You''''re creating a SaaS product, marketplace, or app that goes beyond displaying spreadsheet data", "✅ You need a full database, user authentication system, and custom business rules", "✅ You want the most powerful no-code platform for building ambitious web products"]',
  '[{"q": "What is Softr?", "a": "Softr is a no-code platform that turns Airtable or Google Sheets data into web apps — client portals, directories, marketplaces, internal tools, and membership sites. It''''s the fastest way to publish a web-facing app from data you already have in a spreadsheet or Airtable base."}, {"q": "Is Softr free?", "a": "Softr has a free plan for one app with limited users and Softr branding. Starter is $49/month, Professional is $139/month, and Business is $269/month for more apps, users, and custom domains."}, {"q": "Can Softr build a marketplace?", "a": "Yes. Softr can build two-sided marketplaces with Airtable as the backend — listings, user profiles, search filters, and contact forms. For complex marketplace features like in-app payments, booking systems, or real-time messaging, Bubble offers more capability."}, {"q": "What is the difference between Softr and Webflow?", "a": "Softr connects to Airtable/Sheets and is focused on data-driven apps (portals, directories). Webflow is a professional website and CMS builder focused on design control and content management. Softr is for data apps; Webflow is for designed websites and content sites."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'speechify-vs-elevenlabs', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='speechify' AND lang='en'), 'speechify'),
  COALESCE((SELECT name FROM tools WHERE slug='elevenlabs' AND lang='en'), 'elevenlabs'),
  'speechify', 'elevenlabs',
  COALESCE((SELECT url FROM tools WHERE slug='speechify' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='elevenlabs' AND lang='en'), ''),
  '["✅ You want to listen to articles, PDFs, ebooks, and web pages instead of reading them", "✅ You''''re a student, professional, or person with dyslexia who processes audio better than text", "✅ You want to consume written content while commuting, working out, or multitasking", "✅ You need a personal text-to-speech reader across your devices — not a content creation tool"]',
  '["✅ You create audio content — voiceovers, audiobooks, podcasts, videos — using AI voices", "✅ You need to clone a specific voice for consistent AI narration across content", "✅ You''''re a content creator, developer, or business building voice-enabled products", "✅ You need API access to integrate realistic voice synthesis into your applications"]',
  '[{"q": "What is Speechify used for?", "a": "Speechify is a text-to-speech app designed for listening to written content. You import articles, PDFs, ebooks, or web pages and Speechify reads them aloud in natural-sounding voices. It''''s used by students, professionals, and people with dyslexia or ADHD to consume content faster."}, {"q": "Is Speechify free?", "a": "Speechify has a free plan with standard voices and limited features. Speechify Premium is $139/year for high-quality voices, AI summaries, and all platform access. A Speechify AI Studio plan for content creation starts at $99/month."}, {"q": "Is ElevenLabs better than Speechify for voiceovers?", "a": "Yes. ElevenLabs is specifically designed for voiceover creation and voice cloning. It produces higher quality, more expressive voices for content creation. Speechify is designed for personal content consumption — listening to your own documents, not creating audio content for others."}, {"q": "Can ElevenLabs read documents?", "a": "ElevenLabs can convert any text to speech, which technically includes documents. However, it''''s designed for content creation — generating voiceovers for videos, podcasts, and audiobooks. For personal document reading, Speechify''''s interface is far more convenient."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'suno-vs-elevenlabs', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='suno' AND lang='en'), 'suno'),
  COALESCE((SELECT name FROM tools WHERE slug='elevenlabs' AND lang='en'), 'elevenlabs'),
  'suno', 'elevenlabs',
  COALESCE((SELECT url FROM tools WHERE slug='suno' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='elevenlabs' AND lang='en'), ''),
  '["✅ You want to generate complete songs with vocals, instruments, and lyrics from a text prompt", "✅ You create music — not voice narration — for content, games, ads, or personal projects", "✅ You want a finished music track (not a voiceover) that fits a specific mood or genre", "✅ You''''re a content creator who needs background music or complete songs with AI vocals"]',
  '["✅ You need AI voice narration for videos, podcasts, audiobooks, or explainer content", "✅ You want to clone a specific human voice for consistent narration across your content", "✅ You''''re building voice-enabled apps and need realistic, low-latency speech synthesis via API", "✅ You need professional voiceovers in 32+ languages — not music generation"]',
  '[{"q": "What is the difference between Suno and ElevenLabs?", "a": "Suno generates AI music — complete songs with vocals, instruments, and lyrics. ElevenLabs generates AI speech — voice narration, text-to-speech, and voice cloning. Suno creates music; ElevenLabs creates voice. They serve completely different content creation needs."}, {"q": "Can Suno generate instrumental music?", "a": "Yes. Suno can generate instrumental tracks without vocals by specifying ''''instrumental'''' in your prompt or style tags. You can describe the genre, mood, and instruments to create background music for videos, games, or other media."}, {"q": "Does ElevenLabs generate music?", "a": "ElevenLabs focuses on voice and speech synthesis, not music generation. For music creation, Suno or Udio are the appropriate tools. ElevenLabs Sound Effects tool can generate some audio effects, but full music composition is not its purpose."}, {"q": "Is Suno copyright free?", "a": "Suno Pro and Premier plans grant commercial use rights to generated music. The free plan does not allow commercial use. AI music copyright law is still evolving — Suno has faced legal challenges from record labels. Always check current terms before commercial use."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'surferseo-vs-semrush', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='surferseo' AND lang='en'), 'surferseo'),
  COALESCE((SELECT name FROM tools WHERE slug='semrush' AND lang='en'), 'semrush'),
  'surferseo', 'semrush',
  COALESCE((SELECT url FROM tools WHERE slug='surferseo' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='semrush' AND lang='en'), ''),
  '["✅ You create SEO content and want real-time scoring as you write in a built-in editor", "✅ You want AI to generate content outlines and first drafts optimized for your target keyword", "✅ You''''re a content marketer focused on on-page optimization rather than full SEO strategy", "✅ You want a more affordable tool focused specifically on content quality, not a full SEO suite"]',
  '["✅ You manage complete SEO strategy: keyword research, backlinks, technical audits, rank tracking", "✅ You''''re an SEO agency managing multiple clients and need a comprehensive platform", "✅ You want competitive intelligence — seeing exactly what competitors rank for", "✅ You need PPC research, social monitoring, and content marketing tools in one platform"]',
  '[{"q": "What is the difference between SurferSEO and SEMrush?", "a": "SurferSEO focuses on content optimization — helping you write articles that rank by analyzing competitor content. SEMrush is a comprehensive SEO platform covering keyword research, backlinks, technical SEO, and competitive intelligence. Many SEO teams use both: SEMrush for strategy, Surfer for content creation."}, {"q": "Is SurferSEO worth it?", "a": "For teams publishing SEO content regularly, SurferSEO at $99/month (Essential) typically pays for itself if it improves rankings. The real-time content editor significantly reduces optimization guesswork. Solo bloggers may find cheaper alternatives like Frase sufficient."}, {"q": "Does SEMrush have a content editor?", "a": "SEMrush includes ContentShake AI, an AI content editor that integrates with SEMrush keyword data. It''''s similar to SurferSEO but less specialized for content optimization. Surfer''''s content editor is generally considered more detailed and easier to use."}, {"q": "Can I use SurferSEO without a website?", "a": "Yes. SurferSEO can be used for content strategy and writing optimization without owning the website where content will publish. It''''s used by freelance writers and content agencies who optimize content for their clients'''' sites."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'synthesis-vs-khanmigo', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='synthesis' AND lang='en'), 'synthesis'),
  COALESCE((SELECT name FROM tools WHERE slug='khanmigo' AND lang='en'), 'khanmigo'),
  'synthesis', 'khanmigo',
  COALESCE((SELECT url FROM tools WHERE slug='synthesis' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='khanmigo' AND lang='en'), ''),
  '["✅ You want your child to develop problem-solving and reasoning skills through game-based math challenges", "✅ You''''re a parent who wants an engaging alternative to traditional math drills for K-12", "✅ You want collaborative math games originally developed for SpaceX employees'''' children", "✅ You want adaptive challenges that grow with your child''''s ability level automatically"]',
  '["✅ You need AI tutoring across multiple academic subjects — math, science, history, writing", "✅ You want a Socratic tutor that teaches concepts by asking guiding questions", "✅ You''''re a teacher who needs AI tools for lesson planning and student support", "✅ You use Khan Academy''''s curriculum and want AI integrated into those lessons"]',
  '[{"q": "What is Synthesis?", "a": "Synthesis is an AI-powered learning platform for K-12 students focused on math and problem-solving. Originally developed for SpaceX employees'''' children at Ad Astra school, it uses game-based challenges to build mathematical reasoning and critical thinking skills."}, {"q": "Is Synthesis free?", "a": "Synthesis offers a free trial. The subscription is $35/month per student. It''''s positioned as a premium education supplement rather than a replacement for school."}, {"q": "What is the difference between Synthesis and Khan Academy?", "a": "Khan Academy is a broad free education platform covering all subjects with video lessons and practice problems. Synthesis focuses specifically on math and problem-solving through games, using a different pedagogical approach. Synthesis is premium; Khan Academy is free. Khanmigo adds AI tutoring to Khan Academy."}, {"q": "Is Khanmigo free?", "a": "Khanmigo is free for US students through Khan Academy. International users need to donate $4+/month to Khan Academy for access. It''''s available through schools and districts at no cost to students in the US."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'tradingview-vs-fiscal-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='tradingview' AND lang='en'), 'tradingview'),
  COALESCE((SELECT name FROM tools WHERE slug='finchat' AND lang='en'), 'finchat'),
  'tradingview', 'finchat',
  COALESCE((SELECT url FROM tools WHERE slug='tradingview' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='finchat' AND lang='en'), ''),
  '["✅ You use technical analysis — charts, indicators, patterns — to make trading decisions", "✅ You trade actively and need real-time price data, alerts, and charting tools", "✅ You want access to the world''''s largest trading community for ideas and shared strategies", "✅ You build and backtest custom indicators with Pine Script"]',
  '["✅ You research stocks fundamentally and want to ask AI questions about earnings calls and SEC filings", "✅ You want cited, AI-extracted answers from 10-Ks, 10-Qs, and financial statements", "✅ You''''re a fundamental investor who analyzes what companies say, not just their price charts", "✅ You want to quickly find specific information from financial documents without reading them manually"]',
  '[{"q": "What is the difference between TradingView and Fiscal.ai?", "a": "TradingView is a charting and technical analysis platform — it shows price data, indicators, and trading patterns. Fiscal.ai (FinChat) is a fundamental research tool — it lets you ask AI questions about company earnings calls and SEC filings. Technical traders use TradingView; fundamental investors use Fiscal.ai."}, {"q": "Is TradingView free?", "a": "TradingView has a feature-rich free plan with delayed data and up to 3 indicators per chart. Essential is $14.95/month, Plus is $29.95/month, and Premium is $59.95/month for real-time data, more indicators, and advanced features."}, {"q": "What is FinChat / Fiscal.ai?", "a": "Fiscal.ai, also known as FinChat, is an AI financial research tool that lets investors chat with company financial documents — earnings transcripts, SEC filings, annual reports. Ask a specific question and get a cited answer directly from the source document."}, {"q": "Can TradingView do fundamental analysis?", "a": "TradingView has some fundamental data — financial statements, earnings estimates, and company metrics. However, it''''s primarily a charting tool. For deep fundamental analysis and AI-powered document research, Fiscal.ai, Koyfin, or Bloomberg are more appropriate."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'uizard-vs-figma-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='uizard' AND lang='en'), 'uizard'),
  COALESCE((SELECT name FROM tools WHERE slug='figma-ai' AND lang='en'), 'figma-ai'),
  'uizard', 'figma-ai',
  COALESCE((SELECT url FROM tools WHERE slug='uizard' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='figma-ai' AND lang='en'), ''),
  '["✅ You''''re a non-designer or product manager who wants to turn sketches or descriptions into wireframes", "✅ You want to rapidly prototype app ideas without learning professional design tools", "✅ You need quick, shareable wireframes for stakeholder feedback without design expertise", "✅ You want AI to generate UI screens from text descriptions in seconds"]',
  '["✅ You''''re a professional UI/UX designer building polished, production-ready product interfaces", "✅ Your team uses Figma for design handoff to developers — AI features are built into your workflow", "✅ You need precise control with auto-layout, variables, components, and design systems", "✅ You create high-fidelity interactive prototypes that developers can inspect and implement"]',
  '[{"q": "What is Uizard?", "a": "Uizard is an AI-powered UI design tool that turns sketches, screenshots, or text descriptions into digital wireframes and mockups. It''''s designed for non-designers — product managers, founders, and entrepreneurs who need to visualize app ideas quickly without learning Figma."}, {"q": "Is Uizard free?", "a": "Uizard has a free plan with 2 projects and limited AI features. Pro is $19/month and Business is $49/month for more projects, AI generation credits, and team collaboration."}, {"q": "Can Uizard export to Figma?", "a": "Uizard can export designs that can be opened in Figma. This workflow — generate wireframes in Uizard, refine in Figma — is used by teams that start with rough concepts and move to professional design."}, {"q": "Does Figma AI generate full app designs?", "a": "Figma AI can generate designs from text prompts and create first drafts of screens. However, it''''s designed as an assistant for professional designers — not a standalone app generator for non-designers. Uizard is simpler for creating rough wireframes from scratch without design knowledge."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'uxpilot-vs-figma-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='uxpilot' AND lang='en'), 'uxpilot'),
  COALESCE((SELECT name FROM tools WHERE slug='figma-ai' AND lang='en'), 'figma-ai'),
  'uxpilot', 'figma-ai',
  COALESCE((SELECT url FROM tools WHERE slug='uxpilot' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='figma-ai' AND lang='en'), ''),
  '["✅ You need AI-powered UX research tools — personas, user journeys, usability analysis", "✅ You want to generate research artifacts without hours of manual UX work", "✅ You''''re a UX researcher or product manager who needs research frameworks fast", "✅ You want AI to analyze designs and provide usability feedback without a research team"]',
  '["✅ You''''re a UI/UX designer who needs AI assistance within your design workflow", "✅ You create high-fidelity interfaces and need AI to generate and refine components", "✅ Your team collaborates in Figma and wants AI integrated into the tools they already use", "✅ You need AI that understands your design system and can generate consistent components"]',
  '[{"q": "What is UXpilot?", "a": "UXpilot is an AI tool for UX research and design. It generates user personas, user journey maps, research plans, usability heuristics, and design feedback from prompts. It''''s used by UX designers and product managers to produce research artifacts faster."}, {"q": "What is the difference between UXpilot and Figma AI?", "a": "UXpilot focuses on UX research artifacts — personas, journeys, usability analysis. Figma AI focuses on design creation — generating UI components and screen designs within Figma. UXpilot is for research; Figma AI is for design. Many UX professionals use both."}, {"q": "Is UXpilot free?", "a": "UXpilot has a free plan with limited generations. Pro plan is $20/month for more AI generations and features. Enterprise plans are available for teams."}, {"q": "Can AI do UX research?", "a": "AI can significantly accelerate parts of UX research — generating personas from briefs, creating research plans, analyzing patterns in qualitative data, and producing design heuristics. However, AI cannot replace real user research: interviews, usability testing, and behavioral observation still require human researchers."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'v0-by-vercel-vs-cursor', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='v0-by-vercel' AND lang='en'), 'v0-by-vercel'),
  COALESCE((SELECT name FROM tools WHERE slug='cursor' AND lang='en'), 'cursor'),
  'v0-by-vercel', 'cursor',
  COALESCE((SELECT url FROM tools WHERE slug='v0-by-vercel' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='cursor' AND lang='en'), ''),
  '["✅ You want to generate React UI components and complete pages from text or image prompts", "✅ You''''re a frontend developer who wants to rapidly prototype UI without writing boilerplate", "✅ You want Tailwind CSS and shadcn/ui components generated instantly and deployable to Vercel", "✅ You need quick UI prototypes to share with designers or stakeholders for feedback"]',
  '["✅ You''''re building a complete application — not just UI components — and need full-stack AI assistance", "✅ You want AI that understands your entire codebase context for accurate suggestions", "✅ You need Composer (multi-file editing) and deep codebase-aware chat for architecture work", "✅ You''''re a professional developer who wants the most capable AI coding experience in an IDE"]',
  '[{"q": "What is v0 by Vercel?", "a": "v0 is Vercel''''s AI UI component generator. Describe a UI in text, upload a screenshot or sketch, and v0 generates React components with Tailwind CSS and shadcn/ui styling. Generated components can be copied into your project or deployed directly to Vercel."}, {"q": "Is v0 free?", "a": "v0 has a free plan with limited message credits. Premium plans start at $20/month for more credits and faster generation. Credits are consumed per AI request."}, {"q": "What is the difference between v0 and Bolt.new?", "a": "v0 generates UI components to integrate into existing codebases. Bolt.new generates complete full-stack applications from scratch. v0 is for adding UI to existing projects; Bolt is for starting entirely new applications. v0 is component-focused; Bolt is app-focused."}, {"q": "Does Cursor replace v0?", "a": "They have different strengths. v0 excels at generating polished UI components with Tailwind and shadcn from a visual prompt. Cursor is better for working within a full codebase with multi-file context. Many developers use v0 to generate initial UI, then use Cursor for further development."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'webflow-vs-framer-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='webflow' AND lang='en'), 'webflow'),
  COALESCE((SELECT name FROM tools WHERE slug='framer-ai' AND lang='en'), 'framer-ai'),
  'webflow', 'framer-ai',
  COALESCE((SELECT url FROM tools WHERE slug='webflow' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='framer-ai' AND lang='en'), ''),
  '["✅ You need advanced CMS capabilities — complex content structures, dynamic filtering, multi-reference fields", "✅ You''''re an agency or freelancer building complex client websites with custom animations", "✅ You need e-commerce functionality beyond simple product listing", "✅ You want a large professional ecosystem — Webflow University, freelancer network, templates"]',
  '["✅ You want AI to generate a complete, professional website from a text description in minutes", "✅ You''''re a startup or individual who needs a great-looking website up fast", "✅ You want the fastest path from idea to live URL without learning a complex tool", "✅ You create modern, design-forward websites and want AI-generated layouts as a starting point"]',
  '[{"q": "Is Framer better than Webflow?", "a": "Framer is faster to build on and has better AI generation. Webflow has more powerful CMS, more complex e-commerce, and a larger professional ecosystem. Framer suits individual projects and startups wanting speed; Webflow suits agencies building complex, content-heavy client sites."}, {"q": "Is Webflow free?", "a": "Webflow has a free plan for up to 2 projects with a webflow.io subdomain. Site plans start at $14/month (Basic) for publishing to a custom domain. CMS and Business plans are $23-$39/month. E-commerce plans start at $29/month."}, {"q": "Is Framer AI better than Wix?", "a": "Framer AI produces more modern, design-forward websites. Wix is more beginner-friendly with better built-in e-commerce and marketing tools. Framer is for design-conscious users wanting a premium look; Wix is for business owners wanting ease of use and all-in-one functionality."}, {"q": "Can Webflow use AI?", "a": "Webflow has added some AI features including AI-assisted copywriting and image generation. However, Framer AI''''s site generation capability is more advanced — it can generate a full website from a prompt. Webflow''''s strength remains its design control, not AI generation."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'whimsical-ai-vs-figma-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='whimsical-ai' AND lang='en'), 'whimsical-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='figma-ai' AND lang='en'), 'figma-ai'),
  'whimsical-ai', 'figma-ai',
  COALESCE((SELECT url FROM tools WHERE slug='whimsical-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='figma-ai' AND lang='en'), ''),
  '["✅ You create flowcharts, mind maps, sticky note diagrams, and visual planning documents", "✅ You''''re in early-stage product planning and need to map out flows, systems, and ideas quickly", "✅ You want AI to generate flowcharts and mind maps from text descriptions", "✅ You''''re a product manager, team lead, or consultant who diagrams more than designs"]',
  '["✅ You''''re designing actual UI screens, app interfaces, or website mockups — not diagrams", "✅ Your team uses Figma for design handoff to developers and needs AI within that workflow", "✅ You need high-fidelity interactive prototypes that developers can inspect and implement", "✅ You want AI that generates UI components and design variations within a professional tool"]',
  '[{"q": "What is Whimsical?", "a": "Whimsical is a visual collaboration tool for creating flowcharts, mind maps, wireframes, and sticky note boards. Whimsical AI can generate flowcharts and diagrams from text prompts. It''''s popular for product planning, user flow mapping, and brainstorming sessions."}, {"q": "Is Whimsical free?", "a": "Whimsical has a free plan with up to 4 boards. Pro is $10/user/month for unlimited boards and advanced features. Organization plans are available for teams."}, {"q": "What is the difference between Whimsical and Miro?", "a": "Both are visual collaboration tools. Whimsical is cleaner and more structured — better for flowcharts and systematic diagrams. Miro is more flexible and infinite-canvas — better for large collaborative brainstorming sessions. Whimsical has stronger AI diagram generation; Miro has a larger template library."}, {"q": "Can Figma replace Whimsical?", "a": "Figma can create flowcharts and diagrams with its FigJam product (a whiteboard tool). For UX flows and early planning, FigJam overlaps with Whimsical. However, Whimsical''''s dedicated diagram tools and AI generation are more specialized. Many teams use Whimsical for planning and Figma for design."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'windsurf-vs-cursor', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='windsurf' AND lang='en'), 'windsurf'),
  COALESCE((SELECT name FROM tools WHERE slug='cursor' AND lang='en'), 'cursor'),
  'windsurf', 'cursor',
  COALESCE((SELECT url FROM tools WHERE slug='windsurf' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='cursor' AND lang='en'), ''),
  '["✅ You want Cascade — Windsurf''''s AI agent that understands your codebase and executes complex tasks", "✅ You want a VS Code fork with deep AI integration and a generous free plan", "✅ You''''re interested in trying a strong Cursor alternative with a growing reputation", "✅ You want an AI IDE that feels purpose-built rather than adapted from an existing editor"]',
  '["✅ You want the most established AI IDE with the largest community and most polish", "✅ You need Composer for multi-file editing and deep codebase context across large projects", "✅ You want support for more AI models with granular control over which model to use", "✅ You''''re a power developer who wants the most feature-complete AI coding experience available"]',
  '[{"q": "What is Windsurf?", "a": "Windsurf is an AI-powered IDE by Codeium, built as a fork of VS Code. Its flagship feature is Cascade, an AI agent that can plan and execute complex coding tasks with awareness of your entire codebase. It''''s positioned as a direct competitor to Cursor."}, {"q": "Is Windsurf free?", "a": "Windsurf has a free plan with limited AI requests. Pro is $15/month for more AI usage. The free plan is more generous than Cursor''''s free tier, making it attractive for developers evaluating AI IDEs."}, {"q": "Is Windsurf better than Cursor?", "a": "Both are strong AI IDEs and the gap between them is narrowing. Cursor has more features, a larger community, and more model options. Windsurf''''s Cascade agent and generous free plan are advantages. Many developers try both — the best choice often comes down to personal workflow preference."}, {"q": "What is Cascade in Windsurf?", "a": "Cascade is Windsurf''''s AI agent feature — it can understand your full codebase context, plan multi-step coding tasks, and execute changes across multiple files. Similar to Cursor''''s Composer, it allows for autonomous coding sessions where the AI makes coordinated changes across a project."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'windsurf-vs-github-copilot', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='windsurf' AND lang='en'), 'windsurf'),
  COALESCE((SELECT name FROM tools WHERE slug='github-copilot' AND lang='en'), 'github-copilot'),
  'windsurf', 'github-copilot',
  COALESCE((SELECT url FROM tools WHERE slug='windsurf' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='github-copilot' AND lang='en'), ''),
  '["✅ You want a full AI IDE experience — not just autocomplete added to an existing editor", "✅ You need Cascade, an AI agent that plans and executes complex multi-file coding tasks", "✅ You want a VS Code fork with AI built from the ground up, not bolted on", "✅ You want a more generous free plan than Copilot offers"]',
  '["✅ You''''re already using VS Code, JetBrains, or Visual Studio and don''''t want to switch editors", "✅ Your team is on GitHub and wants AI integrated into PRs, issues, and code review natively", "✅ You need enterprise features: SSO, audit logs, IP indemnity, and policy controls", "✅ You prefer the most widely adopted AI coding assistant with the largest enterprise ecosystem"]',
  '[{"q": "What is the difference between Windsurf and GitHub Copilot?", "a": "Windsurf is a full AI IDE (fork of VS Code) where AI is deeply integrated throughout the editor. GitHub Copilot is an extension that adds AI to your existing IDE. Windsurf''''s Cascade agent handles multi-file autonomous tasks; Copilot primarily provides inline suggestions and chat assistance."}, {"q": "Is Windsurf free?", "a": "Windsurf has a free plan with limited AI credits. Pro is $15/month. The free tier is more generous than GitHub Copilot''''s free offering, making it competitive for individual developers."}, {"q": "Does GitHub Copilot work in Windsurf?", "a": "GitHub Copilot is designed for VS Code and other Microsoft/GitHub-integrated editors. Since Windsurf is a VS Code fork, some VS Code extensions may work in it. However, Windsurf''''s own AI (powered by Codeium) is deeply integrated and replaces the need for a separate Copilot subscription."}, {"q": "Which is better for enterprise teams — Windsurf or Copilot?", "a": "GitHub Copilot is better for enterprise teams, with established SOC 2 compliance, enterprise SSO, audit logging, IP indemnity, and integration into GitHub''''s enterprise workflows. Windsurf is stronger as an individual developer tool. Enterprises typically choose Copilot for its governance and GitHub integration."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'writesonic-vs-grammarly', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='writesonic' AND lang='en'), 'writesonic'),
  COALESCE((SELECT name FROM tools WHERE slug='grammarly' AND lang='en'), 'grammarly'),
  'writesonic', 'grammarly',
  COALESCE((SELECT url FROM tools WHERE slug='writesonic' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='grammarly' AND lang='en'), ''),
  '["✅ You need to generate marketing content from scratch — blog posts, ads, emails, landing pages", "✅ You want an all-in-one platform: AI writer, chatbot (Chatsonic), and image generation", "✅ You create high-volume content and need AI to produce first drafts quickly", "✅ You want built-in Google Search integration for factual, up-to-date AI writing"]',
  '["✅ You want real-time grammar, spelling, and style corrections as you type anywhere", "✅ You need a browser extension that works across Gmail, Google Docs, Slack, and every text field", "✅ You improve existing writing — not generate new content from scratch", "✅ You need plagiarism detection and tone analysis for academic or professional writing"]',
  '[{"q": "What is the difference between Writesonic and Grammarly?", "a": "Writesonic generates new content from prompts — blog posts, ads, emails. Grammarly improves content you''''ve already written — fixing grammar, style, and tone. Writesonic is for content creation; Grammarly is for content improvement. Many writers use both in sequence."}, {"q": "Is Writesonic free?", "a": "Writesonic has a free trial. Individual plan is $16/month, Small Team is $45/month. It''''s generally more affordable than Jasper for comparable AI writing features."}, {"q": "Is Grammarly good for content creation?", "a": "Grammarly has AI writing features that can generate and expand content, but its core strength is editing and improving existing text. For creating blog posts or marketing copy from scratch, Writesonic, Claude, or ChatGPT are more capable."}, {"q": "Does Writesonic have a chatbot?", "a": "Yes. Chatsonic is Writesonic''''s AI chatbot with real-time Google Search access and image generation. It''''s a ChatGPT alternative with current web information. Chatsonic is included in Writesonic plans and is also available as a standalone product."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'youlearn-vs-notebooklm', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='youlearn' AND lang='en'), 'youlearn'),
  COALESCE((SELECT name FROM tools WHERE slug='notebooklm' AND lang='en'), 'notebooklm'),
  'youlearn', 'notebooklm',
  COALESCE((SELECT url FROM tools WHERE slug='youlearn' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='notebooklm' AND lang='en'), ''),
  '["✅ You want to learn from YouTube videos, online courses, and web articles using AI chat", "✅ You paste a video URL and ask questions about what was covered without watching the whole thing", "✅ You''''re a student using online video content (lectures, tutorials, MOOCs) as study material", "✅ You want a learning assistant that works across video and written content in one place"]',
  '["✅ You research from your own uploaded PDFs, documents, and notes", "✅ You want audio overviews — NotebookLM generates podcast-style conversations about your documents", "✅ You''''re doing research synthesis across multiple source documents simultaneously", "✅ You want Google''''s Gemini powering document Q&A with strong citation and grounding"]',
  '[{"q": "What is YouLearn?", "a": "YouLearn is an AI learning tool that lets you paste a YouTube video URL, PDF, or web article and then chat with the content. It extracts the key information and lets you ask questions, get summaries, and quiz yourself — particularly useful for learning from long video lectures."}, {"q": "Is YouLearn free?", "a": "YouLearn has a free plan with limited daily usage. Pro plan is $12/month for unlimited learning sessions. It''''s designed for students and self-learners who consume a lot of educational video content."}, {"q": "What is the difference between YouLearn and NotebookLM?", "a": "YouLearn specializes in learning from video and web content — it handles YouTube URLs natively. NotebookLM specializes in research documents — PDFs, Google Docs, and uploaded files. YouLearn is for learning from video lectures; NotebookLM is for researching written sources."}, {"q": "Can NotebookLM process YouTube videos?", "a": "Yes. NotebookLM can use YouTube video URLs as sources — it processes the transcript and lets you ask questions. However, NotebookLM is primarily designed for document research. YouLearn''''s video-focused UX is more optimized for learning from video content specifically."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'zapier-ai-vs-make', 'en',
  COALESCE((SELECT name FROM tools WHERE slug='zapier-ai' AND lang='en'), 'zapier-ai'),
  COALESCE((SELECT name FROM tools WHERE slug='make' AND lang='en'), 'make'),
  'zapier-ai', 'make',
  COALESCE((SELECT url FROM tools WHERE slug='zapier-ai' AND lang='en'), ''),
  COALESCE((SELECT url FROM tools WHERE slug='make' AND lang='en'), ''),
  '["✅ You want the simplest automation platform with 7,000+ app integrations — more than any competitor", "✅ You''''re a non-technical business user who needs automations set up in minutes without visual flow builders", "✅ You want AI features built into automations: AI steps that classify, transform, or generate content", "✅ You want natural language to create automations — describe what you want and AI builds the Zap"]',
  '["✅ You want complex multi-step automations with visual branching, loops, and data transformation", "✅ You need a more affordable platform — Make''''s pricing is significantly lower than Zapier at scale", "✅ You want better error handling, data routing, and control over complex automation scenarios", "✅ You''''re a power user building sophisticated workflows that go beyond simple if-this-then-that logic"]',
  '[{"q": "What is the difference between Zapier AI and Make?", "a": "Zapier AI adds AI steps into Zapier''''s workflow automation — the same platform but with AI content generation, classification, and transformation capabilities. Make (formerly Integromat) is a separate automation platform with a more powerful visual builder and lower pricing for complex workflows."}, {"q": "Is Make cheaper than Zapier?", "a": "Yes. Make is significantly cheaper than Zapier for the same number of automated tasks. Make''''s Core plan is $9/month for 10,000 operations. Zapier''''s equivalent plan starts at $20/month for 750 tasks. The price difference grows substantially at higher volumes."}, {"q": "Can Zapier AI replace a developer?", "a": "Zapier AI can automate many tasks that previously required developer work — connecting APIs, processing data, and triggering actions based on AI classification. For simple to moderate automations, it reduces developer dependency significantly. Complex custom logic still benefits from developer expertise."}, {"q": "Is Zapier better than Make for beginners?", "a": "Yes. Zapier is simpler for beginners — its interface is more intuitive and creating basic automations takes minutes. Make has a steeper learning curve with its visual scenario builder but offers more power. For first-time automation users, Zapier is the recommended starting point."}]'::jsonb
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;
