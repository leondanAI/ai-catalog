-- Сменились адреса сайтов (старые редиректят на новые). Все 8 языков.
UPDATE tools SET url = 'https://kling.ai', domain = 'kling.ai' WHERE slug = 'kling-ai';
UPDATE tools SET url = 'https://www.relume.ai', domain = 'relume.ai' WHERE slug = 'relume';
UPDATE comparisons SET tool_a_url = 'https://kling.ai' WHERE tool_a_slug = 'kling-ai';
UPDATE comparisons SET tool_b_url = 'https://kling.ai' WHERE tool_b_slug = 'kling-ai';
UPDATE comparisons SET tool_a_url = 'https://www.relume.ai' WHERE tool_a_slug = 'relume';
UPDATE comparisons SET tool_b_url = 'https://www.relume.ai' WHERE tool_b_slug = 'relume';
