-- Батч новостей за 4–11 сентября 2026 (после openai-gpt-6-astra-launch от 3 сентября).
-- Неделя тихая: у Google в changelog за период пусто, у Anthropic одна публикация.
-- Источники:
--   OpenAI    — developers.openai.com/api/docs/pricing (Astra доступен, оговорка по EU)
--   Cursor    — cursor.com/changelog
--   Anthropic — anthropic.com/news
--   Kling     — kling.ai/document-api (официальное уведомление о выводе моделей)
--
-- Не взято: сворачивание платформы файн-тюнинга OpenAI — объявлено 7 мая 2026,
-- это не событие недели, хотя и продолжает висеть в документации.
--
-- Идемпотентность: DELETE перед INSERT по slug+lang.

DELETE FROM news WHERE lang = 'en' AND slug IN (
  'openai-gpt-6-astra-generally-available',
  'cursor-projects-subagents',
  'anthropic-threat-intelligence-sept-2026',
  'kling-legacy-models-retirement'
);

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published)
VALUES

-- 1 ─────────────────────────────────────────────────────────────────────────
('openai-gpt-6-astra-generally-available', 'en', 'models', 'Models', '#7c6af7', 'OpenAI', 'September 5, 2026',
 'GPT-6 Astra Leaves Limited Preview — With One Caveat for EU Data Residency',
 $$GPT-6 Astra is now generally available on the OpenAI API at $10 per million input tokens and $50 per million output tokens, two days after its announcement as a limited preview for trusted partners. One restriction applies: fast mode is not available for GPT-6 Astra under EU data residency.$$,
 $$<p><strong>GPT-6 Astra</strong> has moved from limited preview to general availability on the OpenAI API. It is listed at <strong>$10 per million input tokens and $50 per million output tokens</strong> for short context, unchanged from the announcement price.</p>
<h2>What changed</h2>
<p>On September 3 Astra was described as a limited preview for trusted partners. It is now on the public pricing page as an available model — a turnaround of days rather than the weeks or months such previews usually take.</p>
<p>One restriction is documented: <strong>fast mode is unavailable for GPT-6 Astra under EU data residency</strong>. Teams that route requests through EU endpoints for compliance reasons get the model but not the low-latency path.</p>
<h2>Why the EU caveat matters</h2>
<p>Data residency is not an optional extra for a lot of European organisations — it is the condition under which using a US model provider is permissible at all. A capability that exists everywhere except behind the residency boundary creates a two-tier experience where the teams with the strictest requirements get the slowest service.</p>
<p>It is worth reading as an infrastructure signal rather than a policy one. Fast mode usually depends on specific hardware in specific regions, and matching that footprint inside the EU takes longer than flipping a flag.</p>
<h2>Where it sits now</h2>
<p>OpenAI's lineup runs Astra at $10/$50 on top, with GPT-5.6 Sol at a promotional $4/$20 through November 21, Terra at $2/$12 and Luna at $0.20/$1.20 beneath. A 50x spread between the cheapest and most expensive model in one family is a wider range than the industry had a year ago.</p>
<p>Regional processing carries a 10% uplift for models released on or after March 5, 2026, so the EU price for Astra is higher than list as well as slower.</p>
<h2>What to do</h2>
<p>If you are evaluating Astra from Europe, benchmark on the residency endpoint rather than the default one — the numbers you get from a US endpoint will not be the numbers you run in production. For everyone else, the decision is the usual frontier-tier question: is the answer worth $50 per million output tokens on this specific task, or does a model ten times cheaper close the gap.</p>$$,
 true),

-- 2 ─────────────────────────────────────────────────────────────────────────
('cursor-projects-subagents', 'en', 'tools', 'Tools', '#2dd4a0', 'Cursor', 'September 10, 2026',
 'Cursor Launches Projects — a Coordinator Agent That Delegates to Thousands of Subagents',
 $$Cursor released Projects in beta to all users on September 10, 2026. A coordinator agent plans work and delegates to implementation agents, keeps context across months of development, runs in the cloud while your laptop is closed, and can perform recurring work without being prompted.$$,
 $$<p>Cursor has launched <strong>Projects</strong>, in beta to all users. It is aimed at work that does not fit in one session — features, migrations, whole applications — and it changes what the unit of work is.</p>
<h2>What it does</h2>
<p>A <strong>coordinator agent</strong> plans the work and delegates it to implementation agents. Cursor describes delegation to <strong>thousands of subagents</strong>, with execution in the cloud that continues <strong>while your laptop is closed</strong>.</p>
<p>Context is held in <strong>shared files that sync across all agents</strong> and accumulate over time, so the system is meant to get more effective at a given codebase the longer it works on it. Subscriptions let a project monitor Slack channels, run on a schedule and track pull requests — meaning it can act <strong>without being prompted</strong>.</p>
<h2>What is actually new here</h2>
<p>Not the agents. The coordination layer. Most agent tooling still assumes a person decomposes the task and supervises each piece; Projects moves decomposition into the system and keeps state across months rather than across one conversation.</p>
<p>Recurring unprompted work is the sharper change. An agent that acts on a schedule or a Slack message is closer to a background service than to an editor feature, and it needs to be managed like one.</p>
<h2>The trade-off</h2>
<p>Long-lived accumulated context is exactly what makes these systems useful and exactly what makes them hard to audit. When a coordinator delegates to many subagents over months, answering "why did it do that" requires the shared context files to be readable by a human, not just by the model.</p>
<p>The same applies to unprompted runs. Anything that can open a pull request on a schedule needs the same review discipline as a colleague who can — arguably more, because nobody is watching the clock on its behalf.</p>
<h2>Who should look at it</h2>
<p>Teams carrying long migrations or persistent maintenance backlogs — the work that never gets prioritised because it never fits in a sprint. That is the shape Projects is built for. For single-session tasks it adds coordination overhead without a payoff.</p>$$,
 true),

-- 3 ─────────────────────────────────────────────────────────────────────────
('anthropic-threat-intelligence-sept-2026', 'en', 'research', 'Research', '#4aaef5', 'Anthropic', 'September 10, 2026',
 'Anthropic Reports Disrupting Threat Actors Who Tried to Misuse Claude',
 $$Anthropic published its September 2026 threat intelligence report on September 10, describing operations its team identified and disrupted over the past eight months in which threat actors attempted to use Claude for malicious activity. The report includes case studies and documents how misuse patterns have evolved since the 2025 reports.$$,
 $$<p>Anthropic has published <strong>Detecting and countering misuse of AI: September 2026</strong>, its latest threat intelligence report. It covers operations the company identified and disrupted over the <strong>past eight months</strong>, in which threat actors tried to use Claude for malicious activity.</p>
<h2>What is in it</h2>
<p>Case studies of real attempts rather than hypotheticals, plus an account of how misuse patterns have <strong>evolved since the 2025 reports</strong>. That comparison over time is the part worth reading: it shows what adversaries stopped doing because it stopped working, and what they moved to instead.</p>
<p>The framing is disruption, not just detection. Anthropic says the operations were identified and shut down, which implies enforcement rather than passive monitoring.</p>
<h2>Why a model provider publishes this</h2>
<p>Partly accountability, partly deterrence, partly product. A vendor that publishes what it caught is making a claim about its own detection capability that customers can weigh.</p>
<p>It is also the second Anthropic publication in this vein in six weeks, after the late-July analysis of three real-world cybersecurity incidents. The cadence suggests this is becoming a standing report rather than an occasional one.</p>
<h2>What it means for anyone deploying AI</h2>
<p>The practical lesson is not about Claude specifically. Any capable model is a target for misuse, and any organisation deploying one with real permissions inherits part of that exposure.</p>
<p>Two things follow. First, evaluate a provider's enforcement posture alongside its benchmarks — a model that gets abused freely creates reputational and legal exposure for everyone building on it. Second, assume your own deployment is in scope: an agent with access to internal systems is a more attractive target than a chat window, and the controls should reflect that.</p>
<h2>Worth watching</h2>
<p>Whether the other frontier labs publish comparable reports. Right now there is no shared standard for what a provider discloses about misuse, which makes vendor comparison on this dimension mostly impossible.</p>$$,
 true),

-- 4 ─────────────────────────────────────────────────────────────────────────
('kling-legacy-models-retirement', 'en', 'tools', 'Tools', '#2dd4a0', 'Kling AI', 'September 15, 2026',
 'Kling AI Retires Six Video Models, Four Image Models and the Virtual Try-On API',
 $$Kling AI retires a large set of legacy models on September 15, 2026. Video models Kling 1.0, 1.5, 1.6, 2.0 Master, 2.1 and 2.1 Master go, along with Kling Image 1.0, 1.5, 2.0 and 2.0 New, the Virtual Try-On API and 119 video effect templates. Kling recommends Image 3.0 and 3.0 Omni as replacements.$$,
 $$<p>Kling AI has set <strong>September 15, 2026</strong> as the retirement date for a large block of legacy models and APIs. Anyone integrating with the platform has a hard deadline.</p>
<h2>What is being retired</h2>
<p><strong>Video models:</strong> Kling 1.0, Kling 1.5, Kling 1.6, Kling 2.0 Master, Kling 2.1 and Kling 2.1 Master.</p>
<p><strong>Image models:</strong> Kling Image 1.0, 1.5, 2.0 and 2.0 New.</p>
<p><strong>Also going:</strong> the Virtual Try-On API and <strong>119 video effect templates</strong> from the Video Effects Center.</p>
<p>Kling recommends <strong>Kling Image 3.0 and 3.0 Omni</strong> as alternatives. For virtual try-on it says a next-generation experience is in development, with no date given — so that capability has a gap rather than a migration path.</p>
<h2>What survives</h2>
<p>Content generated before the retirement date is unaffected and remains available. The shutdown removes the ability to call the old models, not the output already produced with them.</p>
<p>The current line is <strong>Kling 3.0 and 3.0 Omni, Kling 3.0 Turbo, Kling Image 3.0</strong> and Kling Motion.</p>
<h2>Why it matters</h2>
<p>Six video model versions disappearing at once is unusually aggressive. Most vendors stagger deprecations; Kling is clearing everything before 3.0 in a single date.</p>
<p>For anyone with production workflows pinned to a specific version, this is real migration work, and the deadline is days away rather than months. Generated output does not change, but prompts tuned against 2.1 will not behave identically on 3.0 — model upgrades shift style and timing even when they improve quality.</p>
<h2>What to do now</h2>
<p>Check which model IDs your integration actually calls. If any of the retiring versions appear, test the 3.0 equivalents against your own reference prompts before the 15th rather than after. Virtual Try-On users need a different plan entirely, since there is no replacement available yet.</p>
<h2>The wider pattern</h2>
<p>Video generation vendors are consolidating around single current lines rather than maintaining back catalogues, and the reason is cost: serving six versions of a video model means six sets of weights on expensive hardware. Text model providers can afford long legacy tails; video providers apparently cannot.</p>
<p>For anyone building on generative video, that argues for treating the model version as configuration rather than as a fixed assumption, and for keeping a reference set of prompts you can re-run whenever a vendor forces a move.</p>$$,
 true);

-- Проверка после прогона:
-- SELECT slug, date FROM news WHERE lang='en' AND date >= '2026-09-04' ORDER BY date;
-- Ожидается 4 строки.
