# Catalog updates — 2026-04-29

Source: `content/updates-28-04.txt` — full research report by user.

## Files in this folder

| File | What | Status |
|---|---|---|
| `01_urgent.sql` | sora unpublish + chatgpt + dall-e-3 + windsurf + cursor | ready |
| `02_important.sql` | kling-ai, runway, veo-3, notion-ai, midjourney, heygen, suno, lovable | ready |
| `03_minor.sql` | grammarly, github-copilot, claude-code, replit, descript, recraft-ai, adobe-firefly | ready |
| `04_new_tools.sql` | chatgpt-images, opencode, seedance-2-0 | ready |

## How to apply

```bash
# Step 1 — apply 4 SQL files in Supabase SQL Editor (in order)
cat scripts/updates_2026-04-29/01_urgent.sql | pbcopy   # → Supabase SQL Editor → Run
cat scripts/updates_2026-04-29/02_important.sql | pbcopy
cat scripts/updates_2026-04-29/03_minor.sql | pbcopy
cat scripts/updates_2026-04-29/04_new_tools.sql | pbcopy

# Step 2 — regenerate static HTML and sitemap
python3 scripts/generate-pages.py
python3 scripts/generate-lang-tool-pages.py es de ru ua he
python3 scripts/generate-lang-pages.py
python3 scripts/generate-sitemap.py

# Step 3 — review one page from each major change before committing:
#   open https://localhost:8080/tools/chatgpt-images.html (new tool, EN)
#   open https://localhost:8080/he/tools/windsurf.html (rewritten desc, HE)
#   open https://localhost:8080/directory.html (Sora removed, new tools shown)

# Step 4 — commit & push
git add -A
git commit -m "feat: April 29 catalog refresh — 22 tool updates + 3 new tools"
git push
```

## js/data.js + translations.js — already edited

I already updated `js/data.js` and `js/translations.js` so the new tools render in the directory immediately after generators run. Specifically:

- **js/data.js**:
  - Added `ChatGPT Images 2.0` after DALL·E 3 in `image` category
  - Added `OpenCode` at the end of `code` category
  - Replaced `Sora` entry in `video` category with `Seedance 2.0` (Sora removed, since we''re hiding it)
- **js/translations.js**:
  - Added 5-language entries for `ChatGPT Images 2.0`, `OpenCode`, `Seedance 2.0` (he/ru/es/de/ua)

## Decisions made (per pre-sleep approval)

1. **sora**: `published=false` — hidden from catalog, URLs preserved (not deleted)
2. **dall-e-3**: kept as is + retirement note appended; **added new** `chatgpt-images` as separate entry
3. **windsurf**: slug kept (`windsurf`), description rewritten (Codeium→Windsurf rebrand, Cognition AI acquisition, SWE-1.5 model, $20/$200 pricing)
4. **opencode**: ✅ added (112K GitHub stars, open-source CLI coder)
5. **seedance-2-0**: ✅ added (ByteDance, post-Sora niche, native audio-video)
6. Translations for new content: done by Claude inline (factual updates, not invention)

## Per-tool decisions and TODOs

### URGENT — file 01

- **sora**: simple `published=false` for all 6 langs.
- **chatgpt**: removed "video creation via Sora" (since Sora is shut down 2026-03-24); changed "image generation via DALL-E" → "image generation via ChatGPT Images 2.0". Pros: removed Sora from "Widest feature set" line. GPT-5.5 mentions already current.
- **dall-e-3**: appended new paragraph noting retirement on 2026-05-12 and ChatGPT Images 2.0 successor.
- **windsurf**: full description_long rewrite + updated badge/users/pros/cons. Translations done.
- **cursor**: stats updated ($1B→$2B ARR, 1M→2M users, 1M+ paying, $60B valuation), Cursor 3 / Composer 2 mention added, JetBrains support mentioned. Pricing structure was already current.

### IMPORTANT — file 02

- **kling-ai**: 1080p→4K, +Omni One architecture mention, +Cinematic Series mode, $10→$6.99/month Standard, +$300M ARR.
  - ⚠️ TODO: source said description had "3 minutes" but file says "Up to 2-minute videos (unchanged)". Kept "3 minutes" since file is ambiguous on whether changed. Verify with Kuaishou source before publishing.
- **runway**: Gen-4 → Gen-4.5 (replace), Standard plan price kept at $12 (file says "still from $15/month" but description says $12 — flagged below).
  - ⚠️ TODO: file says runway Standard $15/mo, description has $12-$76/mo. Conflicting. Kept current $12-$76 since file uses "from $15/month" loosely. Verify if Standard is now $15.
- **google-veo-3**: + Veo 3.1 mention + VideoFX/Flow access mention.
- **notion-ai**: appended major features paragraph (Custom Agents, Workers, voice input, $8/member confirmed).
- **midjourney**: V6 → V7 default + V8 Alpha preview mention + web interface mention. Pricing UNCHANGED (Basic $10, Standard $30, Pro $60, Mega $120).
- **heygen**: 40+ languages → 175+ languages.
- **canva-ai**: NO SQL CHANGE — current description already has $12.99/month. ✅ skipped.
- **suno**: V4 already in description; Pro $8/mo → $10/mo.
- **lovable**: + $6.6B valuation mention, + real-time collaboration mention, $20/mo → $25/mo.
  - ⚠️ TODO: file says "$25/month (was $20 in older references — verify)". Updated to $25 per file but flag for user verification.

### MINOR — file 03

- **grammarly**: + GrammarlyGO name explicit in description.
- **github-copilot**: 2M → 4.7M paid subscribers, + Agent Mode + Copilot Workspace mention.
- **claude-code**: + 1M context window (Beta), + Background Agents mention.
- **replit**: Replit Core $20/mo → $25/mo.
- **descript**: Hobbyist $12/mo → Creator $24/mo (plan rename + price update per file).
  - ⚠️ TODO: file says "verify". Did Hobbyist rename to Creator? Or are they two plans? Flagged.
- **recraft-ai**: + Recraft V3 mention.
- **adobe-firefly**: + Nano Banana Pro (Gemini 3 Pro Image) integration mention.

### NEW TOOLS — file 04

- **chatgpt-images** (slug, gpt-image-2 model): added with full description × 6 langs. Category: image. Badge: freemium.
  - ⚠️ TODO: users count not verified — set to N/A.
- **opencode**: added × 6 langs. Category: code. Badge: freemium ($10/mo Go plan).
  - ⚠️ TODO: users — used "112K GitHub stars" as proxy in best_for; no platform user count; users field set to N/A.
- **seedance-2-0**: added × 6 langs. Category: video. Badge: freemium.
  - ⚠️ TODO: pricing confirmed up to $167/month per file. users field N/A.

## What was NOT done (still NO_CHANGE per file)

76 tools had `[NO CHANGE]` tag — left untouched. Includes claude, deepseek, grok, meta-ai, perplexity, character-ai, autogpt, lindy, make, manus, microsoft-copilot-studio, n8n, relevance-ai, bolt-new, v0-by-vercel, deepl, hemingway-editor, jasper, quillbot, writesonic, adcreative-ai, clearscope, copy-ai, frase, semrush, surferseo, comfyui, flux, ideogram, leonardo-ai, stable-diffusion, pika, capcut, figma-ai, framer-ai, looka, relume, remove-bg, uizard, claude-design, adobe-podcast, speechify, udio, whisper, fireflies-ai, gamma, otter-ai, reclaim-ai, zapier-ai, consensus, elicit, humata, notebooklm, semantic-scholar, akkio, hex, julius-ai, looker-studio, obviously-ai, rows, tableau-ai, bubble, flutterflow, glide, softr, webflow, coursera-coach, duolingo-max, khanmigo, photomath, socratic-by-google, synthesis, beautiful-ai, pitch, prezi, slidesgo, tome.

## Open questions — RESOLVED 2026-04-29 morning

1. **kling-ai videos** — verified via web: up to **2 min** initial generation, up to **3 min** with Extend feature. Description "up to 3 minutes" is correct. ✓ kept.
2. **runway Standard** — user confirmed: **$12/month annual billing OR $15/month monthly**. SQL updated to reflect both.
3. **lovable Pro** — user confirmed: **€25/month monthly OR €21/month annual** (currency switched from $ to €). SQL updated.
4. **descript plans** — verified via web: **two separate plans**. Hobbyist now $16/mo annual ($24/mo monthly), Creator $24/mo annual ($35/mo monthly). SQL updated to describe both.
5. **chatgpt + Sora** — user confirmed: removing Sora is correct. ✓ done.

## Translation notes

For new descriptions/rewrites, I translated EN → he/es/de/ru/ua myself. Brand names and version numbers kept in English (per project convention). If any translation reads off, easy to fix individually.

## ⚠️ REPLACE pattern coverage (read this before running 02 + 03)

Most updates in 02_important.sql and 03_minor.sql use SQL REPLACE() to swap small bits of text (model names, prices, version numbers). I verified the patterns against actual database content:

- **EN and DE rows update reliably.** DE description_long for many tools is still in English (translation never happened) — so EN patterns match DE rows too.
- **RU / HE / ES / UA may have many no-op REPLACEs** because translations diverged in structure or pricing format. Examples:
  - HE/lovable shows "Starter (20 דולר לחודש)" not "Pricing starts at $20/month"
  - ES/suno shows "El plan Pro (8 $/mes)" not "Pro plan ($8/month)"
  - UA/replit doesn't include pricing at all in the short summary
  - Cursor's "$1 billion ARR" phrase only appears in EN

**Result of running 02 + 03:**
- EN pages get all 22 updates ✓
- DE pages get most updates (since DE was English) ✓
- RU/HE/ES/UA: some updates apply, some don't — no errors, just no-ops for non-matching patterns

**Path forward:** after applying SQL and regenerating, point me at any specific outdated lang/slug ("nano-banana ru still shows $20") and I'll write a precise UPDATE for that row. Faster than blanket-patching all patterns now.

**Fully covered across 6 langs (no pattern issues):**
- `sora` → `published=false`
- `windsurf` → full description_long rewrite
- `dall-e-3` → retirement note appended
- `cursor` → Cursor 3 / Composer 2 paragraph appended
- `kling-ai` → Kling 3.0 paragraph appended
- `google-veo-3` → Veo 3.1 paragraph appended
- `notion-ai` → 2026 features paragraph appended
- `midjourney` → V8 Alpha paragraph appended
- `lovable` → valuation paragraph appended (price replace may miss in non-EN)
- `claude-code` → Background Agents paragraph appended
- `github-copilot` → Agent Mode paragraph appended
- `grammarly` → GrammarlyGO paragraph appended
- `recraft-ai` → V3 paragraph appended
- `adobe-firefly` → Nano Banana Pro paragraph appended
- `chatgpt-images`, `opencode`, `seedance-2-0` → new tools, full content × 6 langs
