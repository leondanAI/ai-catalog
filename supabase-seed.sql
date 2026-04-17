-- Seed: migrate existing 12 news articles (English)
INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, published) VALUES

('claude-opus-47-swe-bench', 'en', 'models', 'Models', '#7c6af7', 'Anthropic Blog', '2026-04-17',
'Claude Opus 4.7 Tops SWE-bench with 87.6% Score',
'Anthropic''s Claude Opus 4.7 has set a new record on SWE-bench Verified, scoring 87.6% — the highest ever for a publicly available model. Priced at $5/$25 per million tokens, it marks a step-change in agentic software engineering capabilities.',
true),

('gpt-54-three-variants-1m-context', 'en', 'models', 'Models', '#7c6af7', 'OpenAI Blog', '2026-04-16',
'GPT-5.4 Ships in Three Variants with 1M Token Context',
'OpenAI released GPT-5.4 in Standard, Thinking and Pro variants. All three share a 1.05 million token context window — the largest OpenAI has ever released commercially. The model dynamically retrieves tool specs rather than loading every definition into the prompt.',
true),

('apple-rebuilds-siri-google-gemini', 'en', 'business', 'Business', '#f5a623', '9to5Mac', '2026-04-16',
'Apple Rebuilds Siri on Google Gemini via Private Cloud',
'Apple announced a completely reimagined Siri powered by Google''s Gemini model running on Apple''s Private Cloud Compute. The new Siri handles multi-step tasks on-device for the first time and answers complex questions with far greater accuracy.',
true),

('stanford-ai-index-2026', 'en', 'research', 'Research', '#4aaef5', 'Stanford HAI', '2026-04-15',
'Stanford AI Index 2026: AI Adoption Faster Than PC or Internet',
'Stanford''s annual AI Index reveals that as of March 2026, Anthropic leads the overall model rankings, trailed closely by xAI, Google and OpenAI. The report finds people are adopting AI faster than they adopted the personal computer or the internet.',
true),

('pwc-top-companies-ai-economic-gains', 'en', 'research', 'Research', '#4aaef5', 'PwC', '2026-04-14',
'PwC: Top 20% of Companies Capture 75% of AI Economic Gains',
'PwC''s 2026 AI Performance study finds a sharp divide: a small group of companies focused on growth — not just productivity — is pulling far ahead. The report warns that most businesses are still in early experimentation, missing the compounding returns.',
true),

('openai-acquires-tbpn', 'en', 'business', 'Business', '#f5a623', 'The Verge', '2026-04-14',
'OpenAI Acquires Silicon Valley Media Show TBPN',
'OpenAI announced it has acquired TBPN, the Technology Business Programming Network — a daily live tech and business show that has become a cult phenomenon in Silicon Valley. It is the company''s first acquisition of a media company.',
true),

('anthropic-confirms-claude-mythos', 'en', 'models', 'Models', '#7c6af7', 'Anthropic Blog', '2026-04-13',
'Anthropic Confirms Claude Mythos — But Won''t Release It Publicly',
'Anthropic confirmed the existence of Claude Mythos, described as the most capable model they have ever built. It will not be released to the public. Access is limited to ~50 partner organizations through Project Glasswing, focused on cybersecurity and advanced reasoning.',
true),

('openai-25b-revenue-ipo-2026', 'en', 'business', 'Business', '#f5a623', 'Bloomberg', '2026-04-13',
'OpenAI Surpasses $25B Annual Revenue, Eyes IPO in Late 2026',
'OpenAI has surpassed $25 billion in annualized revenue and is reportedly taking early steps toward a public listing, potentially as soon as late 2026. Anthropic is close behind, approaching $19 billion in annualized revenue.',
true),

('meta-llama-4-scout-10m-context', 'en', 'models', 'Models', '#7c6af7', 'Meta AI Blog', '2026-04-12',
'Meta Llama 4 Scout: 10M Token Context with MoE Architecture',
'Meta released Llama 4 Scout and Maverick — the first Llama models with Mixture-of-Experts architecture. Scout features 17B active parameters across 16 experts (109B total) and a 10-million-token context window. Available for commercial use.',
true),

('google-gemma-4-31b-open-model', 'en', 'models', 'Models', '#7c6af7', 'Google Blog', '2026-04-10',
'Google Gemma 4 Released: 31B Open Model Ranks #3 Globally',
'Google released Gemma 4 in four variants from 2.3B to 31B parameters. The 31B Dense model ranks #3 globally on Arena AI among open models, making it the strongest open-weight model Google has shipped to date.',
true),

('eu-ai-act-full-enforcement', 'en', 'regulation', 'Regulation', '#f56565', 'Wired', '2026-04-09',
'EU AI Act Full Enforcement: Major Providers Publish Compliance Docs',
'The EU AI Act entered full enforcement in March 2026, requiring all AI systems in the EU to meet transparency, safety and risk classification requirements. OpenAI, Anthropic and Google have now published their GPAI compliance documentation.',
true),

('zhipu-glm-51-744b-open-source', 'en', 'models', 'Models', '#7c6af7', 'Zhipu AI Blog', '2026-04-08',
'Zhipu AI Open-Sources GLM-5.1: 744B Parameter MoE Model',
'Chinese lab Zhipu AI released GLM-5.1 under the MIT license — a 744-billion-parameter mixture-of-experts model with 40B active parameters per forward pass and a 200K context window. The fully open release puts serious pressure on closed-source competitors.',
true);
