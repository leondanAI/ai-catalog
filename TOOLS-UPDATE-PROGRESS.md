# TOOLS UPDATE — PROGRESS LEDGER

> Freshness audit of all 127 published tool cards (started 2026-06-25).
> Goal: correct stale model-version references + pricing across all 8 active langs
> (en, es, de, ru, ua, he, fr, pt). Driven by cross-check against the site's own news.
> Status: ✅ SQL written & committed · ⏳ awaiting Leon to run in Supabase · 🔄 regenerated/deployed

## Scope of this pass
**Short `description` field only** (shown in cards / search / finder). The longer
`description_long` (tool page body) still references old versions on some tools — that's
a deeper phase 2.

## 🔴 Stale model versions — SQL written (run in Supabase SQL Editor, then regenerate)
**Batch 1** — `scripts/update_tools_models_batch1.sql`  · ⏳ awaiting run
- gemini (2.5/3 → 3.5 Flash +Computer Use, 3.5 Pro July)
- claude (Opus 4.7 → Fable 5 public + Opus 4.8)

**Batch 2** — `scripts/update_tools_models_batch2.sql`  · ⏳ awaiting run
- nano-banana (Gemini 2.5/3 → 3.5 image)
- writesonic (GPT-4o/Claude 3.7/Gemini 1.5 → latest frontier)
- perplexity (Opus 4.6 → 4.8)
- bolt-new (Opus 4.6 → 4.8)
- cursor (Opus 4.7 → 4.8)
- duolingo-max (GPT-4 → current GPT)
- khanmigo (GPT-4 → current GPT)

## After running both SQL files
Regenerate tool pages (8 langs) + snapshot + sitemap, commit, push:
`python3 scripts/generate-lang-tool-pages.py` (+ the tool-page/snapshot/sitemap generators)

## ⚠️ Not done (needs separate verification / deeper pass)
- **Pricing** across all 127 tools — can't verify June-2026 prices from training; needs
  per-tool check against pricing pages or Leon's confirmation. Existing prices left untouched.
- **`description_long`** (tool page bodies) — still has old model versions on the tools above;
  update in phase 2.
- Borderline/possibly-current cards left as-is (chatgpt GPT-5.5, grok 4.3, meta-ai Llama 4,
  most others) — flagged only where clearly superseded by the site's own news.
