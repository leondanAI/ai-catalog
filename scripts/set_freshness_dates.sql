-- ============================================================
-- FRESHNESS DATES — SEO "last updated" signal
-- 1) Adds a last_updated column (run once, safe to re-run).
-- 2) Stamps the tools refreshed in pilot batch 1 + 2 with today's date.
-- The generator now renders a visible "Last updated: <date>" line
-- AND writes "dateModified" into the SoftwareApplication JSON-LD (what Google reads).
-- Convention going forward: add  last_updated = CURRENT_DATE  to every tool UPDATE.
-- ============================================================

ALTER TABLE tools ADD COLUMN IF NOT EXISTS last_updated date;

-- Stamp after running the content batches (batch1, batch1_langs, batch2):
UPDATE tools SET last_updated = CURRENT_DATE
WHERE slug IN ('claude','gemini','chatgpt','grok','midjourney','perplexity');
