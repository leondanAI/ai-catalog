-- Новые названия и адреса инструментов по аудиту 2026-09-29/10-06.
-- slug не меняем: на нём держатся URL страниц и ссылки.
-- В названии в скобках старое имя — так его узнают те, кто ищет по старому.
-- Тексты карточек о переименовании уже сказали (аудит). Идемпотентно.

-- windsurf: Windsurf переименован в Devin Desktop 2026-06-02; windsurf.com → 308 на devin.ai/desktop
UPDATE tools SET url = 'https://devin.ai/desktop', domain = 'devin.ai', name = $n$Devin Desktop (Windsurf)$n$ WHERE slug = 'windsurf';
UPDATE comparisons SET tool_a = $n$Devin Desktop (Windsurf)$n$ WHERE tool_a_slug = 'windsurf';
UPDATE comparisons SET tool_b = $n$Devin Desktop (Windsurf)$n$ WHERE tool_b_slug = 'windsurf';
UPDATE comparisons SET tool_a_url = 'https://devin.ai/desktop' WHERE tool_a_slug = 'windsurf';
UPDATE comparisons SET tool_b_url = 'https://devin.ai/desktop' WHERE tool_b_slug = 'windsurf';

-- looker-studio: Google вернул имя Data Studio в апреле 2026; lookerstudio.google.com → 301 на datastudio.google.com
UPDATE tools SET url = 'https://datastudio.google.com', domain = 'datastudio.google.com', name = $n$Data Studio (Looker Studio)$n$ WHERE slug = 'looker-studio';
UPDATE comparisons SET tool_a = $n$Data Studio (Looker Studio)$n$ WHERE tool_a_slug = 'looker-studio';
UPDATE comparisons SET tool_b = $n$Data Studio (Looker Studio)$n$ WHERE tool_b_slug = 'looker-studio';
UPDATE comparisons SET tool_a_url = 'https://datastudio.google.com' WHERE tool_a_slug = 'looker-studio';
UPDATE comparisons SET tool_b_url = 'https://datastudio.google.com' WHERE tool_b_slug = 'looker-studio';

-- notebooklm: NotebookLM переименован в Gemini Notebook 2026-07-16; notebooklm.google.com → 301
UPDATE tools SET url = 'https://notebook.google.com', domain = 'notebook.google.com', name = $n$Gemini Notebook (NotebookLM)$n$ WHERE slug = 'notebooklm';
UPDATE comparisons SET tool_a = $n$Gemini Notebook (NotebookLM)$n$ WHERE tool_a_slug = 'notebooklm';
UPDATE comparisons SET tool_b = $n$Gemini Notebook (NotebookLM)$n$ WHERE tool_b_slug = 'notebooklm';
UPDATE comparisons SET tool_a_url = 'https://notebook.google.com' WHERE tool_a_slug = 'notebooklm';
UPDATE comparisons SET tool_b_url = 'https://notebook.google.com' WHERE tool_b_slug = 'notebooklm';

-- mistral-le-chat: Le Chat переименован в Vibe 2026-08-12, адрес прежний (help.mistral.ai)
UPDATE tools SET url = 'https://chat.mistral.ai', domain = 'chat.mistral.ai', name = $n$Mistral Vibe (Le Chat)$n$ WHERE slug = 'mistral-le-chat';
UPDATE comparisons SET tool_a = $n$Mistral Vibe (Le Chat)$n$ WHERE tool_a_slug = 'mistral-le-chat';
UPDATE comparisons SET tool_b = $n$Mistral Vibe (Le Chat)$n$ WHERE tool_b_slug = 'mistral-le-chat';
UPDATE comparisons SET tool_a_url = 'https://chat.mistral.ai' WHERE tool_a_slug = 'mistral-le-chat';
UPDATE comparisons SET tool_b_url = 'https://chat.mistral.ai' WHERE tool_b_slug = 'mistral-le-chat';

-- claude-design: старый адрес anthropic.com/claude/design отдаёт 404
UPDATE tools SET url = 'https://claude.com/product/design', domain = 'claude.com' WHERE slug = 'claude-design';
UPDATE comparisons SET tool_a_url = 'https://claude.com/product/design' WHERE tool_a_slug = 'claude-design';
UPDATE comparisons SET tool_b_url = 'https://claude.com/product/design' WHERE tool_b_slug = 'claude-design';

-- comfyui: comfyui.org — сторонний сайт; официальный comfy.org
UPDATE tools SET url = 'https://comfy.org', domain = 'comfy.org' WHERE slug = 'comfyui';
UPDATE comparisons SET tool_a_url = 'https://comfy.org' WHERE tool_a_slug = 'comfyui';
UPDATE comparisons SET tool_b_url = 'https://comfy.org' WHERE tool_b_slug = 'comfyui';

-- runway: runwayml.com → 308 на runway.com
UPDATE tools SET url = 'https://runway.com', domain = 'runway.com' WHERE slug = 'runway';
UPDATE comparisons SET tool_a_url = 'https://runway.com' WHERE tool_a_slug = 'runway';
UPDATE comparisons SET tool_b_url = 'https://runway.com' WHERE tool_b_slug = 'runway';

-- flux: blackforestlabs.ai → 301 на bfl.ai
UPDATE tools SET url = 'https://bfl.ai', domain = 'bfl.ai' WHERE slug = 'flux';
UPDATE comparisons SET tool_a_url = 'https://bfl.ai' WHERE tool_a_slug = 'flux';
UPDATE comparisons SET tool_b_url = 'https://bfl.ai' WHERE tool_b_slug = 'flux';

-- meta-ai: ai.meta.com — исследовательский сайт; ассистент живёт на meta.ai
UPDATE tools SET url = 'https://www.meta.ai', domain = 'meta.ai' WHERE slug = 'meta-ai';
UPDATE comparisons SET tool_a_url = 'https://www.meta.ai' WHERE tool_a_slug = 'meta-ai';
UPDATE comparisons SET tool_b_url = 'https://www.meta.ai' WHERE tool_b_slug = 'meta-ai';

-- google-veo-3: /technologies/veo/ → 301 на /models/veo/
UPDATE tools SET url = 'https://deepmind.google/models/veo/', domain = 'deepmind.google' WHERE slug = 'google-veo-3';
UPDATE comparisons SET tool_a_url = 'https://deepmind.google/models/veo/' WHERE tool_a_slug = 'google-veo-3';
UPDATE comparisons SET tool_b_url = 'https://deepmind.google/models/veo/' WHERE tool_b_slug = 'google-veo-3';
