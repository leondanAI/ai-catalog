-- AItoolFit — replace stale Amazon Q compare with Kiro vs GitHub Copilot (8 langs).
-- All comparison content renders from the tools table; the row is just the a/b mapping.
-- Run after 05_kiro.sql. Then Claude regenerates compare pages + sitemap.

DELETE FROM comparisons WHERE slug='amazon-q-developer-vs-github-copilot';
DELETE FROM comparisons WHERE slug='kiro-vs-github-copilot';

INSERT INTO comparisons (slug, lang, tool_a, tool_b, tool_a_slug, tool_b_slug, tool_a_url, tool_b_url) VALUES
('kiro-vs-github-copilot','en','Kiro','GitHub Copilot','kiro','github-copilot','https://kiro.dev','https://github.com/features/copilot'),
('kiro-vs-github-copilot','ru','Kiro','GitHub Copilot','kiro','github-copilot','https://kiro.dev','https://github.com/features/copilot'),
('kiro-vs-github-copilot','ua','Kiro','GitHub Copilot','kiro','github-copilot','https://kiro.dev','https://github.com/features/copilot'),
('kiro-vs-github-copilot','he','Kiro','GitHub Copilot','kiro','github-copilot','https://kiro.dev','https://github.com/features/copilot'),
('kiro-vs-github-copilot','de','Kiro','GitHub Copilot','kiro','github-copilot','https://kiro.dev','https://github.com/features/copilot'),
('kiro-vs-github-copilot','es','Kiro','GitHub Copilot','kiro','github-copilot','https://kiro.dev','https://github.com/features/copilot'),
('kiro-vs-github-copilot','fr','Kiro','GitHub Copilot','kiro','github-copilot','https://kiro.dev','https://github.com/features/copilot'),
('kiro-vs-github-copilot','pt','Kiro','GitHub Copilot','kiro','github-copilot','https://kiro.dev','https://github.com/features/copilot');
