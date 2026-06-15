-- News update: 3 new articles, June 15, 2026
-- Paste in Supabase SQL Editor → Run

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, image_url, published)
VALUES
(
  'claude-fable-5-public-release',
  'en',
  'models',
  'Models',
  '#7c6af7',
  'Anthropic Blog',
  'Jun 9, 2026',
  'Claude Fable 5 — Anthropic''s Most Powerful AI Goes Public, Free Through June 22',
  $$Anthropic released Claude Fable 5 on June 9 — the first publicly available Mythos-class model. State-of-the-art across software engineering, vision, scientific research, and autonomous task execution. Simultaneously launched Claude Mythos 5, restricted to approved organizations for government cybersecurity use. Free on Pro, Max, Team, and Enterprise plans through June 22; from June 23 priced at $10/$50 per 1M tokens.$$,
  NULL,
  true
),
(
  'anthropic-965b-valuation-ipo-filing',
  'en',
  'business',
  'Business',
  '#f5a623',
  'Fortune',
  'Jun 1, 2026',
  'Anthropic Files for IPO at $965 Billion — Now the World''s Most Valuable AI Startup',
  $$Anthropic raised $65 billion in a Series H round at a $965 billion post-money valuation, led by Altimeter, Dragoneer, Greenoaks, and Sequoia. On June 1 the company confidentially filed an S-1 for an IPO. Revenue run-rate hit ~$47B as of May 2026, surpassing OpenAI's ~$852B valuation and making Anthropic the most valuable AI startup in history.$$,
  NULL,
  true
),
(
  'github-copilot-ai-credits-june-2026',
  'en',
  'business',
  'Business',
  '#f5a623',
  'GitHub Blog',
  'Jun 1, 2026',
  'GitHub Copilot Drops Request Billing — AI Credits System Live on June 1',
  $$All GitHub Copilot plans switched to usage-based billing on June 1. Every interaction now costs based on the model used and tokens consumed. New currency: GitHub AI Credits (1 Credit = $0.01). Pro plan includes 1,500 credits/month, Pro+ includes 7,000 ($39/mo), Max includes 20,000. Business and Enterprise customers receive extra credits through September 1, 2026.$$,
  NULL,
  true
);
