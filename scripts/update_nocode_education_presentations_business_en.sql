-- Update EN content: nocode, education, presentations, business-investment categories
-- Run in Supabase SQL Editor
-- After running: python3 scripts/translate-tools.py ru es de ua he fr pt --slugs=flutterflow,lovable,gamma,fiscal-ai,koyfin

-- ============================================================
-- NO-CODE
-- ============================================================

UPDATE tools SET
  description = 'Visual Flutter app builder. One-click App Store deploy, GitHub integration. Basic $39/mo. August 2025 pricing restructure added new tiers.',
  pros = ARRAY[
    'One-click deployment to iOS App Store and Google Play — no manual submission process',
    'GitHub integration and project branching for production-grade app development',
    'Visual Flutter builder produces native iOS and Android apps without writing Dart code',
    'Firebase, Supabase, and REST API integrations built in'
  ],
  cons = ARRAY[
    'August 2025 pricing restructure moved features to higher tiers — Basic at $39/mo',
    'Generated Flutter code can be verbose and hard to customize manually'
  ]
WHERE slug = 'flutterflow' AND lang = 'en';

UPDATE tools SET
  description = 'Build full-stack web apps from text descriptions. Agent Mode builds and verifies changes autonomously. React + Supabase backend, deploy in one click.',
  pros = ARRAY[
    'Agent Mode builds, runs, and verifies changes autonomously — minimal supervision needed',
    'Full-stack output: React frontend + Supabase backend + database schema from one prompt',
    'One-click deploy to production with custom domain support',
    'Best for non-technical founders who need a working MVP fast'
  ],
  cons = ARRAY[
    'Complex business logic and multi-step flows often require iteration and correction',
    'Less suitable for large-scale apps with complex state management or custom integrations'
  ]
WHERE slug = 'lovable' AND lang = 'en';

-- ============================================================
-- PRESENTATIONS
-- ============================================================

UPDATE tools SET
  users = '70M+',
  description = 'Gamma 3.0 (Sep 2025): Gamma Agent edits decks via natural language. Gamma Imagine (Mar 2026) generates marketing assets. 70M+ users, $2.1B valuation. Plus $8/mo.',
  description_long = 'Gamma is an AI presentation and document creation tool that generates fully designed presentations, documents, and websites from a text prompt or outline. It has grown to 70 million users with $100 million in annual recurring revenue and a $2.1 billion valuation — making it the most commercially successful AI presentation tool.

Gamma 3.0, launched September 2025, introduced Gamma Agent — a natural language interface for editing decks. Instead of manually adjusting slides, users describe what they want changed and the agent implements it. This makes iteration dramatically faster than traditional slide editors.

Gamma Imagine, launched March 2026, expanded the platform into AI-generated marketing assets — social posts, banners, and visual content beyond presentations. This positions Gamma as a broader creative suite rather than a presentation-only tool.

Output is polished by default — Gamma handles layout, typography, and visual hierarchy automatically. Presentations can be shared as interactive web pages, exported to PDF or PowerPoint, or embedded anywhere. The AI can also turn existing documents, bullet points, or URLs into complete presentations.

Pricing: Free (10 AI credits to start), Plus at $8/month (billed annually, unlimited AI creations, no Gamma branding), Pro at $15/month for advanced analytics, custom domains, and priority support.

Best for founders, marketers, and teams who need professional-looking presentations and documents fast — without hiring a designer.',
  pros = ARRAY[
    '70M+ users and $2.1B valuation — the dominant AI presentation tool by adoption',
    'Gamma Agent edits decks via natural language — fastest iteration of any presentation tool',
    'Gamma Imagine generates marketing assets (social, banners) beyond slides',
    'Plus plan at $8/mo removes branding and unlocks unlimited AI creations'
  ],
  cons = ARRAY[
    'Less control over precise layout and typography than PowerPoint or Google Slides',
    'Gamma branding visible on free tier — Plus ($8/mo) required for professional sharing'
  ]
WHERE slug = 'gamma' AND lang = 'en';

-- ============================================================
-- BUSINESS & INVESTMENT
-- ============================================================

UPDATE tools SET
  description = 'AI investment research platform (formerly FinChat). S&P Market Intelligence data on 100K+ companies, AI Copilot, 13F hedge fund analysis, DCF modeling. Plus $24/mo, Pro $64/mo.',
  description_long = 'Fiscal.ai (rebranded from FinChat in 2024) is an AI-native investment research platform combining institutional-quality financial data with a conversational AI Copilot. It is designed for retail investors and analysts who want Bloomberg-level research capabilities without the Bloomberg price tag.

The data layer is sourced from S&P Market Intelligence on the Pro tier — the same data used by institutional investors — covering 100,000+ companies with financial statements, KPIs, segment data, and earnings transcripts. For 2,250+ companies, Fiscal.ai tracks custom operational KPIs (e.g., subscriber counts, unit economics, same-store sales) beyond what appears in standard SEC filings.

The AI Copilot allows natural language queries across this dataset: "compare gross margins for Nvidia vs AMD over the last 5 years," "summarize the latest earnings call for Microsoft," or "model a DCF for Apple at a 10% discount rate." The DCF modeling tool generates discounted cash flow models from a prompt, adjustable with custom assumptions.

13F hedge fund filing analysis tracks what major funds are buying and selling in real time as filings are published. This is a feature typically reserved for expensive institutional terminals.

Pricing: Plus at $24/month (S&P 500 data, AI Copilot, KPI tracking), Pro at $64/month (100K+ companies, full S&P Market Intelligence, 13F analysis, DCF). Annual billing saves 20%.

Best for serious retail investors and analysts who need institutional research depth without a Bloomberg or FactSet subscription.',
  pros = ARRAY[
    'S&P Market Intelligence data on Pro — institutional-quality financials for 100K+ companies',
    'AI Copilot answers natural language financial questions across full dataset',
    '13F hedge fund filing analysis tracks major fund positions in real time',
    'DCF modeling from a prompt with adjustable custom assumptions'
  ],
  cons = ARRAY[
    'Pro at $64/mo required for full institutional data — Plus tier limited to S&P 500',
    'Less suitable for technical analysis or charting — Koyfin or TradingView better for that'
  ]
WHERE slug = 'fiscal-ai' AND lang = 'en';

UPDATE tools SET
  description = 'Professional Bloomberg-alternative financial terminal for retail investors. Real-time data, 5,900+ screening criteria, customizable dashboards. Free → $110/mo retail, $199/mo Advisor.',
  pros = ARRAY[
    '5,900+ screening criteria across fundamentals, technicals, and macroeconomic data',
    'Customizable dashboards rival Bloomberg in flexibility at a fraction of the cost',
    'Mobile apps with full feature parity — research on the go',
    '500K+ users and 8 years of platform refinement — proven reliability'
  ],
  cons = ARRAY[
    'Pro plan at $110/mo expensive compared to free alternatives for casual investors',
    'Steeper learning curve than consumer-focused tools — designed for serious analysts'
  ]
WHERE slug = 'koyfin' AND lang = 'en';
