# TOOLS UPDATE — PROGRESS LEDGER

> Freshness audit of all 127 published tool cards (started 2026-06-25).
> Goal: correct stale model-version references + pricing across all 8 active langs
> (en, es, de, ru, ua, he, fr, pt). Driven by cross-check against the site's own news.
> Status: ✅ DONE — both batches run in Supabase & deployed ~2026-07-09 (short `description`, 8 langs).
> Verified 2026-07-11 against live DB (perplexity short desc = "Claude Opus 4.8", last_updated 07-09)
> and committed HTML. A re-run of the SQL on 07-11 was idempotent (no DB change, regen produced no diff).

## Scope of this pass (short `description` only) — ✅ COMPLETE
**Short `description` field** (shown in cards / search / finder) is updated & live for all tools below.
The longer `description_long` (tool page body) still references old versions on some tools — see PHASE 2.

## ✅ Stale model versions — DONE (SQL run in Supabase, regenerated & deployed)
**Batch 1** — `scripts/update_tools_models_batch1.sql`  · ✅ applied + live
- gemini (2.5/3 → 3.5 Flash +Computer Use, 3.5 Pro July)
- claude (Opus 4.7 → Fable 5 public + Opus 4.8)

**Batch 2** — `scripts/update_tools_models_batch2.sql`  · ✅ applied + live
- nano-banana (Gemini 2.5/3 → 3.5 image)
- writesonic (GPT-4o/Claude 3.7/Gemini 1.5 → latest frontier)
- perplexity (Opus 4.6 → 4.8)
- bolt-new (Opus 4.6 → 4.8)
- cursor (Opus 4.7 → 4.8)
- duolingo-max (GPT-4 → current GPT)
- khanmigo (GPT-4 → current GPT)

> Note: the SQL files are idempotent — re-running them is harmless (UPDATE by slug+lang).
> Regen command (only needed after a real DB change):
> `python3 scripts/generate-lang-tool-pages.py` (+ lang-pages/pages/snapshot/sitemap generators).

## ✅ PHASE 2 — `description_long` (tool page bodies) — DONE 2026-07-28
Full body refresh completed and deployed. Per-tool web-verification (2026-07-27) → 14 bodies updated
across 8 langs (Opus 4.8, GPT-5.6, Grok 4.5, Gemini 3.1 Flash Image, Sonnet 5, etc.); tools verified
already-current were intentionally left (descript, uxpilot, claude-design, google-stitch, whisper).
amazon-q-developer unpublished (AWS sunset) + new **Kiro** card added. Batch: `scripts/update-2026-07-27/`
(files 04/05). Note: "PHASE 1/2" split was an artifact of this ledger — a tool update = all fields
(description + description_long + compare), not two phases.

## ⚠️ Small follow-up
- Stale compare page `amazon-q-developer-vs-github-copilot` (8 langs) still exists — amazon-q is now
  unpublished. Options: delete the comparison, or repurpose to `kiro-vs-github-copilot`.

## ⚠️ Not done (needs separate verification / deeper pass)
- **Pricing** across all 127 tools — can't verify June-2026 prices from training; needs
  per-tool check against pricing pages or Leon's confirmation. Existing prices left untouched.
- **`description_long`** (tool page bodies) — still has old model versions on the tools above;
  update in phase 2.
- Borderline/possibly-current cards left as-is (chatgpt GPT-5.5, grok 4.3, meta-ai Llama 4,
  most others) — flagged only where clearly superseded by the site's own news.
