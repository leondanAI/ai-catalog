-- Батч новостей за 4–11 сентября 2026 (после openai-gpt-6-astra-launch от 3 сентября).
-- Неделя тихая: у Google в changelog за период пусто, у Anthropic одна публикация.
-- Источники:
--   OpenAI    — developers.openai.com/api/docs/pricing (Astra доступен, оговорка по EU)
--   Cursor    — cursor.com/changelog
--   Anthropic — anthropic.com/news
--   Kling     — kling.ai/document-api (официальное уведомление о выводе моделей)
--   NYC        — nyc.gov, пресс-релиз мэрии + CNN, Washington Post, Al Jazeera
--   EU AI Act  — digital-strategy.ec.europa.eu, artificialintelligenceact.eu
--
-- Добавлены две новости категории regulation: раньше она у нас пустовала,
-- хотя именно общественная и юридическая сторона ИИ обсуждается шире всего.
-- Обе датированы днём самого события, а не днём публикации: запрет в школах
-- Нью-Йорка — 2 сентября, вступление в силу полномочий по EU AI Act — 2 августа.
--
-- Не взято: сворачивание платформы файн-тюнинга OpenAI — объявлено 7 мая 2026,
-- это не событие недели, хотя и продолжает висеть в документации.
--
-- Идемпотентность: DELETE перед INSERT по slug+lang.

DELETE FROM news WHERE lang = 'en' AND slug IN (
  'openai-gpt-6-astra-generally-available',
  'cursor-projects-subagents',
  'anthropic-threat-intelligence-sept-2026',
  'kling-legacy-models-retirement',
  'nyc-schools-generative-ai-ban',
  'eu-ai-act-enforcement-powers-live'
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
 true),

-- 5 ─────────────────────────────────────────────────────────────────────────
('nyc-schools-generative-ai-ban', 'en', 'regulation', 'Regulation', '#f56565', 'NYC Mayor''s Office', 'September 2, 2026',
 'New York City Bans Generative AI for 600,000 Students Through 8th Grade',
 $$New York City, the largest school district in the United States, imposed a one-year moratorium on student-facing generative AI from 2K through 8th grade on September 2, 2026. It affects nearly 600,000 students, roughly two thirds of enrolment, and disables AI features in more than 38 previously approved programs. Teachers may still use AI for lesson planning, and high schoolers get twice-yearly AI literacy classes.$$,
 $$<p>New York City has imposed a <strong>one-year moratorium on student-facing generative AI</strong> from 2K through 8th grade — the broadest such restriction in the United States, in its largest school district.</p>
<h2>What the policy covers</h2>
<p>The moratorium reaches <strong>nearly 600,000 students</strong>, roughly two thirds of the district's enrolment. It applies to <strong>all software with student-facing generative AI</strong>, and the district will <strong>discontinue or disable AI components in more than 38 previously approved programs</strong> that do not meet new safety and oversight standards.</p>
<p>Two things it does not do: teachers may still use AI to build lesson plans, and high school students are unaffected. The city is also introducing <strong>twice-yearly AI literacy classes for all public high school students</strong>.</p>
<h2>The stated reasoning</h2>
<p>Officials framed it around protecting students' critical thinking and the student-teacher relationship, arguing the technology has no proven benefit at those ages. That is a claim about evidence rather than about risk — a different argument from the safety and privacy concerns that drove earlier school restrictions.</p>
<h2>Why it matters beyond New York</h2>
<p>District-level decisions of this size set procurement precedent. Education technology vendors that shipped AI features to win contracts now have a reference case where those same features got a product disabled, and other districts tend to follow the largest one.</p>
<p>The pairing is the interesting part: ban the tools for younger students, teach the subject to older ones. That is a position about sequencing rather than opposition — use comes after understanding.</p>
<h2>What to watch</h2>
<p>Whether the moratorium is renewed after a year, and what evidence gets produced to justify renewing or lifting it. A one-year term with a stated evidentiary rationale is a testable policy, which is more than most technology restrictions offer.</p>
<p>For anyone building education tools, the practical lesson is that AI features now carry procurement risk in both directions — absent, they look dated; present, they can disqualify a product entirely.</p>$$,
 true),

-- 6 ─────────────────────────────────────────────────────────────────────────
('eu-ai-act-enforcement-powers-live', 'en', 'regulation', 'Regulation', '#f56565', 'European Commission', 'August 2, 2026',
 'EU AI Act Enforcement Goes Live — Fines up to 3% of Global Turnover for General-Purpose Models',
 $$Enforcement powers under the EU AI Act became applicable on August 2, 2026. The European Commission and its AI Office can now request documentation, run technical evaluations of models, demand risk mitigation, restrict or withdraw a model from the EU market, and fine providers up to 3% of global annual turnover or EUR 15 million, whichever is higher. Refusing to cooperate is itself finable.$$,
 $$<p>The EU AI Act moved from obligation to enforcement on <strong>August 2, 2026</strong>. The rules for general-purpose AI models had applied since August 2025, with a one-year adjustment period; that period is over.</p>
<h2>What the Commission can now do</h2>
<p>The Commission and its AI Office can <strong>request documentation</strong>, <strong>run technical evaluations of models</strong>, <strong>demand compliance and risk-mitigation measures</strong>, and <strong>restrict or withdraw a model from the EU market</strong>.</p>
<p>Fines reach <strong>3% of global annual turnover or EUR 15 million, whichever is higher</strong>. Refusing or stalling on a request is itself a finable offence — so non-cooperation is not a strategy.</p>
<h2>What providers must have</h2>
<p>General-purpose model providers need technical documentation, a copyright policy, and a <strong>public summary of the content used for training</strong>. Models judged to carry systemic risk carry additional safety and security duties.</p>
<p>The training-data summary is the provision with teeth for the content industry: it exists specifically so rights holders can see whether their work was used and act on it. Obligations apply to models offered in the EU regardless of where training happened.</p>
<h2>Labelling</h2>
<p>Article 50 requires AI-generated content to be labelled and machine-readable. That is the regulatory context for the provenance work vendors have been shipping — Anthropic published its text watermarking approach in August, and image credentials have been spreading for longer. Those are not only goodwill gestures.</p>
<h2>Why it matters</h2>
<p>For most teams building on these models, nothing changes directly — the obligations sit with providers, not with everyone who calls an API. What changes is the risk that a model you depend on becomes unavailable in the EU, or that its terms shift to satisfy a regulator.</p>
<p>Providers of models released before August 2, 2025 have until <strong>August 2, 2027</strong> to comply, so the older end of the market has another year. The practical takeaway is the same as for pricing: avoid architectures that assume one specific model will always be there.</p>$$,
 true);

-- Проверка после прогона:
-- SELECT slug, date FROM news WHERE lang='en' AND date >= '2026-09-04' ORDER BY date;
-- Ожидается 4 строки.
