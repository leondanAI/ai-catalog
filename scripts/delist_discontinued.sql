-- ============================================================
-- DELIST discontinued tools (set published=false — per CLAUDE.md, do NOT delete rows)
-- Found by the freshness audit (July 2026). These services have shut down / retired:
--   phind      — shut down Jan 16, 2026
--   playht     — acquired by Meta, permanently shut down Dec 31, 2025
--   tome       — product shut down Apr 30, 2025
--   rows       — acquired by Superhuman, sunset May 31, 2026
--   dall-e-3   — retired (superseded; standalone DALL·E 3 no longer offered)
-- Affects all 8 language rows per slug.
-- Run in Supabase, then regenerate pages + sitemap (they drop out automatically).
-- ============================================================

UPDATE tools SET published = false
WHERE slug IN ('phind', 'playht', 'tome', 'rows', 'dall-e-3');

-- NOTE (kept live, but flagged for content update):
--   sora        — only paid API remains, sunsetting Sept 24, 2026 (still live for now)
--   continue-dev— winding down post-acquisition (still usable)
-- These get updated descriptions in the content pass rather than delisting yet.
