-- Батч новостей за 4 августа — 5 сентября 2026 (гэп после cursor-ipad от 3 августа).
-- Факты сверены по первоисточникам:
--   OpenAI    — developers.openai.com/api/docs/pricing (цены и наличие GPT-6 Astra)
--   Anthropic — anthropic.com/news
--   Google    — ai.google.dev/gemini-api/docs/changelog
--   Cursor    — cursor.com/changelog
-- Дата анонса GPT-6 Astra (3 сентября) — по совпадающим сообщениям CNBC, Wikipedia
-- и агрегаторов; официальная страница OpenAI и CNBC отдали 403 при проверке,
-- поэтому сам факт наличия и цена взяты с прайс-листа OpenAI, а дата помечена
-- как анонс, а не как проверенный первоисточник.
--
-- Идемпотентность: DELETE перед INSERT по slug+lang.

DELETE FROM news WHERE lang = 'en' AND slug IN (
  'openai-gpt-6-astra-launch',
  'anthropic-fable-mythos-51',
  'gemini-38-flash-ga',
  'gemini-omni-flash-ga-transcribe',
  'cursor-origin-code-hosting',
  'anthropic-model-hardware-standard',
  'anthropic-text-watermarking'
);

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published)
VALUES

-- 1 ─────────────────────────────────────────────────────────────────────────
('openai-gpt-6-astra-launch', 'en', 'models', 'Models', '#7c6af7', 'OpenAI', 'September 3, 2026',
 'OpenAI Announces GPT-6 Astra — a New Flagship at $10 / $50 per Million Tokens',
 $$OpenAI announced GPT-6 Astra, its new flagship model, on September 3, 2026. It is priced at $10 per million input tokens and $50 per million output tokens with a 1M-token context window, and started as a limited preview for trusted partners. OpenAI describes it as a generational leap for cybersecurity, software engineering, professional work and science.$$,
 $$<p>OpenAI has announced <strong>GPT-6 Astra</strong>, the first model in a new generation and now the top of its lineup. It appears on OpenAI's pricing page at <strong>$10 per million input tokens and $50 per million output tokens</strong>, with a <strong>1M-token context window</strong> and the API model ID <code>gpt-6-astra</code>.</p>
<h2>What was announced</h2>
<p>The model started as a <strong>limited preview for trusted partners</strong> rather than a general release. OpenAI positions it as a generational leap in cybersecurity, software engineering, professional work and science — a framing that puts capability and safety in the same sentence, which is unusual for a launch announcement.</p>
<p>The release also followed a delay. After a security incident in July 2026, OpenAI held the model back to add further safeguards before shipping.</p>
<h2>What the price says</h2>
<p>At $10/$50 Astra sits at the same list price as Claude Fable 5 and ten times above OpenAI's own GPT-5.6 Terra. That gap is the real signal: the frontier tier and the workhorse tier have separated into different products with different economics, rather than one ladder where each rung is modestly more expensive than the last.</p>
<p>The GPT-5.6 family stays in place underneath — Luna at $0.20/$1.20, Terra at $2/$12, and Sol now at a promotional $4/$20 through November 21, 2026. Astra is not a replacement for those; it is a separate, much more expensive class.</p>
<h2>Why it matters</h2>
<p>For most production workloads nothing changes on day one. A model at $50 per million output tokens is not what you put behind a high-volume classification pipeline. It is what you reach for when a single answer is worth real money — security review, complex refactors, research-grade analysis.</p>
<p>The more interesting question is what it does to the tier below. Every previous frontier launch has pushed the older flagship down in price within a quarter or two. If that pattern repeats, the practical effect of Astra will be felt by teams who never call it directly.</p>
<h2>What to watch</h2>
<p>Two things worth tracking: when the limited preview opens to general availability, and whether the safety framing translates into published evaluation results. A vendor claiming a leap in cybersecurity capability is also claiming a leap in cybersecurity risk, and the useful version of that claim comes with numbers.</p>$$,
 true),

-- 2 ─────────────────────────────────────────────────────────────────────────
('anthropic-fable-mythos-51', 'en', 'models', 'Models', '#7c6af7', 'Anthropic', 'September 1, 2026',
 'Anthropic Ships Claude Fable 5.1 and Mythos 5.1 With Enterprise Frontier Safeguards',
 $$Anthropic released Claude Fable 5.1 and Claude Mythos 5.1 on September 1, 2026, describing them as its most advanced models for coding and knowledge work. Alongside the models it announced Enterprise Frontier Safeguards, a set of controls developed together with customers.$$,
 $$<p>Anthropic has released <strong>Claude Fable 5.1</strong> and <strong>Claude Mythos 5.1</strong>, calling them its most advanced models for coding and knowledge work. The release landed on September 1, 2026.</p>
<h2>What shipped</h2>
<p>Two models rather than one, continuing the split Anthropic introduced with the Mythos class: Fable as the widely released frontier line, Mythos as the higher-capability tier. Both are point-one releases, which historically means capability and reliability improvements on the same architecture rather than a new generation.</p>
<p>Shipping alongside them is <strong>Enterprise Frontier Safeguards</strong>, described as developed with customers. The detail worth noting is the process, not the label: safeguards designed with the organisations that have to operate them tend to survive contact with production better than ones designed in isolation.</p>
<h2>Where it sits</h2>
<p>The Claude lineup now runs Fable 5.1 and Mythos 5.1 at the top, with Opus 5, Sonnet 5 and Haiku 4.5 below. Opus 4.8 and everything older moved to Anthropic's legacy list earlier in the summer.</p>
<p>The timing is not accidental. OpenAI announced GPT-6 Astra two days later, and Google moved Gemini 3.8 Flash to general availability the day after this release. Three frontier announcements inside seventy-two hours is the tightest cluster the industry has produced so far.</p>
<h2>Why it matters</h2>
<p>For teams already on Claude, a point-one release is usually the cheapest upgrade available: same integration, better output. The work is re-running your own evaluation set rather than rebuilding anything.</p>
<p>For everyone else, the useful signal is cadence. Frontier labs are now shipping meaningful capability jumps every few weeks rather than every few quarters. Any architecture that hard-codes a specific model name is going to need revisiting more often than its authors expected — which is an argument for keeping the model choice behind a configuration boundary rather than scattered through the codebase.</p>
<h2>What to check</h2>
<p>Whether Fable 5.1 changes pricing from Fable 5's $10/$50, and whether the Enterprise Frontier Safeguards are available to all tiers or only to enterprise agreements. Both determine who actually benefits.</p>$$,
 true),

-- 3 ─────────────────────────────────────────────────────────────────────────
('gemini-38-flash-ga', 'en', 'models', 'Models', '#7c6af7', 'Google', 'September 2, 2026',
 'Gemini 3.8 Flash Reaches General Availability for Long-Horizon Agent Work',
 $$Google moved gemini-3.8-flash to general availability on September 2, 2026, positioning it for long-horizon software engineering, autonomous agents and complex enterprise workflows. The day before, agentic video understanding launched across the Flash models, using up to 88% fewer tokens on long-form content than static processing.$$,
 $$<p>Google has moved <strong>gemini-3.8-flash</strong> to general availability. Unlike previous Flash releases, which were positioned on speed and price, this one is aimed at <strong>long-horizon software engineering, autonomous agents and complex enterprise workflows</strong>.</p>
<h2>What changed</h2>
<p>That positioning is the news. Flash has always been the cheap, fast tier you call thousands of times inside a system. Google is now pitching it at exactly the workload that used to require the flagship: agents that run for a long time and have to keep track of what they were doing.</p>
<p>A day earlier, on September 1, <strong>agentic video understanding</strong> shipped across the Flash models. Google reports it uses <strong>up to 88% fewer tokens for long-form content</strong> than static frame-by-frame processing.</p>
<h2>Why the token number matters</h2>
<p>On long-running agent tasks the bill is driven by how many tokens the model consumes deciding what to do, not by the sticker price per million. An 88% reduction on video input changes which video workloads are affordable at all — a full-length recording that cost dollars to analyse now costs cents.</p>
<p>It also explains the repositioning. If the cheap tier can hold context efficiently over long runs, the reason to reach for a flagship on agentic work gets weaker.</p>
<h2>The wider pattern</h2>
<p>Google shipped this two days after Anthropic's Fable 5.1 and one day before OpenAI announced GPT-6 Astra. But where the other two competed on frontier capability, Google competed on cost per unit of work. Those are different bets about what the market buys next.</p>
<h2>What to do about it</h2>
<p>If you have agent workloads currently pinned to a flagship model because of context handling, this is worth re-benchmarking. The interesting comparison is not benchmark scores but total tokens consumed per completed task — that is where a Flash-tier model competing on efficiency either wins or does not.</p>
<p>Worth remembering that Google deprecated the temperature, top_p and top_k sampling parameters on its recent Flash models. Code moving to 3.8 should not be passing them.</p>$$,
 true),

-- 4 ─────────────────────────────────────────────────────────────────────────
('gemini-omni-flash-ga-transcribe', 'en', 'models', 'Models', '#7c6af7', 'Google', 'August 27, 2026',
 'Gemini Omni Flash Hits GA With 4K Video, and Two Speech-to-Text Models Follow',
 $$Google moved gemini-omni-1.1-flash to general availability on August 27, 2026, adding video extension, interpolation between images and resolution control up to 4K; its preview endpoint shuts down September 30, 2026. A day earlier, Gemini 3.5 Transcribe and Transcribe Live reached GA with support for 85+ languages, speaker diarization and word-level timestamps.$$,
 $$<p>Google moved two families of models out of preview in the same week, both aimed at media rather than text.</p>
<h2>Gemini Omni Flash</h2>
<p><strong>gemini-omni-1.1-flash</strong> reached general availability on August 27 with three new capabilities: <strong>video extension</strong>, <strong>interpolation between images</strong>, and <strong>resolution control up to 4K</strong>. The preview endpoint it replaces is scheduled to shut down on <strong>September 30, 2026</strong>, so anyone still calling it has a hard date.</p>
<p>Resolution control up to 4K is the practical headline. Generated video that tops out below broadcast resolution is a demo; video that reaches 4K is something a production team can actually use without an upscaling step.</p>
<h2>Speech to text</h2>
<p>A day earlier, on August 26, <strong>gemini-3.5-transcribe</strong> and <strong>gemini-3.5-transcribe-live</strong> both reached GA. They support <strong>85+ languages</strong> with <strong>speaker diarization</strong> and <strong>word-level timestamps</strong>.</p>
<p>Those last two features are what separate a transcription toy from a transcription product. Diarization tells you who spoke; word-level timestamps let you build search, captions and editing on top. The live variant covers real-time use, where the constraint is latency rather than accuracy.</p>
<h2>Why it matters</h2>
<p>Speech-to-text with diarization across 85+ languages, available as a general API, puts direct pressure on the standalone transcription market. Tools in that category have historically competed on exactly those two features.</p>
<p>The same applies to video generation. Every capability that moves from a specialised vendor into a general-purpose API from Google, OpenAI or Anthropic narrows what the specialist has left to sell — usually workflow, integrations and support rather than the underlying model.</p>
<h2>What to check</h2>
<p>If you use the Omni Flash preview endpoint, migrate before September 30. And if you pay for a transcription service, it is worth pricing the same job through the API — the answer may not favour switching, but the gap is smaller than it was.</p>$$,
 true),

-- 5 ─────────────────────────────────────────────────────────────────────────
('cursor-origin-code-hosting', 'en', 'tools', 'Tools', '#2dd4a0', 'Cursor', 'August 17, 2026',
 'Cursor Adds Its Own Code Hosting — and Agents That Start Without a Repo',
 $$Cursor launched Origin, built-in code repository hosting in early beta, on August 17, 2026, with bidirectional GitHub sync, pull request management and integrations for Vercel, Depot and Buildkite. Ten days later Cloud Agents gained the ability to start without any version control at all, creating Origin repos in the background. Self-hosted machines followed on September 2.$$,
 $$<p>Cursor spent August turning an editor into infrastructure. Three releases, and together they describe a clear direction.</p>
<h2>Origin: Cursor hosts your code</h2>
<p>On August 17 Cursor launched <strong>Origin</strong>, built-in code repository hosting, in early beta. It syncs with GitHub repositories bidirectionally in real time, manages pull requests with GitHub sync, and integrates with <strong>Vercel, Depot and Buildkite</strong>.</p>
<p>An AI editor shipping its own code host is a significant move. It means the agent no longer has to reach across an API boundary to read history, open branches or manage reviews.</p>
<h2>Agents without a repository</h2>
<p>On August 27 Cloud Agents stopped requiring GitHub or any third-party version control to begin work. An agent now creates an Origin repo in the background, and the work can be converted to a permanent repository later with a chosen name and visibility. Live browser preview and Vercel publishing are included.</p>
<p>This removes the setup step entirely: describe a task, get working code with history, decide afterwards whether it deserves to be a real project.</p>
<h2>Self-hosted machines</h2>
<p>On September 2 Cursor added <strong>self-hosted machines</strong>, keeping tool execution inside your own network. There are personal machines and team pools, computer use on Linux and Mac with desktop control, and support for AWS Lambda, Coder, Cloudflare, Daytona and Modal.</p>
<p>That is the enterprise unlock. Plenty of organisations cannot let an agent execute code on a vendor's infrastructure, and this addresses that objection directly.</p>
<h2>Why it matters</h2>
<p>Read together, these three changes move Cursor from "AI features in an editor" to a place where code lives, runs and ships. Which also means the switching cost is climbing: a repo in Origin, agents configured around it and execution on your own machines is a much deeper commitment than an editor you can swap.</p>
<p>Worth weighing before adopting Origin as anything other than a mirror. Bidirectional GitHub sync makes that easy to do safely — keep GitHub authoritative and let Origin be the working copy.</p>$$,
 true),

-- 6 ─────────────────────────────────────────────────────────────────────────
('anthropic-model-hardware-standard', 'en', 'research', 'Research', '#4aaef5', 'Anthropic', 'August 27, 2026',
 'Anthropic Previews a Model Hardware Standard for AI Agents Running Physical Devices',
 $$Anthropic unveiled the Model Hardware Standard as a research preview on August 27, 2026 — a specification for AI agents operating physical devices. It is initially available to scientific research labs and advanced manufacturers rather than as a general release.$$,
 $$<p>Anthropic has published a research preview of the <strong>Model Hardware Standard (MHS)</strong>, a specification for AI agents that operate physical devices. Access is limited at launch to <strong>scientific research labs and advanced manufacturers</strong>.</p>
<h2>What it is</h2>
<p>A standard rather than a product. The distinction matters: Anthropic is not shipping a robot or a control system, it is proposing how models and physical hardware should talk to each other.</p>
<p>The restricted rollout is itself informative. Software agents that make mistakes produce bad output; agents controlling physical devices produce physical consequences. Limiting early access to labs and manufacturers is what caution looks like when the failure mode leaves the screen.</p>
<h2>The pattern</h2>
<p>This follows the Model Context Protocol, which Anthropic released to standardise how models connect to software tools and which was subsequently adopted well beyond Anthropic's own products. MHS applies the same play to hardware.</p>
<p>Whoever defines the interface shapes the ecosystem built on top of it. MCP demonstrated that a standard published early and openly can become the default before competitors publish theirs.</p>
<h2>Where it fits with everything else</h2>
<p>Google opened public preview of Gemini Robotics ER 2 in late July with multi-robot coordination. Two frontier labs investing in embodied agents within a month of each other is not coincidence — it is a shared read that the next capability frontier is physical rather than textual.</p>
<h2>Why it matters to our readers</h2>
<p>Almost nobody reading this will apply for MHS access. It matters because capabilities developed for embodied agents surface in ordinary products first: spatial reasoning improves screen control, and precise device operation improves computer use. The tools you already pay for get better before any robot arrives.</p>
<p>It is also worth noting what a hardware standard implies about trajectory. A lab that publishes how models should drive physical devices expects models to be driving physical devices at scale — and expects that to happen soon enough to be worth standardising now.</p>$$,
 true),

-- 7 ─────────────────────────────────────────────────────────────────────────
('anthropic-text-watermarking', 'en', 'research', 'Research', '#4aaef5', 'Anthropic', 'August 14, 2026',
 'Anthropic Explains How Text Watermarking Works in Claude Outputs',
 $$Anthropic published an explanation on August 14, 2026 of how it implements text watermarking and what effect it has on Claude's outputs. The post covers the mechanism itself rather than announcing a new product feature.$$,
 $$<p>Anthropic has published an explanation of <strong>text watermarking</strong> in Claude's outputs — how it is implemented and what effect it has on generated text.</p>
<h2>What was published</h2>
<p>An explanation, not a launch. The post addresses the mechanism and its consequences for output quality, which is the question anyone relying on Claude for production text actually cares about.</p>
<p>Watermarking embeds a statistical signal in generated text that survives normal use but can be detected by someone holding the key. The trade-off is always the same: a stronger signal is easier to detect and more likely to constrain word choice.</p>
<h2>Why a vendor explains this</h2>
<p>Because the alternative is customers finding out another way. Anyone publishing at scale with an AI assistant has a reasonable interest in knowing whether the output carries a detectable marker, and a vendor that documents it plainly avoids the worse version of that conversation later.</p>
<p>Regulatory pressure is the other half. Several jurisdictions have moved toward requiring AI-generated content to be identifiable, and provenance mechanisms shipped before a mandate arrive on the vendor's terms rather than a regulator's.</p>
<h2>What it means in practice</h2>
<p>For most work, nothing. Watermarking is designed not to degrade quality noticeably, and Anthropic's post is largely about demonstrating that.</p>
<p>Where it does matter: if your business depends on AI-generated text being indistinguishable from human writing, that assumption now has a documented mechanism working against it. That is not a bug — detectability is the point — but it is worth knowing rather than discovering.</p>
<h2>The broader direction</h2>
<p>Provenance is becoming table stakes across the industry, from image credentials to text watermarking. The practical question for anyone building on these models is shifting from whether outputs can be identified to who holds the detection key and under what conditions they use it.</p>
<h2>What to keep an eye on</h2>
<p>Two open questions follow from this. First, whether detection stays in Anthropic's hands or is offered to third parties — a marker only the vendor can read has very different consequences from one any platform can check. Second, whether the other frontier labs document their own approaches; right now the industry has a patchwork of provenance schemes with no shared standard, and content moving between tools may pick up or lose signals along the way.</p>$$,
 true);

-- Проверка после прогона:
-- SELECT slug, date, category FROM news WHERE lang='en' AND date >= '2026-08-04' ORDER BY date;
-- Ожидается 7 строк.
