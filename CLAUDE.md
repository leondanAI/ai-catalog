# AItoolFit — Project Instructions for Claude Code

## Core Idea
AItoolFit is NOT a catalog. It is a task-based AI tool finder.

The core problem: there are tens of thousands of AI tools, hundreds added every day. Finding the right one for a specific task wastes hours — registration, tutorials, wrong turns, starting over.

The core solution: describe your task in plain language → get 3 curated AI tools that actually fit, with explanation of why each one works for that specific task.

This positioning is the foundation of every product and content decision. When in doubt, ask: "does this help the user find the right tool faster?" If yes — do it. If not — skip it.

---

## What We Measure
- Number of prompt submissions on the main page (primary metric)
- Click-throughs on affiliate/tool links (Visit → buttons)
- Time to first result after prompt submission

---

## Monetization Direction
- Affiliate links (primary)
- Sponsorships (secondary)
- No paid placements in recommendations — recommendations are always ranked by relevance and community ratings only

---

## Tech Stack
- Frontend: Static HTML + CSS + JS (no framework)
- Backend: Supabase (PostgreSQL)
- AI recommendations: Cloudflare Workers → Anthropic Claude API
- Hosting: GitHub Pages / static deployment
- Analytics: Google Analytics 4

---

## Languages
Site runs in 8 active languages. Every content update MUST be applied to ALL 8:
- 🇬🇧 EN — primary, always first
- 🇪🇸 ES — Spanish
- 🇩🇪 DE — German
- 🇷🇺 RU — Russian
- 🇺🇦 UA — Ukrainian
- 🇮🇱 HE — Hebrew (RTL — ensure dir="rtl" on html tag)
- 🇫🇷 FR — French (activated 2026-05-04)
- 🇧🇷 PT — Portuguese (activated 2026-05-04)

**Rule:** never update EN only. If content changes in EN, translate and update all 7 other active languages in the same operation.

---

## Supabase Database — 7 tables

### 1. tools (PK: slug + lang)
~115 tools × 8 languages = ~920 rows

| Field | Type | Notes |
|---|---|---|
| slug | text | URL identifier, lowercase-hyphenated |
| lang | text | en, ru, es, fr, pt, de, ua, he |
| name | text | Tool display name |
| url | text | Official tool URL |
| domain | text | domain.com (for favicon) |
| category | text | category slug |
| badge | text | free / freemium / paid |
| users | text | "200M+" display string |
| best_for | text | Short use case tag |
| description | text | Short (1-2 sentences, shown in cards) |
| description_long | text | Full review (plain text, no markdown) |
| pros | TEXT[] | Array of advantages |
| cons | TEXT[] | Array of disadvantages |
| rating | numeric | Aggregate rating |
| also_consider | TEXT[] | Related tool slugs |
| published | boolean | true = visible in catalog |
| created_at | timestamp | |

### 2. news (PK: id)
| Field | Type |
|---|---|
| id, slug, lang | identifiers |
| category, cat_label, cat_color | categorization |
| source, date | metadata |
| title, summary | content |
| image_url, published | display |

### 3. comments (PK: id)
| Field | Type |
|---|---|
| id, tool_slug | identifiers |
| author_name, author_email | user info |
| content | text |
| rating | 1-5 |
| approved | boolean — must be true to show |
| created_at | timestamp |

### 4. subscribers (PK: email)
| Field | Type |
|---|---|
| email, name | user info |
| topics | JSONB |
| lang | language preference |

### 5. comparisons (UNIQUE: slug + lang)
| Field | Type |
|---|---|
| id, slug, lang | identifiers |
| tool_a, tool_b | display names |
| tool_a_slug, tool_b_slug | slugs for linking |
| tool_a_url, tool_b_url | external URLs |
| title, meta_desc | SEO fields |
| intro | text |
| table_data | JSONB — comparison table rows |
| best_a, best_b | use case text |
| verdict_a, verdict_b | verdict text |

### 6. tool_translations (LEGACY)
Data migrated into `tools` table by lang. Do not write new data here.

### 7. toolbox (10 utilities)
IDs: token-counter, json-formatter, case-converter, text-diff, word-counter, regex-tester, csv-json, markdown-preview, password-generator, base64
Fields: id, lang, title, description, description_long

---

## DB Rules
- Always update ALL 8 active languages: en, ru, es, de, ua, he, fr, pt
- Never write to `tool_translations` — it's legacy
- `published = true` required for tool to appear in catalog
- `approved = true` required for comment to appear
- To remove a tool, set `published = false` — do not delete rows

---

## Content Rules

### Tool descriptions
- `description` (short): 1-2 sentences, factual, no hype
- `description_long`: 4-6 paragraphs plain text. Structure: what it is → current version/status → key capabilities → pricing → limitations → who should use it
- Always include current version and pricing
- Never invent features — only verified facts
- Pros/cons: 4-5 items each, specific and honest

### Pricing accuracy
Check pricing pages before updating. Common mistakes to avoid:
- ChatGPT: Free / Go $8 / Plus $20 / Pro $100 / Pro $200 (as of April 2026)
- Claude: Free / Pro $20 / Max $100 / Max $200
- Gemini: Free / AI Plus $7.99 / AI Pro $19.99 / AI Ultra $249.99

### Adding new tools
Only add tools that are:
1. Actively maintained and publicly available
2. Relevant to the "find the right tool for a task" use case
3. Have enough users/traction to be worth recommending

---

## File Structure
```
/                    — main EN pages
/es/                 — Spanish
/de/                 — German
/ru/                 — Russian
/ua/                 — Ukrainian
/he/                 — Hebrew (RTL)
/tools/              — individual tool pages (EN)
/es/tools/           — tool pages (Spanish)
... etc for all languages
/css/                — stylesheets
/js/                 — scripts
/scripts/            — Python generators, SQL scripts
```

---

## SEO Rules
Every page must have:
- `<title>` — unique, contains tool name or category + "AItoolFit"
- `<meta name="description">` — unique, 150-160 chars, contains keyword
- `<link rel="canonical">` — absolute URL
- `<link rel="alternate" hreflang>` — for all 6 languages + x-default
- Schema.org JSON-LD — SoftwareApplication on tool pages, WebSite on homepage

Never use emojis in `<title>` tags (OK in `<h1>` only).

---

## Comparison Pages
Comparisons currently work dynamically via `compare.html?a=slug-a&b=slug-b`.
Table `comparisons` in Supabase stores pre-built comparison content.
Future: generate static HTML pages in `/compare/` folder for SEO (Google needs to read without JS).

---

## Navigation (current labels)
- Find a Tool → /
- AI Catalog → /directory.html
- Compare → /compare.html
- News → /news.html
- ~~Toolbox → /tools.html~~ — страница удалена (2026-07), ссылок в навигации быть не должно
- Newsletter → /newsletter.html

Must be consistent across ALL pages and ALL language versions.

---

## Design System
Dark theme. CSS custom properties in `:root`:

| Variable | Value | Usage |
|---|---|---|
| `--bg` | `#0a0a0a` | Page background |
| `--bg2` | `#141414` | Card background |
| `--bg3` | `#1c1c1c` | Card hover background |
| `--accent` | `#7c6af7` | Primary accent (purple) |
| `--green` | `#2dd4a0` | Free badge |
| `--amber` | `#f59e0b` | Paid badge |
| `--text` | `#f0f0f0` | Primary text |
| `--text2` | `#888` | Secondary text |
| `--text3` | `#555` | Muted text / labels |
| `--border` | `rgba(255,255,255,0.08)` | Default borders |
| `--border2` | `rgba(255,255,255,0.14)` | Hover borders |
| `--radius` | `12px` | Card border-radius |
| `--radius-sm` | `8px` | Small element border-radius |

Fonts: `DM Sans` (body), `Space Grotesk` (headings/display)

---

## Key Principles
1. **Accuracy over completeness** — better to have 100 accurate tool entries than 5000 outdated ones
2. **User first** — every change should make it faster/easier to find the right tool
3. **No fake data** — never add placeholder ratings, fake reviews, or invented features
4. **Mobile first** — majority of users come from mobile (Facebook, LinkedIn referrals)
5. **All languages always** — never ship EN-only updates

---

## Current Priorities (April 2026)
1. Increase prompt submissions on homepage
2. Increase click-throughs on Visit → buttons
3. Google indexing of tool pages
4. Schema.org AggregateRating when real ratings exist in Supabase
5. Static HTML content on comparison pages (currently JS-rendered)
