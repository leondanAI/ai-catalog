-- ============================================================
-- Add 5 new tools to mypedia.ai catalog
-- Run in Supabase SQL Editor: https://supabase.com/dashboard
-- ============================================================

INSERT INTO tools (slug, name, url, domain, category, badge, users, best_for, description, description_long, pros, cons, published)
VALUES

-- 1. OpenAI Sora
(
  'sora',
  'Sora',
  'https://sora.com',
  'sora.com',
  'video',
  'freemium',
  '10M+',
  'Text-to-video, cinematic AI clips',
  'OpenAI''s video generation model. Create realistic videos up to 20 seconds from text prompts or images.',
  'Sora is OpenAI''s flagship video generation model, publicly launched in late 2024 after months of viral previews. It produces photorealistic videos up to 20 seconds long from text descriptions or reference images — with an understanding of physics, motion and cinematic composition that rivals professional production tools.

The free tier allows limited generations at standard quality, while Plus and Pro subscribers get higher resolution, longer clips and priority access. Sora integrates directly with ChatGPT, allowing users to generate video from any conversation without switching platforms. The model is trained on a massive dataset of licensed video and can accurately render complex multi-character scenes, camera movements and light interactions.

Where Sora stands out is consistency — characters and environments remain coherent across the full clip, a weakness in many competing tools. It is the natural choice for ChatGPT users who want to extend their workflow into video without adopting a separate platform.',
  ARRAY[
    'Best physics and motion coherence of any AI video model — realistic lighting, shadows and fluid movement',
    'Deep ChatGPT integration — generate video directly from any conversation without switching platforms',
    'Up to 1080p resolution on Pro plan with consistent multi-character scenes'
  ],
  ARRAY[
    'Free tier limited to low-resolution short clips with watermark',
    'Slower generation than Kling or Pika for quick creative iterations'
  ],
  true
),

-- 2. Luma AI
(
  'luma-ai',
  'Luma AI',
  'https://lumalabs.ai',
  'lumalabs.ai',
  'video',
  'freemium',
  '5M+',
  'Realistic video, 3D scenes, Dream Machine',
  'Luma Dream Machine generates cinematic AI video and photorealistic 3D scenes from text or images. Ray2 model leads on realism.',
  'Luma AI is a San Francisco–based AI lab known for Dream Machine — its text-to-video and image-to-video model — and for pioneering neural radiance field (NeRF) 3D capture technology. The Ray2 model, released in early 2026, delivers the most photorealistic AI video output available at a consumer price point, with accurate material rendering and natural motion physics.

Dream Machine offers 30 free generations per month with no watermark, making it one of the most generous free tiers in AI video. The web interface is clean and fast — a prompt plus a reference image produces a 5-second clip in under two minutes. Luma excels at product visualisation, cinematic close-ups, and nature scenes where material quality matters most.

Beyond video, Luma''s 3D Capture app lets users scan real objects with an iPhone and convert them to photorealistic 3D assets usable in Blender, Unity or Unreal Engine. This dual capability — video and 3D — makes Luma a uniquely versatile tool for game developers, visual effects artists and product designers.',
  ARRAY[
    'Ray2 model delivers the most photorealistic material rendering of any AI video tool',
    '30 free generations per month with no watermark — most generous free tier in AI video',
    '3D Capture app turns iPhone scans into production-ready Blender, Unity or Unreal assets'
  ],
  ARRAY[
    'Maximum 5-second clip length on standard plan — not suitable for longer narratives',
    'Weaker on human characters and facial expressions compared to Kling or Runway'
  ],
  true
),

-- 3. Character.AI
(
  'character-ai',
  'Character.AI',
  'https://character.ai',
  'character.ai',
  'chat',
  'freemium',
  '200M+',
  'AI character chat, roleplay, creative writing',
  'Platform for creating and chatting with AI characters. 200M+ users for roleplay, storytelling and entertainment.',
  'Character.AI is one of the largest AI platforms in the world with over 200 million users — making it second only to ChatGPT in global AI chat usage. Founded by former Google Brain researchers Noam Shazeer and Daniel De Freitas, it lets users chat with thousands of pre-built AI characters or create their own with custom personalities, backstories and conversational styles.

The platform is primarily used for creative roleplay, interactive fiction, language practice and entertainment. Unlike general-purpose assistants, Character.AI characters stay in character throughout long conversations, making them ideal for immersive storytelling and creative writing partners. The free tier provides unlimited chat with all public characters, while the c.ai+ subscription removes generation delays and unlocks higher-quality responses.

Character.AI is especially popular with younger audiences and writers. Its memory system allows characters to remember context across sessions, and the creator tools let anyone publish a custom character to the public library — which now contains millions of community-built personas ranging from historical figures to fictional universes.',
  ARRAY[
    '200M+ users and millions of community-built characters — largest roleplay AI library available',
    'Characters maintain persona and memory across long conversations without breaking character',
    'Completely free with unlimited chat — no message limits on standard tier'
  ],
  ARRAY[
    'Not suitable for factual research or professional tasks — optimised for entertainment only',
    'Content moderation inconsistent — some inappropriate characters reach the public library'
  ],
  true
),

-- 4. Claude Design
(
  'claude-design',
  'Claude Design',
  'https://www.anthropic.com/claude/design',
  'anthropic.com',
  'design',
  'freemium',
  NULL,
  'AI slide decks, mockups, brand-consistent visuals',
  'Anthropic''s AI design tool. Create slides, mockups and marketing materials from a conversation — with automatic brand consistency across all outputs.',
  'Claude Design is Anthropic''s first dedicated design product, launched in April 2026 as part of Anthropic Labs. Built on Claude Opus 4.7, it turns natural language conversations into professional visual assets — slide decks, social media graphics, app mockups and interactive prototypes — with an understanding of brand context that sets it apart from generic image generators.

The standout feature is automatic brand system generation: Claude Design reads your existing codebase, design files or uploaded brand assets and builds a consistent visual system it applies to every output. Colours, fonts, spacing and tone are inferred and locked in — eliminating the manual work of maintaining brand consistency across dozens of assets. Real-time collaborative editing lets teams leave comments that Claude acts on directly, treating design feedback as instructions rather than annotations.

Claude Design is available to Claude Pro, Max, Team and Enterprise subscribers as part of their existing plans — no separate subscription required. It integrates with Gmail, Slack and Zoom for in-workflow content creation, and outputs are exportable to Figma and standard web formats.',
  ARRAY[
    'Automatic brand system generation from your existing codebase and design files — no manual setup',
    'Available at no extra cost for Claude Pro, Max, Team and Enterprise subscribers',
    'Real-time collaborative editing with comments that Claude acts on as instructions'
  ],
  ARRAY[
    'Currently in research preview — not yet available to all users',
    'Requires existing Claude subscription — not a standalone tool'
  ],
  true
),

-- 5. Manus
(
  'manus',
  'Manus',
  'https://manus.im',
  'manus.im',
  'agents',
  'freemium',
  '1M+',
  'Autonomous tasks, research, coding, web agents',
  'Autonomous AI agent from Monica team. Give it a complex goal — it browses the web, writes code, manages files and delivers a finished result independently.',
  'Manus is an autonomous AI agent developed by the Monica team that went viral globally in March 2026, becoming the most-discussed AI release since ChatGPT. Unlike AI assistants that respond to single prompts, Manus accepts a high-level goal — "research competitors and produce a report", "build a working web scraper", "analyse this dataset and email me a summary" — and executes it end-to-end without further input.

The agent operates a virtual computer: it opens browsers, navigates websites, writes and executes code, reads and writes files, and interacts with external services. Each task runs in an isolated sandboxed environment visible to the user in real time via a side-by-side activity feed. Unlike AutoGPT which frequently loops or halts, Manus completes a high percentage of tasks on the first run — a reliability benchmark that drove the viral adoption.

Manus supports a growing library of integrations including Google Workspace, Notion, GitHub and Slack. The free tier provides limited task credits per month, sufficient for evaluation. The product is built on top of Claude 3.7 Sonnet and specialised task models, with a roadmap toward fully custom agent training on enterprise workflows.',
  ARRAY[
    'Completes complex multi-step tasks end-to-end with minimal human input — highest task completion rate of any public agent',
    'Real-time activity feed shows every action the agent takes — full transparency and control',
    'Sandboxed virtual environment keeps all agent actions isolated and reversible'
  ],
  ARRAY[
    'Free tier credits run out quickly for intensive research or coding tasks',
    'Complex tasks with many steps can take 10–30 minutes — not suitable for time-sensitive work'
  ],
  true
);
