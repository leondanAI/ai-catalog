-- Fix tool-specific FAQ for tools with wrong/empty content (EN only)
-- Questions must be ONLY about the specific tool, not comparisons
-- Step 1: Run in Supabase SQL Editor
-- Step 2: python3 scripts/generate-pages.py
-- Step 3: Translate to 7 langs → generate-lang-tool-pages.py → git push

-- 1. CURSOR
UPDATE tools SET faq = '[
  {"q":"What is Cursor?","a":"Cursor is an AI-native IDE based on VS Code. It gives AI full context of your codebase and can edit multiple files, run terminal commands, and complete tasks end-to-end as an agent."},
  {"q":"How much does Cursor cost?","a":"Cursor has a free Hobby plan with limited AI requests. The Pro plan is $20/month with 500 fast requests and unlimited slow requests. Business is $40/user/month with SSO and team features."},
  {"q":"Is Cursor safe to use with my codebase?","a":"Cursor offers a Privacy Mode that disables code storage on their servers. Enterprise plans include additional data controls and SOC 2 compliance."},
  {"q":"What models does Cursor use?","a":"Cursor uses Claude Opus 4.7, GPT-4o, and its own fine-tuned models for autocomplete. You can switch models per request in settings."}
]'::jsonb
WHERE slug = 'cursor' AND lang = 'en';

-- 2. BOLT.NEW
UPDATE tools SET faq = '[
  {"q":"What is Bolt.new?","a":"Bolt.new is a browser-based AI full-stack builder by StackBlitz. You describe what you want in plain language and it generates a complete web application — frontend, backend, and database — running live in the browser without any local setup."},
  {"q":"How much does Bolt.new cost?","a":"Bolt.new has a free tier with limited tokens. Pro is $20/month with more tokens. Team plans are available for collaborative projects with shared workspaces."},
  {"q":"Can Bolt.new deploy my app?","a":"Yes. Bolt.new includes built-in hosting via StackBlitz. You can publish your app instantly without configuring a separate hosting provider."},
  {"q":"What tech stack does Bolt.new use?","a":"Bolt.new supports React, Next.js, Vue, Svelte, and other popular frameworks. It connects to Supabase for databases and can integrate with third-party APIs."}
]'::jsonb
WHERE slug = 'bolt-new' AND lang = 'en';

-- 3. NOTION AI
UPDATE tools SET faq = '[
  {"q":"What is Notion AI?","a":"Notion AI is an AI assistant built directly into Notion. It can write, summarize, translate, and answer questions using your workspace content as context."},
  {"q":"How much does Notion AI cost?","a":"Notion AI is an add-on at $10/member/month (billed annually) on top of any Notion plan, including the free plan. It is included in the Plus, Business, and Enterprise plans as of 2026."},
  {"q":"What is Notion Developer Platform 3.5?","a":"Notion Developer Platform 3.5 (May 2026) adds Workers runtime for serverless functions, Sync API for real-time external data, and Webhooks for event-driven automation — turning Notion into a programmable platform."},
  {"q":"Can Notion AI access the internet?","a":"Notion AI can answer questions from your workspace content. For real-time web data, it uses connected integrations rather than direct internet browsing."}
]'::jsonb
WHERE slug = 'notion-ai' AND lang = 'en';

-- 4. MICROSOFT COPILOT
UPDATE tools SET faq = '[
  {"q":"What is Microsoft Copilot?","a":"Microsoft Copilot is Microsoft''s AI assistant integrated across Windows, Microsoft 365 (Word, Excel, Outlook, Teams), Edge, and Bing. It uses GPT-4o and Microsoft''s own models to assist with tasks across the Microsoft ecosystem."},
  {"q":"How much does Microsoft Copilot cost?","a":"Copilot is free in Windows and Bing. Microsoft 365 Copilot for business costs $30/user/month added to a Microsoft 365 subscription. Copilot+ PCs include additional on-device AI features."},
  {"q":"What can Microsoft Copilot do in Excel?","a":"Copilot in Excel can generate formulas, create pivot tables, summarize data, create charts, and answer questions about your spreadsheet in natural language."},
  {"q":"Is Microsoft Copilot the same as GitHub Copilot?","a":"No. Microsoft Copilot is a general-purpose AI assistant for Windows and M365 apps. GitHub Copilot is a separate product focused on code completion and development, available at github.com/features/copilot."}
]'::jsonb
WHERE slug = 'microsoft-copilot' AND lang = 'en';

-- 5. CLAUDE CODE
UPDATE tools SET faq = '[
  {"q":"What is Claude Code?","a":"Claude Code is Anthropic''s official CLI tool for software engineering. It runs in your terminal, reads your codebase, and can write code, run commands, fix bugs, and complete multi-file tasks as an autonomous agent."},
  {"q":"How much does Claude Code cost?","a":"Claude Code is included with Claude Pro ($20/month), Max ($100/month), Team, and Enterprise plans. Usage is metered by API tokens consumed during agentic tasks."},
  {"q":"How is Claude Code different from Cursor?","a":"Claude Code runs in the terminal — it has no GUI. It is designed for developers who prefer CLI workflows and want deep control. Cursor is a full IDE with a visual interface built on VS Code."},
  {"q":"What can Claude Code do autonomously?","a":"Claude Code can read and edit files, run shell commands, execute tests, search the codebase, manage git, and complete multi-step engineering tasks end-to-end with minimal prompting."}
]'::jsonb
WHERE slug = 'claude-code' AND lang = 'en';

-- 6. CLAUDE DESIGN
UPDATE tools SET faq = '[
  {"q":"What is Claude Design?","a":"Claude Design is Anthropic''s AI design tool integrated into Claude. It generates UI mockups, presentations, landing pages, and visual prototypes through conversation — no design software required."},
  {"q":"How much does Claude Design cost?","a":"Claude Design is included in Claude Pro ($20/month), Max ($100/month), Team, and Enterprise subscriptions at no additional cost. It is part of Anthropic Labs early access."},
  {"q":"Can Claude Design export to Figma or code?","a":"Claude Design can generate HTML/CSS code for designs. Direct Figma export is not available as of May 2026, but generated code can be imported into any design or development workflow."},
  {"q":"What types of designs can Claude Design create?","a":"Claude Design creates UI mockups, landing pages, presentation slides, data dashboards, and marketing materials. It can extract brand styles from existing assets and apply them consistently."}
]'::jsonb
WHERE slug = 'claude-design' AND lang = 'en';

-- 7. V0 BY VERCEL
UPDATE tools SET faq = '[
  {"q":"What is V0 by Vercel?","a":"V0 is Vercel''s AI-powered UI generator. You describe a UI in natural language and V0 generates production-ready React and Tailwind CSS code that deploys directly to Vercel."},
  {"q":"How much does V0 cost?","a":"V0 has a free tier with limited credits. The Premium plan is $20/month with more credits. Team plans are available for collaborative projects."},
  {"q":"Can V0 generate full-stack apps?","a":"V0 focuses on frontend UI generation. For full-stack apps including backend and database, it integrates with Vercel''s platform and can scaffold API routes and database connections."},
  {"q":"What frameworks does V0 support?","a":"V0 primarily generates React with Tailwind CSS and shadcn/ui components. Output is compatible with Next.js and deploys natively on Vercel."}
]'::jsonb
WHERE slug = 'v0-by-vercel' AND lang = 'en';

-- 8. CHATGPT IMAGES
UPDATE tools SET faq = '[
  {"q":"What is ChatGPT Images?","a":"ChatGPT Images (powered by gpt-image-2) is OpenAI''s image generation feature inside ChatGPT. It generates and edits images from text prompts with support for precise text rendering and multilingual captions."},
  {"q":"How much does ChatGPT Images cost?","a":"ChatGPT Images is available on ChatGPT Plus ($20/month), Pro ($200/month), and Team plans. Free users have limited access. API usage is priced per token via gpt-image-2."},
  {"q":"What happened to DALL-E 3?","a":"DALL-E 2 and DALL-E 3 were retired in May 2026 and replaced by gpt-image-2, which supports up to 2K resolution, multilingual text rendering, and improved instruction following."},
  {"q":"Can ChatGPT Images edit existing photos?","a":"Yes. ChatGPT Images supports image editing — you can upload an image and ask ChatGPT to modify specific elements, change backgrounds, add objects, or apply style changes."}
]'::jsonb
WHERE slug = 'chatgpt-images' AND lang = 'en';

-- 9. MURF AI
UPDATE tools SET faq = '[
  {"q":"What is Murf AI?","a":"Murf AI is a professional AI voice generator for creating voiceovers. It offers 200+ voices in 20+ languages, with studio-quality output used for e-learning, explainer videos, presentations, and ads."},
  {"q":"How much does Murf AI cost?","a":"Murf AI has a free plan with 10 minutes of voice generation. Creator is $29/month, Business is $99/month, and Enterprise is custom pricing. Annual billing gives ~33% discount."},
  {"q":"How is Murf AI different from ElevenLabs?","a":"Murf AI focuses on professional voiceover production with a full studio interface — script editor, slide sync, music. ElevenLabs focuses on voice cloning, real-time voice agents, and developer API access."},
  {"q":"Does Murf AI support voice cloning?","a":"Yes. Murf AI supports custom voice cloning on Business and Enterprise plans, allowing teams to create branded voices consistent across all their content."}
]'::jsonb
WHERE slug = 'murf-ai' AND lang = 'en';

-- 10. PLAYHT
UPDATE tools SET faq = '[
  {"q":"What is PlayHT?","a":"PlayHT is an AI text-to-speech platform offering 900+ voices in 142 languages. It is used for podcasts, audiobooks, articles, and apps — with voice cloning and a developer API."},
  {"q":"How much does PlayHT cost?","a":"PlayHT offers a free trial. Creator is $31/month (100K words), Unlimited is $99/month, and Enterprise is custom. Annual billing available with discounts."},
  {"q":"How is PlayHT different from ElevenLabs?","a":"PlayHT has a larger voice library (900+ vs ~3,000 for ElevenLabs) and stronger podcast/article narration workflows. ElevenLabs leads on real-time voice agents, low-latency streaming, and developer tools."},
  {"q":"Does PlayHT support voice cloning?","a":"Yes. PlayHT supports instant voice cloning from a short audio sample on Creator and higher plans. Cloned voices can be used for unlimited text-to-speech generation within your plan."}
]'::jsonb
WHERE slug = 'playht' AND lang = 'en';

-- 11. ZAPIER AI
UPDATE tools SET faq = '[
  {"q":"What is Zapier AI?","a":"Zapier AI is the AI layer within Zapier that lets you build automated workflows using natural language. You describe what you want to automate, and Zapier AI generates the workflow connecting 7,000+ apps."},
  {"q":"How much does Zapier cost?","a":"Zapier has a free plan with 100 tasks/month and 5 Zaps. Starter is $29.99/month (750 tasks), Professional is $73.50/month (2K tasks), Team is $103.50/month, and Company is custom."},
  {"q":"What can Zapier AI automate?","a":"Zapier AI can automate email responses, CRM updates, social media posting, data entry, lead routing, and any repetitive task across 7,000+ connected apps — triggered by events or on a schedule."},
  {"q":"How is Zapier AI different from n8n?","a":"Zapier is a no-code SaaS with the largest app integration library. n8n is open-source and self-hostable, offering more flexibility and lower cost at scale for technical users."}
]'::jsonb
WHERE slug = 'zapier-ai' AND lang = 'en';

-- 12. MANUS
UPDATE tools SET faq = '[
  {"q":"What is Manus?","a":"Manus is an autonomous AI agent from Monica.im that can independently complete complex tasks — browsing the web, writing and executing code, managing files, and filling forms — without step-by-step instructions."},
  {"q":"How much does Manus cost?","a":"Manus is currently in invite-only beta. A waitlist is available at manus.im. Pricing has not been officially announced for the general release."},
  {"q":"What can Manus do autonomously?","a":"Manus can research topics on the web, write and run code, manage spreadsheets, fill out forms, build mobile and web apps, and complete multi-step tasks end-to-end — all from a single high-level instruction."},
  {"q":"How is Manus different from other AI agents?","a":"Manus operates with a persistent desktop-like environment — it can open browsers, run terminals, and manage files like a human assistant. Most AI agents only generate text; Manus actually executes tasks in a real computing environment."}
]'::jsonb
WHERE slug = 'manus' AND lang = 'en';

-- 13. KIRO
UPDATE tools SET faq = '[
  {"q":"What is Kiro?","a":"Kiro is Amazon''s spec-driven agentic IDE, launched in May 2026 as the replacement for the Amazon Q Developer IDE plugin. Developers write natural-language Specs describing what to build, and Kiro autonomously generates the full implementation."},
  {"q":"How much does Kiro cost?","a":"Kiro is available as freemium. A free tier covers individual developers with limited agent usage. Paid tiers for teams and enterprises are available at kiro.dev."},
  {"q":"What are Kiro Specs?","a":"Specs are natural-language documents that describe requirements and implementation constraints for a feature. Kiro reads the Spec and autonomously generates code, files, and architecture — bridging business requirements and implementation."},
  {"q":"What are Kiro Hooks?","a":"Hooks are event-driven automations that fire on developer actions like file save or git commit. They can automatically run tests, update documentation, or trigger security scans — embedding quality gates directly into the dev workflow."}
]'::jsonb
WHERE slug = 'kiro' AND lang = 'en';
