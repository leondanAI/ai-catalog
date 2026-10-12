-- Сравнения с Fiscal.ai ссылались на старый слаг finchat (инструмент давно fiscal-ai).
-- Из-за этого скрипты, сверяющие сравнения с карточками, их пропускали. Идемпотентно.
UPDATE comparisons SET tool_a_slug = 'fiscal-ai', tool_a_url = 'https://fiscal.ai' WHERE tool_a_slug = 'finchat';
UPDATE comparisons SET tool_b_slug = 'fiscal-ai', tool_b_url = 'https://fiscal.ai' WHERE tool_b_slug = 'finchat';
