-- Verdict+FAQ data for 21 new compare pages
-- Run in Supabase SQL editor

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'tickeron-vs-tradingview', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'tickeron' AND lang='en' LIMIT 1), 'Tickeron'),
  COALESCE((SELECT name FROM tools WHERE slug = 'tradingview' AND lang='en' LIMIT 1), 'TradingView'),
  'tickeron',
  'tradingview',
  COALESCE((SELECT url FROM tools WHERE slug = 'tickeron' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'tradingview' AND lang='en' LIMIT 1), ''),
  $d0ca$["✅ You want AI-generated trading signals, pattern recognition alerts, and trend predictions", "✅ You trade based on AI recommendations rather than doing manual technical analysis", "✅ You want AI to screen thousands of stocks and alert you to setups automatically", "✅ You prefer a simpler interface where AI does the analysis work for you"]$d0ca$::JSONB,
  $d0cb$["✅ You do your own technical analysis with the world's best charting platform", "✅ You trade actively and need real-time price data, custom indicators, and alerts", "✅ You want access to the largest trading community for shared ideas and strategies", "✅ You build and backtest custom indicators using Pine Script"]$d0cb$::JSONB,
  $d0faq$[{"q": "What is Tickeron?", "a": "Tickeron is an AI trading platform that uses machine learning to generate trading signals, recognize chart patterns, and predict stock movements. It provides AI-generated buy/sell signals for stocks, ETFs, forex, and crypto without requiring manual technical analysis."}, {"q": "Is Tickeron accurate?", "a": "Tickeron's AI signals have mixed reviews. Like all trading signal services, past performance doesn't guarantee future results. Users report useful pattern recognition, but the accuracy varies by market conditions. Always use risk management regardless of signal source."}, {"q": "Is TradingView free?", "a": "TradingView has a generous free plan with delayed data and up to 3 indicators per chart. Essential is $14.95/month, Plus is $29.95/month, and Premium is $59.95/month for real-time data and more features."}, {"q": "Can I use Tickeron and TradingView together?", "a": "Yes. Many traders use TradingView for charting and manual analysis, and separately monitor Tickeron signals. TradingView does not integrate directly with Tickeron, so you'd manage them in separate windows."}]$d0faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'uptrends-ai-vs-koyfin', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'uptrends-ai' AND lang='en' LIMIT 1), 'Uptrends.ai'),
  COALESCE((SELECT name FROM tools WHERE slug = 'koyfin' AND lang='en' LIMIT 1), 'Koyfin'),
  'uptrends-ai',
  'koyfin',
  COALESCE((SELECT url FROM tools WHERE slug = 'uptrends-ai' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'koyfin' AND lang='en' LIMIT 1), ''),
  $d1ca$["✅ You want AI to identify momentum trends and market signals across stocks automatically", "✅ You're a retail investor who wants simplified AI-driven stock screening", "✅ You want trend alerts sent to you without manually scanning the market", "✅ You prefer an AI-first approach where the tool surfaces opportunities proactively"]$d1ca$::JSONB,
  $d1cb$["✅ You want a comprehensive financial data platform with full fundamental metrics", "✅ You research stocks deeply with income statements, balance sheets, and peer comparisons", "✅ You need a Bloomberg-alternative terminal with charts, earnings data, and news", "✅ You want AI earnings call summaries alongside quantitative financial data"]$d1cb$::JSONB,
  $d1faq$[{"q": "What is Uptrends.ai?", "a": "Uptrends.ai is an AI-powered stock market analysis tool focused on identifying price momentum and trend signals. It uses machine learning to screen thousands of stocks and alert investors to emerging trends before they become obvious to the broader market."}, {"q": "What is Koyfin?", "a": "Koyfin is a comprehensive financial data and analytics platform — an affordable alternative to Bloomberg Terminal. It provides fundamental data, financial charts, earnings estimates, economic indicators, and portfolio tracking for individual investors and professionals."}, {"q": "Is Koyfin free?", "a": "Koyfin has a free plan with limited features. Plus is $19/month and Pro is $59/month. It's considerably cheaper than Bloomberg ($24,000/year) while covering most individual investor research needs."}, {"q": "Which is better for long-term investors?", "a": "Koyfin is better for long-term fundamental investors who need deep financial data and company metrics. Uptrends.ai is better for momentum-oriented investors who want AI to identify shorter-term trend opportunities. Long-term value investors typically get more from Koyfin."}]$d1faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'amazon-q-developer-vs-github-copilot', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'amazon-q-developer' AND lang='en' LIMIT 1), 'Amazon Q Developer'),
  COALESCE((SELECT name FROM tools WHERE slug = 'github-copilot' AND lang='en' LIMIT 1), 'GitHub Copilot'),
  'amazon-q-developer',
  'github-copilot',
  COALESCE((SELECT url FROM tools WHERE slug = 'amazon-q-developer' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'github-copilot' AND lang='en' LIMIT 1), ''),
  $d2ca$["✅ You build on AWS — Q Developer has deep knowledge of AWS services, CDK, and CloudFormation", "✅ You want AI assistance for cloud infrastructure, Lambda functions, and IaC code", "✅ You use AWS IDE plugins and want inline coding assistance native to the AWS ecosystem", "✅ You need security vulnerability scanning and code remediation built into your coding workflow"]$d2ca$::JSONB,
  $d2cb$["✅ You work across multiple clouds or have no AWS dependency", "✅ You use VS Code, JetBrains, or Visual Studio and want the most widely supported AI coding tool", "✅ Your team is on GitHub and needs AI integrated into PRs, code review, and issues", "✅ You need enterprise features across the full development lifecycle beyond just code completion"]$d2cb$::JSONB,
  $d2faq$[{"q": "What is Amazon Q Developer?", "a": "Amazon Q Developer is AWS's AI coding assistant, available as an IDE plugin and in the AWS console. It provides inline code suggestions, answers questions about AWS services, helps write CloudFormation and CDK infrastructure code, scans for security vulnerabilities, and can refactor legacy Java applications."}, {"q": "Is Amazon Q Developer free?", "a": "Amazon Q Developer has a free tier with 50 AI code suggestions per month and limited chat interactions. The Pro tier is $19/user/month for unlimited suggestions, advanced security scanning, and more. Available in VS Code, JetBrains, and the AWS console."}, {"q": "Is Amazon Q better than GitHub Copilot for AWS?", "a": "For AWS-specific development — writing Lambda functions, CDK stacks, CloudFormation templates, and understanding AWS service interactions — Amazon Q Developer has deeper knowledge. For general coding across any language or framework, GitHub Copilot is more versatile."}, {"q": "Does GitHub Copilot support AWS?", "a": "GitHub Copilot can help write AWS code but doesn't have specialized AWS service knowledge. It writes general Python, TypeScript, or Java code that happens to use AWS SDKs. Amazon Q Developer has trained specifically on AWS documentation and internal knowledge."}]$d2faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'continue-dev-vs-github-copilot', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'continue-dev' AND lang='en' LIMIT 1), 'Continue.dev'),
  COALESCE((SELECT name FROM tools WHERE slug = 'github-copilot' AND lang='en' LIMIT 1), 'GitHub Copilot'),
  'continue-dev',
  'github-copilot',
  COALESCE((SELECT url FROM tools WHERE slug = 'continue-dev' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'github-copilot' AND lang='en' LIMIT 1), ''),
  $d3ca$["✅ You want to use any LLM — Claude, GPT-4, local Ollama models — without being locked into one provider", "✅ You prioritize privacy and want to run local models so code never leaves your machine", "✅ You want open-source AI coding assistance you can self-host and fully control", "✅ You build custom AI workflows and want an extensible, hackable coding assistant"]$d3ca$::JSONB,
  $d3cb$["✅ You want the most reliable, battle-tested AI coding assistant with the largest ecosystem", "✅ You use VS Code, JetBrains, or Visual Studio and want seamless IDE integration", "✅ Your team is on GitHub and wants AI integrated into PRs, issues, and code review", "✅ You need enterprise features: SSO, audit logs, IP indemnity, and policy controls"]$d3cb$::JSONB,
  $d3faq$[{"q": "What is Continue.dev?", "a": "Continue.dev is an open-source AI coding assistant that works as an IDE extension for VS Code and JetBrains. It lets you connect to any LLM — Claude, GPT-4, local Ollama models, or others — giving you AI code suggestions and chat without being locked into a single provider."}, {"q": "Is Continue.dev free?", "a": "Continue.dev is free and open-source. You pay only for the AI model API you connect to it — Claude or GPT-4 API costs, or free if you use local models via Ollama. There's no Continue.dev subscription fee."}, {"q": "Can Continue.dev use local models?", "a": "Yes. This is one of Continue.dev's key features. Connect it to Ollama or LM Studio running local models (Llama, Mistral, Qwen, etc.) for completely private, offline coding assistance with no API costs."}, {"q": "Is Continue.dev better than Cursor?", "a": "Continue.dev and Cursor serve different needs. Continue.dev is a VS Code extension focused on LLM flexibility and privacy. Cursor is a full VS Code fork with deeper AI integration and more polished UX. Continue.dev wins for privacy and model choice; Cursor wins for overall AI coding experience."}]$d3faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'opencode-vs-claude-code', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'opencode' AND lang='en' LIMIT 1), 'OpenCode'),
  COALESCE((SELECT name FROM tools WHERE slug = 'claude-code' AND lang='en' LIMIT 1), 'Claude Code'),
  'opencode',
  'claude-code',
  COALESCE((SELECT url FROM tools WHERE slug = 'opencode' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'claude-code' AND lang='en' LIMIT 1), ''),
  $d4ca$["✅ You want a free, open-source terminal coding agent with no subscription required", "✅ You want to connect to any AI provider — Anthropic, OpenAI, Gemini, local models — via one CLI", "✅ You prefer open-source tools you can audit, fork, and contribute to", "✅ You want a lightweight terminal agent without the Claude subscription cost"]$d4ca$::JSONB,
  $d4cb$["✅ You want the most capable autonomous coding agent backed by Anthropic's deepest Claude integration", "✅ You need an agent that can understand and operate on your entire codebase context", "✅ You want Anthropic's official, supported product with continuous improvements", "✅ You do enterprise or professional coding work where reliability and support matter"]$d4cb$::JSONB,
  $d4faq$[{"q": "What is OpenCode?", "a": "OpenCode is an open-source, terminal-based AI coding agent. It works similarly to Claude Code or Aider but supports multiple AI providers including Anthropic, OpenAI, Google, and local models via Ollama. It's free to use — you only pay for the API tokens consumed."}, {"q": "Is OpenCode free?", "a": "OpenCode itself is free and open-source. You pay for whatever AI model API you connect it to. Using Anthropic Claude costs per token; using local models via Ollama is free with no API costs."}, {"q": "What is the difference between OpenCode and Aider?", "a": "Both are open-source terminal coding agents with multi-model support. Aider has a longer track record, stronger git integration, and larger community. OpenCode is newer with a more modern TUI (terminal user interface). They're similar in capability — try both to see which workflow fits better."}, {"q": "Does Claude Code require a subscription?", "a": "Claude Code requires a Claude Pro ($20/month) or higher subscription to use, or API access with pay-per-use billing. OpenCode is free to use with the same Anthropic API but requires API key setup and you pay per token rather than a flat subscription."}]$d4faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'zed-vs-cursor', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'zed' AND lang='en' LIMIT 1), 'Zed'),
  COALESCE((SELECT name FROM tools WHERE slug = 'cursor' AND lang='en' LIMIT 1), 'Cursor'),
  'zed',
  'cursor',
  COALESCE((SELECT url FROM tools WHERE slug = 'zed' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'cursor' AND lang='en' LIMIT 1), ''),
  $d5ca$["✅ You prioritize raw editor speed — Zed is built in Rust and is significantly faster than Electron-based editors", "✅ You want native real-time multiplayer collaboration baked into the editor", "✅ You're a developer who wants a minimal, focused editor without heavy AI complexity", "✅ You want AI assistance (Zed AI) without switching from a fast, native editor"]$d5ca$::JSONB,
  $d5cb$["✅ You want the most powerful AI coding experience — multi-file context, Composer, deep codebase understanding", "✅ You're already on VS Code and want all its extensions alongside AI assistance", "✅ You do complex architecture work where the AI needs to understand your entire project", "✅ You want the most widely adopted AI IDE with the largest community and support"]$d5cb$::JSONB,
  $d5faq$[{"q": "What is Zed?", "a": "Zed is a high-performance code editor built in Rust by the creators of Atom and Tree-sitter. It's extremely fast due to its native architecture (no Electron), supports real-time multiplayer collaboration, and includes Zed AI for code assistance powered by Anthropic Claude."}, {"q": "Is Zed free?", "a": "Zed is free and open-source. Zed AI features have a free tier with limited AI requests. Pro features and higher AI usage may require a subscription. The editor itself is permanently free."}, {"q": "Is Zed faster than VS Code?", "a": "Yes. Zed is significantly faster than VS Code and Cursor (which are Electron-based) because it's built in Rust with GPU-accelerated rendering. Startup times, file loading, and editing feel noticeably snappier, especially on large codebases."}, {"q": "Does Zed have GitHub Copilot support?", "a": "Zed has its own AI integration (Zed AI) powered by Claude. GitHub Copilot extension support is limited — Zed doesn't have the same rich extension ecosystem as VS Code. If you rely on specific VS Code extensions, Cursor is a safer choice."}]$d5faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'comfyui-vs-stable-diffusion', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'comfyui' AND lang='en' LIMIT 1), 'ComfyUI'),
  COALESCE((SELECT name FROM tools WHERE slug = 'stable-diffusion' AND lang='en' LIMIT 1), 'Stable Diffusion'),
  'comfyui',
  'stable-diffusion',
  COALESCE((SELECT url FROM tools WHERE slug = 'comfyui' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'stable-diffusion' AND lang='en' LIMIT 1), ''),
  $d6ca$["✅ You want a node-based visual workflow builder for complex Stable Diffusion pipelines", "✅ You combine multiple models, ControlNets, LoRAs, and upscalers in visual graph workflows", "✅ You're a technical user who wants maximum control over every step of image generation", "✅ You build automated generation pipelines for game assets, product mockups, or batch content"]$d6ca$::JSONB,
  $d6cb$["✅ You want a simpler web UI (Automatic1111) to generate images without building node graphs", "✅ You're new to local AI image generation and want the most beginner-friendly setup", "✅ You use img2img, inpainting, and basic ControlNet without complex multi-model pipelines", "✅ You want the broadest compatibility with tutorials, models, and community extensions"]$d6cb$::JSONB,
  $d6faq$[{"q": "What is ComfyUI?", "a": "ComfyUI is a node-based GUI for Stable Diffusion image generation. Instead of simple form inputs, you build visual workflows by connecting nodes — model loaders, samplers, ControlNets, upscalers — into custom pipelines. It gives maximum control over every generation parameter."}, {"q": "Is ComfyUI better than Automatic1111?", "a": "ComfyUI is more powerful and faster but has a steeper learning curve. Automatic1111 (A1111) is more beginner-friendly with a familiar form-based interface. Most advanced users prefer ComfyUI for its flexibility and speed. Many use A1111 to learn and then switch to ComfyUI."}, {"q": "Is Stable Diffusion free?", "a": "Yes. Stable Diffusion model weights are free to download and run locally. ComfyUI is also free and open-source. You need a compatible GPU (Nvidia preferred, 8GB+ VRAM recommended) to run them locally."}, {"q": "Do I need ComfyUI to use Stable Diffusion?", "a": "No. Stable Diffusion runs through multiple frontends: Automatic1111, ComfyUI, Fooocus, InvokeAI. ComfyUI is one option — it's the best for complex workflows but not required for basic generation. Fooocus is the simplest option; A1111 is the most documented."}]$d6faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'krea-ai-vs-midjourney', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'krea-ai' AND lang='en' LIMIT 1), 'Krea AI'),
  COALESCE((SELECT name FROM tools WHERE slug = 'midjourney' AND lang='en' LIMIT 1), 'Midjourney'),
  'krea-ai',
  'midjourney',
  COALESCE((SELECT url FROM tools WHERE slug = 'krea-ai' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'midjourney' AND lang='en' LIMIT 1), ''),
  $d7ca$["✅ You want real-time AI image generation — see results as you type, not after a wait", "✅ You want an AI canvas for editing, enhancing, and upscaling existing images", "✅ You need video generation and image-to-video alongside image creation in one platform", "✅ You want live creative feedback where the image updates instantly as you adjust prompts"]$d7ca$::JSONB,
  $d7cb$["✅ You prioritize the highest aesthetic quality — Midjourney produces the best-looking AI art", "✅ You create photography-style images, editorial illustrations, or high-end concept art", "✅ You want the largest AI art community for prompt inspiration and style exploration", "✅ You work in creative fields where visual excellence is the non-negotiable requirement"]$d7cb$::JSONB,
  $d7faq$[{"q": "What is Krea AI?", "a": "Krea AI is an AI creative platform featuring real-time image generation (the image updates as you type), an AI canvas for editing and enhancing images, video generation, and AI training on your own images. Its real-time generation is its main differentiator — no waiting for results."}, {"q": "Is Krea AI free?", "a": "Krea AI has a free plan with limited daily generations. Pro plan is $35/month and Max is $99/month for higher quality, more generations, and faster processing. The free tier allows you to try real-time generation."}, {"q": "Is Krea better than Midjourney?", "a": "They serve different use cases. Krea's real-time generation is unique and great for interactive creative exploration. Midjourney produces higher quality final images for professional work. Krea is better for the ideation and exploration phase; Midjourney is better for the final output."}, {"q": "Can Krea AI generate video?", "a": "Yes. Krea AI has video generation capabilities — text-to-video and image-to-video. Quality is competitive with other mid-tier tools but generally below Runway or Kling for professional video production."}]$d7faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'nano-banana-vs-leonardo-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'nano-banana' AND lang='en' LIMIT 1), 'Nano Banana'),
  COALESCE((SELECT name FROM tools WHERE slug = 'leonardo-ai' AND lang='en' LIMIT 1), 'Leonardo.ai'),
  'nano-banana',
  'leonardo-ai',
  COALESCE((SELECT url FROM tools WHERE slug = 'nano-banana' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'leonardo-ai' AND lang='en' LIMIT 1), ''),
  $d8ca$["✅ You create AI influencer content and need consistent character generation across many images", "✅ You want AI image editing with precise control over specific characters", "✅ You're a content creator needing a consistent virtual persona for social media", "✅ You want specialized tools for AI character consistency rather than general image generation"]$d8ca$::JSONB,
  $d8cb$["✅ You create game assets, concept art, or design assets needing style consistency across a project", "✅ You want to fine-tune models on your own image sets for consistent style", "✅ You need a comprehensive platform with canvas editor, motion generation, and community models", "✅ You want a generous free tier — 150 daily tokens — for regular image generation"]$d8cb$::JSONB,
  $d8faq$[{"q": "What is Nano Banana?", "a": "Nano Banana is an AI image generation platform specializing in character consistency and AI influencer creation. It's designed for creators who need to generate the same person or character across many different scenes, outfits, and settings while maintaining a consistent look."}, {"q": "What is Leonardo.ai best for?", "a": "Leonardo.ai is popular with game developers, concept artists, and designers who need consistent visual styles across multiple images. Its fine-tuning capabilities let you train on your own images. It's also widely used for general AI image generation with 150 free daily tokens."}, {"q": "Can Leonardo.ai maintain character consistency?", "a": "Leonardo.ai has character reference features and IP Adapter controls for maintaining consistency across images. It's not as specialized for AI influencer creation as Nano Banana, but works well for consistent game characters and concept art series."}, {"q": "Is Nano Banana free?", "a": "Nano Banana offers a free plan with limited generations. Paid plans provide more credits and higher quality generations. It's a specialized tool — the free tier lets you test whether the character consistency meets your needs before subscribing."}]$d8faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'chatgpt-images-vs-adobe-firefly', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'chatgpt-images' AND lang='en' LIMIT 1), 'ChatGPT Images 2.0'),
  COALESCE((SELECT name FROM tools WHERE slug = 'adobe-firefly' AND lang='en' LIMIT 1), 'Adobe Firefly'),
  'chatgpt-images',
  'adobe-firefly',
  COALESCE((SELECT url FROM tools WHERE slug = 'chatgpt-images' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'adobe-firefly' AND lang='en' LIMIT 1), ''),
  $d9ca$["✅ You want the best prompt-following AI image generator — ChatGPT Images renders complex scenes accurately", "✅ You generate images as part of a ChatGPT workflow — no separate tool switching needed", "✅ You want photorealistic people, hands, and complex compositions from detailed text prompts", "✅ You're already a ChatGPT Plus subscriber and get image generation included"]$d9ca$::JSONB,
  $d9cb$["✅ You need commercially safe images with zero copyright risk for professional or commercial use", "✅ You use Adobe Creative Cloud and want AI generation inside Photoshop and Illustrator", "✅ You create product visuals, brand assets, and marketing materials for clients", "✅ You want generative fill, text effects, and vector generation in a professional design workflow"]$d9cb$::JSONB,
  $d9faq$[{"q": "What is ChatGPT Images 2.0?", "a": "ChatGPT Images 2.0 is OpenAI's integrated image generation capability in ChatGPT, powered by an improved DALL-E model. It generates highly accurate images from complex text descriptions and is notable for correctly rendering text, hands, and detailed scenes that earlier AI generators struggled with."}, {"q": "Is ChatGPT Images better than Midjourney?", "a": "ChatGPT Images 2.0 leads on prompt accuracy and text rendering within images. Midjourney leads on aesthetic quality and artistic style. For photorealistic scenes with accurate details, ChatGPT Images is competitive. For artistic and creative imagery, Midjourney still leads most comparisons."}, {"q": "Is Adobe Firefly commercially safe?", "a": "Yes. Adobe Firefly is trained exclusively on Adobe Stock content, openly licensed works, and public domain material. Output is commercially safe for professional and client use — a major advantage over most AI image generators for commercial work."}, {"q": "Is ChatGPT Images free?", "a": "ChatGPT Images 2.0 is available to ChatGPT Plus ($20/month) and higher subscribers with usage limits. Free ChatGPT users have very limited access. Adobe Firefly has a free tier with limited credits and is included in Adobe Creative Cloud subscriptions."}]$d9faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'claude-design-vs-figma-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'claude-design' AND lang='en' LIMIT 1), 'Claude Design'),
  COALESCE((SELECT name FROM tools WHERE slug = 'figma-ai' AND lang='en' LIMIT 1), 'Figma AI'),
  'claude-design',
  'figma-ai',
  COALESCE((SELECT url FROM tools WHERE slug = 'claude-design' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'figma-ai' AND lang='en' LIMIT 1), ''),
  $d10ca$["✅ You want to generate visual designs, presentations, and prototypes through natural conversation", "✅ You're not a trained designer and want AI to create visual output from written descriptions", "✅ You want Claude's reasoning capabilities applied to visual design and layout generation", "✅ You create presentations and mockups as part of a broader Claude-powered workflow"]$d10ca$::JSONB,
  $d10cb$["✅ You're a professional UI/UX designer who works in Figma and wants AI within your existing workflow", "✅ You build product interfaces and need AI-generated components that fit your design system", "✅ Your team collaborates in Figma for developer handoff — AI features are built into that process", "✅ You need precise design control with variables, auto-layout, and interactive prototyping"]$d10cb$::JSONB,
  $d10faq$[{"q": "What is Claude Design?", "a": "Claude Design is Anthropic's AI tool for generating visual content — presentations, prototypes, and design mockups — through conversation. It extends Claude's capabilities into visual output, allowing users to describe what they want and receive designed visual artifacts without traditional design software."}, {"q": "Is Claude Design free?", "a": "Claude Design is available through Claude Pro ($20/month) and higher plans. Access and usage limits depend on your Claude subscription tier."}, {"q": "Can Claude replace Figma?", "a": "Claude Design and Figma serve different users. Claude Design is for non-designers who want to create visual output through conversation. Figma is a professional design tool for UI/UX designers who need precision, components, and developer handoff. They're not direct competitors."}, {"q": "What can Figma AI generate?", "a": "Figma AI can generate first drafts of screens and components from text prompts, rename layers automatically, create design variations, and generate prototypes. It's designed for professional designers already working in Figma, not as a standalone design generator."}]$d10faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'google-stitch-vs-figma-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'google-stitch' AND lang='en' LIMIT 1), 'Google Stitch'),
  COALESCE((SELECT name FROM tools WHERE slug = 'figma-ai' AND lang='en' LIMIT 1), 'Figma AI'),
  'google-stitch',
  'figma-ai',
  COALESCE((SELECT url FROM tools WHERE slug = 'google-stitch' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'figma-ai' AND lang='en' LIMIT 1), ''),
  $d11ca$["✅ You want a completely free AI UI design tool — Google Stitch has no usage fees", "✅ You prototype app interfaces quickly from text prompts without professional design experience", "✅ You want an infinite canvas for exploring many design variations simultaneously", "✅ You're in the Google ecosystem and want AI design that integrates with Google tools"]$d11ca$::JSONB,
  $d11cb$["✅ You're a professional designer who needs production-ready UI with design systems", "✅ Your team uses Figma for developer handoff — AI features integrate into that workflow", "✅ You need precise component control, variables, and auto-layout for complex products", "✅ You create interactive prototypes that developers can inspect and implement directly"]$d11cb$::JSONB,
  $d11faq$[{"q": "What is Google Stitch?", "a": "Google Stitch is Google's AI UI design tool that generates app interfaces and prototypes from text prompts. It features an infinite canvas for design exploration and is available free. Stitch is designed to make UI prototyping accessible to developers and non-designers without Figma experience."}, {"q": "Is Google Stitch free?", "a": "Yes. Google Stitch is currently free to use. It's available through Google Labs at labs.google. Being a Google Labs product, it may change pricing or availability as it develops."}, {"q": "Can Google Stitch export to Figma?", "a": "Google Stitch can export designs for use in other tools. Full Figma import compatibility may vary — check current export options in Stitch, as Google Labs products evolve quickly. The primary workflow is designing in Stitch and exporting assets or code."}, {"q": "Is Google Stitch better than Uizard?", "a": "Both are designed for non-designers to create UI prototypes quickly. Google Stitch has the advantage of being free and Google-backed. Uizard is more established with more templates and a larger user community. Stitch's infinite canvas is unique for exploring many design variations simultaneously."}]$d11faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'recraft-vs-canva-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'recraft' AND lang='en' LIMIT 1), 'Recraft'),
  COALESCE((SELECT name FROM tools WHERE slug = 'canva-ai' AND lang='en' LIMIT 1), 'Canva AI'),
  'recraft',
  'canva-ai',
  COALESCE((SELECT url FROM tools WHERE slug = 'recraft' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'canva-ai' AND lang='en' LIMIT 1), ''),
  $d12ca$["✅ You need vector graphics and SVG files that scale to any size without quality loss", "✅ You create brand assets, icons, logos, and illustration sets for professional design work", "✅ You want style consistency across multiple generated images using style references", "✅ You need print-ready vector files — not raster images — for professional design output"]$d12ca$::JSONB,
  $d12cb$["✅ You create marketing content — social posts, presentations, ads — with AI writing and design", "✅ You're a non-designer who needs fast, beautiful visuals for everyday content creation", "✅ You want 100+ AI tools: Magic Media, background removal, Magic Write, video editing", "✅ You collaborate with a team on branded templates and shared design assets"]$d12cb$::JSONB,
  $d12faq$[{"q": "What is the difference between Recraft and Canva?", "a": "Recraft specializes in vector graphics and SVG generation for professional brand design — logos, icons, illustrations. Canva is a broad content creation platform for marketing materials, social posts, and presentations. Recraft is for designers needing scalable vector files; Canva is for marketers needing quick visual content."}, {"q": "Can Recraft generate SVG files?", "a": "Yes. SVG (scalable vector graphics) generation is Recraft's primary differentiator. Generated SVGs can be used at any size without quality loss and edited in vector tools like Illustrator or Inkscape. Most AI image generators only produce raster (pixel-based) images."}, {"q": "Is Recraft free?", "a": "Recraft has a free plan with 50 generation credits. Pro is $12/month for 1,000 credits. It's affordable for professional designers who need vector-quality AI output."}, {"q": "Is Canva better than Recraft for logos?", "a": "Recraft is better for AI-generated vector logos that can be used at any size professionally. Canva has logo templates and some AI logo generation, but output is typically raster-based. For serious logo work, Recraft's vector output is more suitable for professional use."}]$d12faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'remove-bg-vs-canva-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'remove-bg' AND lang='en' LIMIT 1), 'Remove.bg'),
  COALESCE((SELECT name FROM tools WHERE slug = 'canva-ai' AND lang='en' LIMIT 1), 'Canva AI'),
  'remove-bg',
  'canva-ai',
  COALESCE((SELECT url FROM tools WHERE slug = 'remove-bg' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'canva-ai' AND lang='en' LIMIT 1), ''),
  $d13ca$["✅ You need the fastest, most accurate AI background removal — Remove.bg is the specialist", "✅ You process high volumes of images via API for e-commerce, product photography, or automation", "✅ You want batch background removal with the highest accuracy, especially for complex hair and edges", "✅ You need a dedicated API for integrating background removal into your own product or workflow"]$d13ca$::JSONB,
  $d13cb$["✅ You need background removal as one of many design tasks in an all-in-one platform", "✅ You're already designing in Canva and want background removal built into that workflow", "✅ You create social media content, presentations, and marketing materials alongside background edits", "✅ You want a free plan that includes background removal without paying for a specialist tool"]$d13cb$::JSONB,
  $d13faq$[{"q": "What is Remove.bg?", "a": "Remove.bg is an AI-powered background removal tool that automatically detects and removes image backgrounds in seconds. It's the leading specialist tool for this task, known for accurate edge detection especially around hair and complex objects. It also offers a developer API for bulk processing."}, {"q": "Is Remove.bg free?", "a": "Remove.bg allows a limited number of free background removals per month at reduced resolution. The full-resolution version requires credits or a subscription. Subscriptions start at around $9/month for regular use. The API is priced per image."}, {"q": "Does Canva remove backgrounds for free?", "a": "Yes. Canva's background remover is included in Canva Pro ($15/month) and Canva for Teams. It's not available on the free plan. For users already paying for Canva Pro, this makes a separate Remove.bg subscription less necessary."}, {"q": "Which has better background removal quality?", "a": "Remove.bg is generally considered more accurate, especially for complex subjects like hair, fur, and transparent objects. Canva's background remover is convenient but may require manual touch-ups on complex images. For professional product photography, Remove.bg is the higher-quality choice."}]$d13faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'seedance-vs-runway', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'seedance-2-0' AND lang='en' LIMIT 1), 'Seedance 2.0'),
  COALESCE((SELECT name FROM tools WHERE slug = 'runway' AND lang='en' LIMIT 1), 'Runway'),
  'seedance-2-0',
  'runway',
  COALESCE((SELECT url FROM tools WHERE slug = 'seedance-2-0' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'runway' AND lang='en' LIMIT 1), ''),
  $d14ca$["✅ You want ByteDance's latest video AI model known for cinematic quality and motion realism", "✅ You access video generation through CapCut or developer APIs (fal.ai) at competitive pricing", "✅ You need high-quality video generation integrated into existing ByteDance/TikTok creative workflows", "✅ You want a strong Runway alternative at lower cost with comparable output quality"]$d14ca$::JSONB,
  $d14cb$["✅ You're a professional creator who needs a complete video production platform, not just a generator", "✅ You want access to multiple models (Gen-4.5, Veo 3.1, Kling, Seedance) in one subscription", "✅ You need advanced editing tools: inpainting, motion brush, Act-One, multi-shot consistency", "✅ You produce commercial content where production quality and tool reliability are non-negotiable"]$d14cb$::JSONB,
  $d14faq$[{"q": "What is Seedance 2.0?", "a": "Seedance 2.0 is ByteDance's AI video generation model, known for high-quality video output with realistic motion. It's the model underlying some CapCut AI video features and is available to developers via APIs like fal.ai. ByteDance developed it as a direct competitor to Runway and Kling."}, {"q": "Is Seedance better than Runway?", "a": "Seedance 2.0 produces video quality competitive with Runway Gen-4.5 at potentially lower API costs. However, Runway offers a complete production platform with multiple models, editing tools, and professional workflows that Seedance alone doesn't match. For raw generation quality, they're comparable; for production use, Runway has more tools."}, {"q": "How do I access Seedance 2.0?", "a": "Seedance 2.0 is primarily accessible through developer APIs (fal.ai, Replicate) or indirectly through CapCut's AI video features. There's no dedicated Seedance consumer product — it's an underlying model accessed through other platforms."}, {"q": "Is Runway the best AI video tool?", "a": "Runway is considered the leading professional AI video platform with Gen-4.5 ranking highly on quality benchmarks. Its multi-model subscription (including Veo 3.1, Kling, Seedance) makes it the most comprehensive option. For pure generation quality comparisons, Veo 3 and Kling 3.0 are competitive alternatives."}]$d14faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'whisper-vs-otter-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'whisper' AND lang='en' LIMIT 1), 'Whisper'),
  COALESCE((SELECT name FROM tools WHERE slug = 'otter-ai' AND lang='en' LIMIT 1), 'Otter.ai'),
  'whisper',
  'otter-ai',
  COALESCE((SELECT url FROM tools WHERE slug = 'whisper' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'otter-ai' AND lang='en' LIMIT 1), ''),
  $d15ca$["✅ You're a developer who wants free, open-source, local speech-to-text with no API costs", "✅ You need offline transcription — Whisper runs completely locally without internet", "✅ You process sensitive audio that can't be sent to cloud services for privacy reasons", "✅ You want to integrate accurate transcription into your own applications via API"]$d15ca$::JSONB,
  $d15cb$["✅ You want a consumer-ready meeting transcription app with real-time captions", "✅ You use Zoom, Google Meet, or Teams and want AI-generated meeting summaries", "✅ You want searchable notes, highlights, and follow-up action items from meetings", "✅ You need a ready-to-use product that works without any setup or coding"]$d15cb$::JSONB,
  $d15faq$[{"q": "What is OpenAI Whisper?", "a": "Whisper is OpenAI's open-source speech recognition model. Released in 2022, it transcribes audio in 100+ languages with high accuracy. It's a developer tool — not a consumer app — that runs locally or via API. Many transcription apps are built on top of Whisper."}, {"q": "Is Whisper free?", "a": "Whisper is completely free and open-source. You can download and run it locally at no cost. OpenAI also offers Whisper via its API at $0.006 per minute. Consumer apps built on Whisper (like many transcription tools) typically charge their own subscription fees."}, {"q": "Is Otter.ai built on Whisper?", "a": "Otter.ai uses its own proprietary speech recognition technology, not Whisper. Many newer transcription tools use Whisper under the hood, but Otter.ai has built its own ASR (automatic speech recognition) system optimized for meetings and conversations."}, {"q": "Which is more accurate — Whisper or Otter.ai?", "a": "Whisper (especially the large model) is among the most accurate general-purpose speech recognition systems available. Otter.ai is optimized for meeting conversations and performs well for that specific use case. For general transcription of diverse audio, Whisper's accuracy is excellent. For live meeting intelligence with integrations, Otter.ai has practical advantages."}]$d15faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'adcreative-ai-vs-canva-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'adcreative-ai' AND lang='en' LIMIT 1), 'AdCreative.ai'),
  COALESCE((SELECT name FROM tools WHERE slug = 'canva-ai' AND lang='en' LIMIT 1), 'Canva AI'),
  'adcreative-ai',
  'canva-ai',
  COALESCE((SELECT url FROM tools WHERE slug = 'adcreative-ai' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'canva-ai' AND lang='en' LIMIT 1), ''),
  $d16ca$["✅ You run paid advertising and need AI to generate high-converting ad creatives at scale", "✅ You want performance-optimized ads — AdCreative.ai is trained on advertising data to predict CTR", "✅ You need batch generation of many ad variants for A/B testing across platforms simultaneously", "✅ You want AI that scores ads by predicted performance before you spend money running them"]$d16ca$::JSONB,
  $d16cb$["✅ You create general marketing content — social posts, presentations, email graphics — not just ads", "✅ You're a designer or content creator who needs a versatile platform for all visual content", "✅ You want 100+ AI tools: Magic Media, Magic Write, background removal, video editing", "✅ You collaborate with a team on branded templates across many content formats"]$d16cb$::JSONB,
  $d16faq$[{"q": "What is AdCreative.ai?", "a": "AdCreative.ai is an AI platform specifically built for generating advertising creatives. It generates ad images, headlines, and copy optimized for conversion across Facebook, Google, Instagram, and other platforms. It scores each creative by predicted performance to help you choose the best variants."}, {"q": "Is AdCreative.ai worth it?", "a": "For businesses running significant paid advertising budgets, AdCreative.ai can save significant design time and improve ad performance through AI-optimized creative generation. For small budgets or businesses doing occasional ads, Canva's ad templates may be sufficient at lower cost."}, {"q": "Is Canva good for ads?", "a": "Canva is good for designing ad visuals using templates and AI tools. However, Canva doesn't optimize for ad performance or predict click-through rates. AdCreative.ai is purpose-built for advertising with performance prediction. For quick ad design, Canva works; for performance optimization, AdCreative.ai is more specialized."}, {"q": "How much does AdCreative.ai cost?", "a": "AdCreative.ai plans start at $29/month (Starter, 10 credits) up to $149/month (Professional, 100 credits) and enterprise. Credits are used to generate ad creative sets. The pricing reflects its positioning as a business tool for advertisers, not individual creators."}]$d16faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'akkio-vs-julius-ai', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'akkio' AND lang='en' LIMIT 1), 'Akkio'),
  COALESCE((SELECT name FROM tools WHERE slug = 'julius-ai' AND lang='en' LIMIT 1), 'Julius AI'),
  'akkio',
  'julius-ai',
  COALESCE((SELECT url FROM tools WHERE slug = 'akkio' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'julius-ai' AND lang='en' LIMIT 1), ''),
  $d17ca$["✅ You're a marketing agency wanting to build predictive models for client data without data science expertise", "✅ You want automated forecasting, churn prediction, and lead scoring from CSV data", "✅ You need to deliver data science capabilities to clients without hiring data scientists", "✅ You want to build and deploy AI models into workflows and client dashboards"]$d17ca$::JSONB,
  $d17cb$["✅ You want to ask questions about your data in plain language and get instant answers", "✅ You need on-demand analysis — upload a CSV and chat with it to find insights", "✅ You're an analyst or business user who wants AI to do the analysis and explain it clearly", "✅ You need statistical analysis, chart generation, and data transformation through conversation"]$d17cb$::JSONB,
  $d17faq$[{"q": "What is Akkio?", "a": "Akkio is a no-code AI analytics platform designed for marketing agencies and business teams. It can build predictive models — churn prediction, lead scoring, forecasting — from CSV or connected data sources without requiring data science knowledge. It's designed to deliver AI insights to clients."}, {"q": "What is the difference between Akkio and Julius AI?", "a": "Akkio focuses on building reusable predictive models and deploying them for ongoing business use. Julius AI focuses on one-off conversational data analysis — ask questions, get answers, generate charts. Akkio is for ongoing ML models; Julius is for interactive data exploration."}, {"q": "Is Akkio free?", "a": "Akkio has a free trial. Paid plans start at around $49/month. It's priced for agencies and businesses that want to offer AI analytics to multiple clients."}, {"q": "Is Julius AI better than ChatGPT for data analysis?", "a": "Julius AI is purpose-built for data analysis with optimized data upload, persistent file context, and data-specific chart generation. ChatGPT's code interpreter does similar things but is more general-purpose. Julius has a cleaner data-focused UX for regular data analysis tasks."}]$d17faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'autogpt-vs-manus', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'autogpt' AND lang='en' LIMIT 1), 'AutoGPT'),
  COALESCE((SELECT name FROM tools WHERE slug = 'manus' AND lang='en' LIMIT 1), 'Manus'),
  'autogpt',
  'manus',
  COALESCE((SELECT url FROM tools WHERE slug = 'autogpt' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'manus' AND lang='en' LIMIT 1), ''),
  $d18ca$["✅ You want open-source autonomous AI you can self-host, modify, and fully control", "✅ You're a developer experimenting with autonomous agent architectures and want the original", "✅ You want to customize the agent workflow, memory systems, and tool integrations yourself", "✅ You're comfortable with technical setup and want maximum transparency into how the agent works"]$d18ca$::JSONB,
  $d18cb$["✅ You want a polished autonomous AI agent that completes complex tasks with minimal setup", "✅ You need an agent that browsing the web, writes code, manages files, and executes plans independently", "✅ You want results, not engineering — Manus handles the complexity so you can focus on the task", "✅ You're evaluating autonomous AI for real business tasks without wanting to build infrastructure"]$d18cb$::JSONB,
  $d18faq$[{"q": "What is AutoGPT?", "a": "AutoGPT is one of the first open-source autonomous AI agent frameworks, released in 2023. It connects GPT-4 to tools (web search, file management, code execution) and runs in a loop to complete multi-step tasks. It's a framework for developers, not a polished consumer product."}, {"q": "Is AutoGPT still relevant in 2026?", "a": "AutoGPT pioneered the autonomous agent concept but has been surpassed by more capable agents like Manus, Devin, and Claude Code for practical use. It remains important as an open-source reference and for developers studying autonomous agent architectures."}, {"q": "What can Manus do that AutoGPT can't?", "a": "Manus is more capable at real-world task completion — it has better web browsing, more reliable tool use, and fewer failures on complex tasks. AutoGPT was groundbreaking but often struggled to complete tasks reliably. Manus represents the current generation of more capable autonomous agents."}, {"q": "Is AutoGPT free?", "a": "AutoGPT is free and open-source. You pay for the API tokens used by the AI model (GPT-4 or other). Running it requires technical knowledge — setting up Python, API keys, and dependencies."}]$d18faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'coursera-coach-vs-khanmigo', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'coursera-coach' AND lang='en' LIMIT 1), 'Coursera Coach'),
  COALESCE((SELECT name FROM tools WHERE slug = 'khanmigo' AND lang='en' LIMIT 1), 'Khanmigo'),
  'coursera-coach',
  'khanmigo',
  COALESCE((SELECT url FROM tools WHERE slug = 'coursera-coach' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'khanmigo' AND lang='en' LIMIT 1), ''),
  $d19ca$["✅ You're taking Coursera courses and want AI assistance within that course content", "✅ You're pursuing professional certificates (Google, Meta, IBM) and want course-specific help", "✅ You're an adult learner focused on career development and professional skill building", "✅ You want AI that understands the specific Coursera curriculum you're working through"]$d19ca$::JSONB,
  $d19cb$["✅ You're a K-12 student needing help with academic subjects across the curriculum", "✅ You want a Socratic tutor that guides you to answers rather than giving them directly", "✅ You're a teacher wanting AI tools for lesson planning and student support", "✅ You use Khan Academy's free educational content and want AI integrated into it"]$d19cb$::JSONB,
  $d19faq$[{"q": "What is Coursera Coach?", "a": "Coursera Coach is Coursera's AI assistant that helps learners with course content, answers questions about material being studied, and provides guidance through Coursera's professional certificates and degree programs. It's built into the Coursera platform and understands the specific courses you're enrolled in."}, {"q": "Is Coursera Coach free?", "a": "Coursera Coach is included with Coursera Plus ($59/month or $399/year) and Coursera professional certificate programs. It's not available on the free audit tier of most courses."}, {"q": "What subjects does Khanmigo cover?", "a": "Khanmigo covers all major academic subjects available on Khan Academy: math (from basic arithmetic to calculus), science, computing, history, economics, and test prep (SAT, AP). It's comprehensive for K-12 and early college-level subjects."}, {"q": "Which is better for professional development — Coursera Coach or Khanmigo?", "a": "Coursera Coach is better for professional development — it's built around industry-recognized certificates from Google, Meta, IBM, and others. Khanmigo is better for academic K-12 subjects. For adults learning career skills, Coursera Coach is the more relevant tool."}]$d19faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url, choose_a, choose_b, faq)
SELECT
  'socratic-vs-khanmigo', 'en',
  COALESCE((SELECT name FROM tools WHERE slug = 'socratic-by-google' AND lang='en' LIMIT 1), 'Socratic by Google'),
  COALESCE((SELECT name FROM tools WHERE slug = 'khanmigo' AND lang='en' LIMIT 1), 'Khanmigo'),
  'socratic-by-google',
  'khanmigo',
  COALESCE((SELECT url FROM tools WHERE slug = 'socratic-by-google' AND lang='en' LIMIT 1), ''),
  COALESCE((SELECT url FROM tools WHERE slug = 'khanmigo' AND lang='en' LIMIT 1), ''),
  $d20ca$["✅ You're a student who wants to photograph a problem and get instant step-by-step help", "✅ You need homework help across all subjects — math, science, history, literature — from one app", "✅ You want a free mobile app that works offline and requires no signup for basic features", "✅ You want visual explanations and diagrams alongside text answers for better understanding"]$d20ca$::JSONB,
  $d20cb$["✅ You want an AI tutor that teaches you to think rather than giving you direct answers", "✅ You use Khan Academy's structured curriculum and want AI integrated into those lessons", "✅ You're a teacher wanting AI tools for lesson planning, feedback, and student guidance", "✅ You want a tutor that asks you questions to develop understanding, not just solves problems"]$d20cb$::JSONB,
  $d20faq$[{"q": "What is Socratic by Google?", "a": "Socratic is Google's AI homework help app for students. You photograph a problem or type a question, and Socratic provides step-by-step explanations, visual aids, videos, and resources. It covers math, science, history, literature, and more. Available free on iOS and Android."}, {"q": "Is Socratic free?", "a": "Yes. Socratic by Google is completely free with no subscription required. It's available on iOS and Android. Google funds it as an educational initiative with no in-app purchases."}, {"q": "Is Socratic better than Google?", "a": "Socratic is specifically optimized for homework and academic questions with curriculum-aligned explanations. A regular Google search returns links you have to read through. Socratic synthesizes the relevant information into a direct, student-friendly explanation with visual aids."}, {"q": "What is the difference between Socratic and Khanmigo?", "a": "Socratic gives direct answers to homework questions with explanations — it tells you the answer. Khanmigo uses the Socratic method to guide you to answers through questions — it doesn't tell you directly. Socratic is for quick homework help; Khanmigo is for deeper understanding through guided discovery."}]$d20faq$::JSONB
ON CONFLICT (slug, lang) DO UPDATE SET
  choose_a = EXCLUDED.choose_a,
  choose_b = EXCLUDED.choose_b,
  faq = EXCLUDED.faq;

