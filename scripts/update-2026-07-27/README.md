# AItoolFit — update batch 2026-07-27

Autonomous content refresh prepared by Claude Code while Leon was away.
All facts **web-verified 2026-07-27** (news in DB stopped at 2026-06-24 → ~1 month gap filled).
Nothing invented — every item has a real source.

---

## Files in this folder (run order)

| # | File | What it does | Rows |
|---|------|--------------|------|
| 1 | `01_news_july2026.sql` | Inserts 6 news items × 8 active langs | 48 |
| 2 | `02_tools_flagship_models.sql` | Updates short `description` for 3 flagship tools + stamps `last_updated` | 24 |
| 3 | `03_news_bodies.sql` | Fills the HTML `body` for the 6 news (else article pages 404) — EN hand-written, 7 langs via haiku | 48 |
| 4 | `04_tool_bodies.sql` | Tool `description_long` freshness: 10 version-token swaps (all langs) + 4 narrative rewrites (chatgpt/github-copilot/microsoft-copilot/perplexity, 8 langs) + amazon-q → unpublished | 43 |
| 5 | `05_kiro.sql` | New Kiro tool card (8 langs) — AWS spec-driven IDE replacing Amazon Q | 8 |

Both are **idempotent** — `01` DELETEs each slug before INSERT; `02` is UPDATE-by-key. Re-running is safe.
Generators that produced them: `gen_news_sql.py`, `gen_tools_sql.py` (edit + re-run to tweak text).

---

## 📰 News added (6) — verified

| slug | date | cat | headline | source |
|------|------|-----|----------|--------|
| openai-gpt-5-6 | 07-09 | models | GPT-5.6 (Sol/Terra/Luna) public + ChatGPT Work + GPT-Live | OpenAI / TechCrunch |
| claude-opus-5 | 07-24 | models | Claude Opus 5 — frontier coding at unchanged Opus pricing, 1M ctx | Anthropic / MarkTechPost |
| amd-anthropic-partnership | 07-22 | business | AMD × Anthropic: 2 GW MI450 GPUs, up to $5B investment | AMD / CNBC |
| eu-google-android-ai-assistants | 07-16 | regulation | EU (DMA) orders Google to open Android to rival AI assistants | European Commission / Fortune |
| moonshot-kimi-k3 | 07-16 | models | Kimi K3 — 2.8T open model, #1 Frontend Code Arena, beats Fable 5 | Moonshot / Tom's Hardware |
| gemini-3-5-pro-delayed-rebuild | 07-17 | models | Google delays Gemini 3.5 Pro again after a rebuild | Bloomberg / TechTimes |

## 🔧 Tool cards refreshed (3) — short `description` only

- **chatgpt** → GPT-5.6 family now public (was "GPT-5.5 default, 5.6 in preview") + ChatGPT Work + GPT-Live
- **claude** → Opus 5 (was "Opus 4.8"), frontier coding/computer use at Opus pricing, 1M ctx
- **gemini** → 3.5 Pro slipped past July target after rebuild (was "arrives in July")

---

## ✅ FULL RUN CHECKLIST (how we update — every time)

**Division of labor:** Leon runs `.sql` in Supabase SQL Editor · Claude runs Python generators + git push.

### Step 1 — Leon (Supabase SQL Editor)
1. Run `01_news_july2026.sql`
2. Run `02_tools_flagship_models.sql`
3. Ping Claude: **"готово"**

### Step 2 — Claude (terminal, generators + push)
From repo root `~/Desktop/AI-catalog`, with keys exported (already in `scripts/REFRESH_PROGRESS.md`):
```
export SB_SERVICE_KEY=...        # (in REFRESH_PROGRESS.md)
python3 scripts/generate-news-pages.py        # news.html + news-article pages, 8 langs
python3 scripts/generate-news-snapshot.py      # homepage/news snapshot JSON
python3 scripts/generate-lang-tool-pages.py    # tool pages (picks up claude/chatgpt/gemini desc)
python3 scripts/generate-pages.py              # catalog/lang pages (cards show new desc)
python3 scripts/generate-sitemap.py            # sitemap (new news URLs)
python3 scripts/indexnow.py                    # ping search engines on changed URLs
```
Then:
```
git add -A && git commit -m "content: July-2026 news batch (6) + flagship tool freshness (Opus 5, GPT-5.6, Gemini 3.5 Pro)" && git push
```
Verify: open `news.html` (+ one non-EN, e.g. `/ru/news.html`) and a tool page (`/tools/claude.html`) — new items present, no layout break, HE stays RTL.

---

## ⏭️ Deferred (NOT in this batch)
- **PHASE 2 — `description_long`** (tool-page bodies) still reference old model versions on several tools
  (perplexity, cursor, bolt-new, gemini, nano-banana…). Deeper per-tool pass — see `TOOLS-UPDATE-PROGRESS.md`.
- **Pricing audit** across all 125 tools — needs per-tool pricing-page checks; not done here.
- Extra non-core langs (ar, hi, ja, zh… — 14 news each) left as-is; this batch covers the 8 active site langs.
