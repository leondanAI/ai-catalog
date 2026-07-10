-- Remove comparisons involving delisted (discontinued) tools — all 8 lang rows each.
-- elevenlabs-vs-playht (playht shut down), rows-vs-hex (rows shut down)
DELETE FROM comparisons WHERE slug IN ('elevenlabs-vs-playht', 'rows-vs-hex');

-- Fix broken also_consider link: murf-ai referenced delisted playht (all langs)
UPDATE tools SET also_consider = ARRAY['elevenlabs','descript']::text[] WHERE slug = 'murf-ai';
