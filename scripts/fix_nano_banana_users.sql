-- Fix: Nano Banana had unverified "1M+" users figure
-- Replace with N/A across all 6 active languages

UPDATE tools SET users = 'N/A' WHERE slug = 'nano-banana';
