-- News update: 3 new articles, June 1, 2026
-- Paste in Supabase SQL Editor → Run

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, image_url, published)
VALUES
(
  'claude-opus-48-dynamic-workflows',
  'en',
  'models',
  'Models',
  '#7c6af7',
  'Anthropic Blog',
  'May 28, 2026',
  'Claude Opus 4.8 — 27-Point Math Leap, Dynamic Workflows, Cheaper Fast Mode',
  $$Anthropic launches Opus 4.8 just 41 days after 4.7. USAMO 2026 math score jumps from 69.3% to 96.7%. Dynamic Workflows in Claude Code fan out up to 1,000 parallel subagents for repo-scale tasks. Fast mode drops from $30/$150 to $10/$50 per 1M tokens — a 3x cost reduction. Same base price: $5/$25 per 1M tokens.$$,
  NULL,
  true
),
(
  'bytedance-70b-ai-capex',
  'en',
  'business',
  'Business',
  '#f5a623',
  'Bloomberg',
  'May 27, 2026',
  'ByteDance Plans Up to $70 Billion in AI Data Center Spending for 2026',
  $$ByteDance disclosed plans to spend up to $70 billion on AI data centers and infrastructure in 2026 — nearly triple its 2025 capex of $25 billion. The company plans to self-fund most of the spending from approximately $50 billion in 2025 profits. The figure puts ByteDance in the same capex tier as Microsoft and Google.$$,
  NULL,
  true
),
(
  'karpathy-joins-anthropic',
  'en',
  'industry',
  'Industry',
  '#888',
  'TechCrunch',
  'May 19, 2026',
  'Andrej Karpathy Joins Anthropic to Lead New Pretraining Research Team',
  $$OpenAI co-founder and former Tesla AI lead Andrej Karpathy has joined Anthropic pretraining team. He is launching a new group focused on using Claude itself to accelerate pretraining research. Karpathy works under pretraining lead Nick Joseph. The hire is seen as a major signal of Anthropic momentum in attracting elite technical talent.$$,
  NULL,
  true
);
