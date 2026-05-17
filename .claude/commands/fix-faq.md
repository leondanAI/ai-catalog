# /fix-faq — Audit and Fix Wrong-Tool FAQ Content

Use this skill when tool pages might have FAQ about the wrong tool (copy-pasted from compare pages).

## Background

Tool pages were sometimes created by copy-pasting compare page HTML. Compare pages have FAQ about BOTH tools (Tool A vs Tool B). If the FAQ wasn't updated, the tool page shows questions about the wrong tool.

FAQ is **hardcoded static HTML** — NOT in Supabase. Script: `scripts/fix_faq_translated.py`.

## Step 1 — Audit EN tool pages

Run this grep to see all FAQ question texts across all tool pages:

```bash
cd /Users/leondanilov/Desktop/AI-catalog
grep -rh 'itemprop="name">' tools/*.html | grep -oP '(?<=itemprop="name">)[^<]+' | sort
```

Or per-file to spot mismatches:

```bash
for f in tools/*.html; do
  slug=$(basename "$f" .html)
  questions=$(grep -oP '(?<=itemprop="name">)[^<]+' "$f" | tr '\n' '|')
  echo "$slug: $questions"
done
```

**Signs of wrong-tool FAQ:**
- Tool page for A has question "What is B?" or "Is B free?"
- Tool page for A mentions B in Q1 or Q2 (Q3/Q4 compare questions are OK)
- Compare-style questions on a single-tool page

## Step 2 — Fix EN tool pages manually

For each broken page, replace wrong FAQ questions with correct tool-specific ones. Structure:
- Q1: "What is [Tool]?" — brief factual description
- Q2: "Is [Tool] free?" — pricing summary
- Q3: "[Tool] vs [Competitor]?" OR "[Tool] for [use case]?" — legitimately compare or use-case
- Q4: Specific feature or differentiation question

Find FAQ block by searching for `itemtype="https://schema.org/FAQPage"` and editing surrounding `<div style="margin-top:2rem">` wrapper.

## Step 3 — Sync translated pages

After ALL EN pages are fixed and committed, run:

```bash
cd /Users/leondanilov/Desktop/AI-catalog
python3 scripts/fix_faq_translated.py
```

**IMPORTANT:** Run this only AFTER all EN fixes are committed. If run mid-fix, translated pages get the intermediate (partially wrong) EN content. The script copies EN FAQ verbatim to all 7 translated languages (es/de/ru/ua/he/fr/pt).

Script output:
- `Updated: N` — pages that were synced
- `No EN FAQ: [list]` — EN pages missing FAQ schema (skip, check manually)
- `Errors: [list]` — file read/write failures

## Step 4 — Commit and push

```bash
git add tools/ es/ de/ ru/ ua/ he/ fr/ pt/
git commit -m "Fix FAQ sections — wrong-tool content replaced with correct tool FAQ"
git push
```

Vercel auto-deploys on push. No manual approval needed.

## Notes

- Translated pages keep English FAQ (not translated) — this is by design for consistency
- Compare pages (`/compare/*.html`) are allowed to have FAQ about both tools — don't fix those
- `dall-e-3`, `finchat`, `obviously-ai`, `phind`, `tome` have no FAQ schema — known, skip
- The script `fix_faq_translated.py` uses div-depth counting to reliably find FAQ blocks in single-line HTML
