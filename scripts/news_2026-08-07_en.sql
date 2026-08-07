-- Батч новостей за 25 июля — 7 августа 2026 (гэп после claude-opus-5 от 24 июля).
-- Все факты сверены по первоисточникам, не по агрегаторам:
--   OpenAI     — developers.openai.com/api/docs/pricing
--   Google     — ai.google.dev/gemini-api/docs/changelog
--   DeepSeek   — api-docs.deepseek.com/quick_start/pricing
--   Anthropic  — anthropic.com/news
--   Cursor     — cursor.com/changelog
-- Отброшено после проверки: Adobe «Wonder», MGX $49B, Prometheus $12B, Harvey $8B —
-- подтверждаются только агрегаторами, первоисточников нет.
--
-- Идемпотентность: DELETE перед INSERT по slug+lang, повторный прогон безвреден.

DELETE FROM news WHERE lang = 'en' AND slug IN (
  'openai-gpt-56-luna-80-percent-price-cut',
  'gemini-36-flash-ga-sampling-params-deprecated',
  'gemini-robotics-er-2-public-preview',
  'deepseek-v4-flash-0731-price-rise-warning',
  'anthropic-cybersecurity-incident-findings',
  'anthropic-open-weights-position-cognizant',
  'cursor-ipad-workspace-start-plan'
);

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published)
VALUES

-- 1 ─────────────────────────────────────────────────────────────────────────
('openai-gpt-56-luna-80-percent-price-cut', 'en', 'models', 'Models', '#7c6af7', 'OpenAI', 'July 30, 2026',
 'OpenAI Cuts GPT-5.6 Luna to $0.20 per Million Input Tokens — an 80% Reduction',
 $$OpenAI dropped the price of GPT-5.6 Luna to $0.20 per million input tokens and $1.20 per million output tokens. Luna launched at $1 per million input tokens, so this is an 80% cut. The rest of the family holds at Terra $2/$12 and Sol $5/$30 per million tokens.$$,
 $$<p>OpenAI has cut the price of <strong>GPT-5.6 Luna</strong>, the entry model of the GPT-5.6 family, to <strong>$0.20 per million input tokens and $1.20 per million output tokens</strong>. Luna launched at $1 per million input tokens — the new figure is an 80% reduction on the input side.</p>
<h2>What changed</h2>
<p>The three-model lineup now prices out as follows: <strong>Luna at $0.20 / $1.20</strong>, <strong>Terra at $2 / $12</strong> and <strong>Sol at $5 / $30</strong> per million tokens. Only Luna moved; Terra and Sol are unchanged.</p>
<p>Batch processing runs at half the standard rate across all three, and long-context requests are billed at roughly double the short-context rate — so the effective price depends heavily on how a workload is shaped, not just which model is picked.</p>
<h2>Where this sits in the market</h2>
<p>Luna at $0.20 input lands in the same bracket as DeepSeek V4-Flash at $0.14 and Google's Flash-Lite tier. Twelve months ago the cheapest credible frontier-adjacent option cost several dollars per million input tokens. The floor has moved by an order of magnitude, and it moved fastest in the last quarter.</p>
<h2>Why it matters</h2>
<p>For anything high-volume — classification, extraction, routing, first-pass summarisation — the model bill stops being the constraint at these levels. That changes which products are worth building: workflows that were uneconomic at $1 per million inputs become viable at $0.20.</p>
<p>The flip side is that price alone no longer separates the cheap tier. When four vendors sit within a few cents of each other, the decision moves to latency, context handling, tool-calling reliability and how the provider behaves when it needs to raise prices later.</p>
<h2>What to watch next</h2>
<p>A cut this size usually signals capacity rather than generosity. Inference gets cheaper when a provider has spare hardware and an efficient serving stack, and prices follow. The question for anyone budgeting on these numbers is whether the floor holds — DeepSeek has already said publicly that its own prices are going back up.</p>
<p>The practical move is to treat the cheap tier as interchangeable. Keep prompts portable, avoid leaning on provider-specific features for the highest-volume paths, and re-benchmark quarterly. At these prices the switching decision should be driven by quality on your own evaluation set, not by a table of list prices that changes every few weeks.</p>$$,
 true),

-- 2 ─────────────────────────────────────────────────────────────────────────
('gemini-36-flash-ga-sampling-params-deprecated', 'en', 'models', 'Models', '#7c6af7', 'Google', 'July 21, 2026',
 'Gemini 3.6 Flash and 3.5 Flash-Lite Hit GA — and Google Deprecates Sampling Parameters',
 $$Google moved gemini-3.6-flash and gemini-3.5-flash-lite to general availability. 3.6 Flash brings better token efficiency and stronger code and agentic planning at a lower price point; Flash-Lite targets low-latency subagent work. A breaking change ships with them: temperature, top_p and top_k are deprecated for both models.$$,
 $$<p>Google has moved two models to general availability: <strong>gemini-3.6-flash</strong> and <strong>gemini-3.5-flash-lite</strong>. Both are now stable endpoints rather than previews.</p>
<h2>What changed</h2>
<p><strong>Gemini 3.6 Flash</strong> ships with improved token efficiency and better code and agentic planning at a lower price point than the model it replaces. The token-efficiency claim matters more than it sounds: on long agentic runs the bill is driven by how many tokens the model spends thinking, not by the sticker price per million.</p>
<p><strong>Gemini 3.5 Flash-Lite</strong> is positioned as a low-latency, cost-effective subagent option — the model you call thousands of times inside a larger system rather than the one a user talks to.</p>
<h2>The breaking change</h2>
<p>Shipping alongside GA is a change that will break existing code: <strong>the temperature, top_p and top_k sampling parameters are deprecated for both models</strong>. Code that passes them needs review. This is a real shift in posture — those three knobs have been standard across generative APIs since the beginning, and removing them means the model decides its own sampling behaviour.</p>
<h2>Why it matters</h2>
<p>Deprecating sampling controls trades user tuning for vendor control. For most applications the defaults were already fine, and fewer knobs means fewer ways to misconfigure a deployment. For teams that spent real effort tuning temperature per use case, that work is now obsolete.</p>
<p>Notably absent from this release is Gemini 3.5 Pro, which has now slipped past several expected windows. Google shipped the fast, cheap tier and left the flagship for later.</p>
<h2>What to do about it</h2>
<p>Audit any code path that sets temperature, top_p or top_k against these two models and plan to remove it. Deprecation is not immediate removal, but it is a commitment, and silently ignored parameters are worse than errors — output changes and nothing tells you why.</p>
<p>Where determinism actually matters, the replacement is structural rather than parametric: constrain the output format, validate what comes back, and retry on failure. That approach survives model upgrades in a way that a tuned temperature value never did.</p>
<h2>The pattern across vendors</h2>
<p>Google is not alone here. The industry has been steadily removing low-level controls in favour of models that manage their own inference behaviour, and reasoning models made most sampling tweaks meaningless anyway. Expect the surface area of these APIs to keep shrinking.</p>$$,
 true),

-- 3 ─────────────────────────────────────────────────────────────────────────
('gemini-robotics-er-2-public-preview', 'en', 'models', 'Models', '#7c6af7', 'Google', 'July 30, 2026',
 'Gemini Robotics ER 2 Enters Public Preview With Multi-Robot Coordination',
 $$Google opened public preview for Gemini Robotics ER 2 with two endpoints: gemini-robotics-er-2-preview for advanced spatial reasoning and multi-robot coordination, and a streaming variant optimised for real-time use through the Live API. The previous generation, gemini-robotics-er-1.6-preview, shuts down on August 31, 2026.$$,
 $$<p>Google has opened <strong>public preview for Gemini Robotics ER 2</strong>, the embodied-reasoning line aimed at robotics rather than chat.</p>
<h2>What shipped</h2>
<p>Two endpoints are available. <strong>gemini-robotics-er-2-preview</strong> handles advanced spatial reasoning and <strong>multi-robot coordination</strong> — planning across several machines working in the same space rather than driving one in isolation. <strong>gemini-robotics-er-2-streaming-preview</strong> is optimised for real-time text streaming through the Live API, for cases where a robot cannot wait for a complete response before acting.</p>
<h2>Migration deadline</h2>
<p>The previous generation, <strong>gemini-robotics-er-1.6-preview, will be shut down on August 31, 2026</strong>. Anyone building on 1.6 has a hard date to move by. Preview endpoints carry no stability guarantee, and this is a reminder of what that means in practice.</p>
<h2>Why it matters</h2>
<p>Multi-robot coordination is the interesting part. Single-arm manipulation is a solved-enough problem that the frontier has moved to machines that share a workspace and have to reason about each other. That is the difference between a demo and a warehouse.</p>
<p>The streaming endpoint points at the same shift. Robotics has a latency budget that chat does not — a response that arrives after the moment has passed is worse than no response. Building a dedicated streaming path suggests the constraint is being taken seriously rather than papered over.</p>
<p>This remains preview software with a deprecation already scheduled for its predecessor. Useful for evaluation, not something to build a production line on yet.</p>
<h2>Reading the deprecation</h2>
<p>The shutdown of ER 1.6 on August 31 arriving on the same day as ER 2's preview is worth noting on its own. Roughly a month of overlap is a short migration window for robotics work, where changes have to be validated against physical hardware rather than a test suite.</p>
<p>Anyone evaluating this line should assume the same cadence applies going forward and budget for it. Preview endpoints in robotics carry a cost that preview endpoints in chat do not: the integration work sits partly in the physical setup, and that does not port automatically.</p>
<h2>Where it fits</h2>
<p>For most of our audience this is context rather than a tool to adopt today. It matters because embodied reasoning is where the large labs are spending next, and the capabilities land in adjacent products — spatial reasoning improvements show up in video understanding and screen control well before they show up in a warehouse.</p>$$,
 true),

-- 4 ─────────────────────────────────────────────────────────────────────────
('deepseek-v4-flash-0731-price-rise-warning', 'en', 'models', 'Models', '#7c6af7', 'DeepSeek', 'July 31, 2026',
 'DeepSeek V4-Flash 0731 Lands at $0.14 per Million — With a Warning That Prices Are Going Up',
 $$DeepSeek released V4-Flash version 0731 at $0.14 per million input tokens and $0.28 output, with a 1M context window and both thinking and non-thinking modes. Cache hits cost $0.0028 per million. The pricing documentation carries an explicit warning: DeepSeek plans to raise API prices, with a significant increase expected.$$,
 $$<p>DeepSeek has released <strong>V4-Flash version 0731</strong>, keeping the aggressive pricing the line is known for — and attaching an unusual warning to it.</p>
<h2>The numbers</h2>
<p>V4-Flash costs <strong>$0.14 per million input tokens on a cache miss and $0.28 per million output tokens</strong>. A cache hit drops the input cost to <strong>$0.0028 per million</strong> — fifty times cheaper, which makes prompt structure a first-order cost decision rather than an optimisation detail.</p>
<p>The larger <strong>V4-Pro</strong> sits at $0.435 input and $0.87 output per million, with cache hits at $0.003625. Both models offer a <strong>1M token context window</strong> and support thinking and non-thinking modes.</p>
<h2>The warning</h2>
<p>The pricing documentation states plainly that DeepSeek plans to raise overall API pricing in the near future, with <strong>a significant increase expected</strong>. Vendors rarely pre-announce their own price rises. Publishing it means current rates should be read as promotional rather than structural.</p>
<h2>Why it matters</h2>
<p>At $0.14 per million inputs, DeepSeek is the cheapest credible option in the frontier-adjacent tier, undercutting OpenAI's freshly reduced Luna at $0.20. That gap is worth something — but only for as long as it lasts, and the vendor has said it will not last.</p>
<p>The practical lesson is about lock-in rather than price. Building a high-volume pipeline around whoever is cheapest this quarter is fine if switching costs are near zero. It is expensive if the integration is deep. The cache-hit discount cuts both ways here: designing prompts around one provider's caching behaviour is exactly the kind of work that does not transfer.</p>
<h2>How to read the cache pricing</h2>
<p>The fifty-fold gap between cache hit and cache miss is the most actionable number here. It means the shape of a prompt — what stays constant across calls and what varies — drives cost more than model choice does. Systems that put a large stable preamble first and vary only the tail get most of their input tokens at $0.0028 per million.</p>
<p>That is real money at volume, and it is also a subtle form of lock-in: prompts engineered around one vendor's caching behaviour do not transfer cleanly to another.</p>
<h2>What to plan for</h2>
<p>Treat current DeepSeek pricing as temporary, because the vendor has said it is. If a workload is being sized on these rates, model what happens at two or three times the price before committing. A pipeline that only works at $0.14 per million is a pipeline with a countdown on it.</p>$$,
 true),

-- 5 ─────────────────────────────────────────────────────────────────────────
('anthropic-cybersecurity-incident-findings', 'en', 'research', 'Research', '#4aaef5', 'Anthropic', 'July 30, 2026',
 'Anthropic Publishes Findings From Three Real-World Cybersecurity Incidents',
 $$Anthropic disclosed what it found while examining three real-world incidents surfaced through its cybersecurity evaluations. The publication is part of the company's ongoing safety reporting rather than a product announcement.$$,
 $$<p>Anthropic has published findings from an examination of <strong>three real-world incidents</strong> identified through its cybersecurity evaluations.</p>
<h2>What was released</h2>
<p>The disclosure covers what the company found when it looked at actual incidents rather than synthetic test cases. It sits in Anthropic's safety and evaluation reporting stream, alongside its model cards and policy publications, rather than being tied to a product launch.</p>
<h2>Why this format matters</h2>
<p>Most published AI safety work rests on benchmarks and red-team exercises that researchers construct themselves. Constructed tests are reproducible and comparable, which is why they dominate — but they measure what the designers thought to look for. Incidents that actually happened do not have that limitation.</p>
<p>Publishing them is also a cost to the publisher. Real incidents describe things that went wrong in the field, which is precisely the material companies normally keep internal.</p>
<h2>What to take from it</h2>
<p>For anyone deploying AI systems with real permissions — access to code, mail, internal tools — the useful signal is not the headline but the pattern. Evaluations that only run against invented scenarios will systematically miss the ways things break in production.</p>
<p>The wider context is that model providers are now being read as security vendors whether they want to be or not. Once a model can act on systems rather than just describe them, incident disclosure becomes part of the job, and how a vendor handles it is a legitimate input when choosing one.</p>
<h2>What this means for deployments</h2>
<p>The practical takeaway is about evaluation design. If an internal safety review consists only of scenarios the team invented, it inherits the team's blind spots. Incident-derived findings are one of the few sources that break that loop, which is why publishing them has value beyond the specific cases described.</p>
<p>For teams running agents with real permissions, the review question is straightforward: what could this system do if it were manipulated, and would anyone notice? Scope permissions to the task, log actions in a form a human can audit afterwards, and keep the destructive operations behind a confirmation step.</p>
<h2>The broader shift</h2>
<p>Model providers are being pulled into a security-vendor role by the capabilities they ship. Once a model can send mail, run code or touch production systems, the questions asked of it are the questions asked of any privileged software. Disclosure practice is a reasonable thing to weigh when picking one.</p>$$,
 true),

-- 6 ─────────────────────────────────────────────────────────────────────────
('anthropic-open-weights-position-cognizant', 'en', 'business', 'Business', '#f5a623', 'Anthropic', 'July 27, 2026',
 'Anthropic Sets Out Its Position on Open-Weights Models and Expands the Cognizant Partnership',
 $$Anthropic published a statement outlining where it stands on open-weights models. The same day it extended its collaboration with Cognizant to deploy Claude across enterprise clients.$$,
 $$<p>Anthropic made two announcements on the same day: a published position on <strong>open-weights models</strong>, and an expanded partnership with <strong>Cognizant</strong> to deploy Claude across enterprise clients.</p>
<h2>The open-weights statement</h2>
<p>Anthropic set out its stance on open-weights models in a dedicated publication. The company has historically shipped closed models, so a formal statement rather than silence is itself the news — it means the question is being answered deliberately instead of by default.</p>
<h2>The Cognizant expansion</h2>
<p>Cognizant and Anthropic extended an existing collaboration to put Claude into enterprise client deployments. Cognizant is a systems integrator, which makes this a distribution move rather than a technology one: integrators are how large enterprises actually adopt software, and they decide which vendor gets proposed in the first place.</p>
<h2>Why the two fit together</h2>
<p>Read separately these look unrelated. Read together they describe a strategy: compete on closed frontier models sold through enterprise channels, while stating clearly where open weights fit rather than leaving customers to guess.</p>
<p>The open-weights question is not academic for buyers. Organisations with strict data-residency requirements or a need to run models on their own hardware treat weight availability as a procurement filter. A vendor that is explicit about its position lets those buyers rule it in or out early.</p>
<h2>What it means in practice</h2>
<p>For teams evaluating Claude at enterprise scale, the Cognizant channel is the practical part — it changes who shows up to implement. For teams that need models they can host themselves, the position statement is the part worth reading closely.</p>
<h2>What to take from it</h2>
<p>Neither announcement changes what Claude can do this week. Both change how it reaches organisations and on what terms, and that is usually what determines adoption at scale rather than benchmark position.</p>
<p>If open weights are a hard requirement — data residency, air-gapped deployment, a need to inspect what you run — read the position statement before assuming the answer. If they are not, the integrator channel is the part that will show up in practice, because it decides who is in the room when the decision gets made.</p>$$,
 true),

-- 7 ─────────────────────────────────────────────────────────────────────────
('cursor-ipad-workspace-start-plan', 'en', 'tools', 'Tools', '#2dd4a0', 'Cursor', 'August 3, 2026',
 'Cursor Adds Google Workspace Agents, an iPad App and a Low-Cost Plan for India',
 $$Cursor shipped three changes in a week. Google Workspace plugins let agents read, write and act across Gmail, Drive and Calendar. Cursor for iPad arrived on all paid plans with pinned sidebar chats for watching several agents at once. Cursor Start launched at Rs 649 per month for Indian developers, including Grok 4.5 and Composer.$$,
 $$<p>Cursor shipped three separate changes between July 28 and August 3, and together they say more about direction than any one does alone.</p>
<h2>Google Workspace plugins</h2>
<p>New integrations let Cursor agents <strong>read, write and act across Google Workspace</strong> — Gmail, Google Drive and Google Calendar. This moves the agent outside the repository. A coding tool that can read a spec from Drive, check a calendar and send mail is not only a coding tool any more.</p>
<h2>Cursor for iPad</h2>
<p>iPad support landed on <strong>all paid plans</strong>, with sidebar chats that stay pinned so several agents can be watched running at once, full PR review, and reorganised inbox tools. The design tells you what the workflow has become: the value is in supervising parallel agents, not typing code on a tablet.</p>
<h2>Cursor Start</h2>
<p>A budget plan launched for Indian developers at <strong>Rs 649 per month</strong>, including access to Grok 4.5 and Composer models plus iOS remote control. Regional pricing at that level is a deliberate market move rather than a discount.</p>
<h2>Why it matters</h2>
<p>The through-line is supervision. Router (July 22) picks the model per request, iPad lets you watch several agents at once, Workspace gives those agents reach beyond code. Cursor is building for a developer who starts work and checks on it rather than one who writes every line.</p>
<p>Workspace access deserves a hard look before enabling it. An agent with write access to mail and calendar is a different risk profile from one confined to a git repo, and the blast radius of a mistake grows accordingly.</p>
<h2>What to check before enabling Workspace access</h2>
<p>Read and write access to mail, files and calendar is a meaningful expansion of what a coding agent can reach. Grant the narrowest scopes that make the workflow function, keep the agent out of shared drives it has no reason to touch, and confirm there is an audit trail before letting it act unsupervised. The risk is not the tool misbehaving so much as an agent following instructions it found in a document.</p>
<p>Regional pricing is worth watching too: Rs 649 per month is a serious bid for a developer market that has largely been priced out of frontier tooling, and where Cursor goes on that front, competitors tend to follow.</p>$$,
 true);

-- Проверка после прогона:
-- SELECT slug, date, category FROM news WHERE lang='en' AND date >= '2026-07-25' ORDER BY date;
-- Ожидается 7 строк.
