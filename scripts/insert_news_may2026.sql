-- New news articles May 2026
-- Insert into news table

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, published)
VALUES
(
  'openai-gpt-55-instant-default-model',
  'en', 'models', 'Models', '#7c6af7',
  'TechCrunch', 'May 5, 2026',
  'OpenAI Makes GPT-5.5 Instant the Default ChatGPT Model — 52.5% Fewer Hallucinations',
  'OpenAI replaced GPT-5.3 Instant with GPT-5.5 Instant as the default model in ChatGPT. The new model delivers 52.5% fewer hallucinations on high-stakes prompts and integrates memory from past conversations, Gmail, and saved files for Plus and Pro users.',
  true
),
(
  'suno-series-d-5-billion-valuation',
  'en', 'business', 'Business', '#f5a623',
  'Axios', 'May 4, 2026',
  'Suno Raising Series D at $5 Billion Valuation — Up From $2.45B in November',
  'AI music platform Suno is raising a Series D round at a $5 billion valuation, more than doubling its November 2025 valuation of $2.45 billion. The company now has 2 million paid subscribers and generates 7 million tracks per day.',
  true
),
(
  'dalle-3-retired-gpt-image-2-replaces',
  'en', 'models', 'Models', '#7c6af7',
  'OpenAI Blog', 'May 12, 2026',
  'OpenAI Retires DALL-E 2 and DALL-E 3 — Replaced by gpt-image-2',
  'OpenAI officially retired DALL-E 2 and DALL-E 3 on May 12, 2026. Both are replaced by the gpt-image-2 model, which powers ChatGPT Images 2.0 with native 2K resolution, multilingual text rendering, and up to 8 images per prompt in thinking mode.',
  true
),
(
  'amazon-q-developer-replaced-by-kiro',
  'en', 'tools', 'New Tool', '#2dd4a0',
  'AWS Blog', 'May 15, 2026',
  'Amazon Q Developer IDE Plugin Replaced by Kiro — A New Spec-Driven Agentic IDE',
  'AWS blocked new Amazon Q Developer IDE plugin signups from May 15, 2026, announcing its replacement: Kiro, a spec-driven agentic IDE. Kiro uses "Specs" (natural-language requirements that drive full implementation) and "Hooks" (auto-triggers on file save or commit). IDE plugin support ends April 30, 2027.',
  true
),
(
  'krea-ai-krea-2-foundation-model',
  'en', 'tools', 'New Tool', '#2dd4a0',
  'Krea AI Blog', 'May 12, 2026',
  'Krea Launches Krea 2 — New Foundation Image Model Built From Scratch',
  'Krea AI released its Krea 2 foundation model, built from the ground up with a focus on aesthetics and style transfer. The launch accompanies Krea Nodes (build image workflows from text descriptions) and Krea Edit (region editing, relighting, image expansion). Seedance 2.0 is now available on all paid plans.',
  true
),
(
  'google-gemini-intelligence-android-2026',
  'en', 'models', 'Models', '#7c6af7',
  'Business Standard', 'May 13, 2026',
  'Google Announces Gemini Intelligence for Android — Automates Multi-Step Tasks on Samsung and Pixel',
  'At the Google Android Show 2026, Google announced Gemini Intelligence — a new layer that automates multi-step tasks like shopping, bookings, and calendar management directly on Android devices. Coming to Samsung and Google phones in summer 2026. Google also announced Googlebooks — new Android-powered laptops from Acer, ASUS, and Lenovo with Gemini built in.',
  true
);
