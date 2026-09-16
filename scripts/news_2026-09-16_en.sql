-- Батч новостей за 8–15 сентября 2026 (после kling-legacy-models-retirement от 15 сентября).
--
-- Источники, всё проверено 2026-09-16:
--   TechCrunch, Bloomberg  — переговоры OpenAI, Anthropic и Google DeepMind о безопасности
--   404 Media              — Project Lily, подрядчики читают переписку в ChatGPT
--   NVIDIA blog, VentureBeat, Tom's Hardware — Perplexity Portable Computer на Windows
--   GreyNoise, BleepingComputer, Help Net Security, The Hacker News — кампания против PaperCut
--   gov.ca.gov             — пакет калифорнийских законов, подписан 10 сентября
--   developers.openai.com/api/docs/pricing — цены GPT Image 2.5
--
-- Не взято и почему:
--   • Публичная бета Siri на моделях Google. Источники противоречат друг другу
--     в главном: часть пишет про кастомную модель Gemini на 1,2 трлн параметров
--     внутри Private Cloud Compute, MacRumors и 9to5Mac — про пять собственных
--     моделей Apple, четыре из которых обучены на выводах Gemini. Первичного
--     подтверждения нет, публиковать спорное как решённое нельзя.
--   • Обновления Figma по вектору и MCP: агрегатор датировал их сентябрём,
--     в самих release notes — 24 августа. Не наш период.
--   • Цифра «штраф до $1 млн за ребёнка» по калифорнийским законам гуляет
--     по пересказам, но в пресс-релизе губернатора её нет. Не используем.
--   • Раунды Tandem Health и Qupital: подходят по размеру, но это медтех
--     и финтех, к задаче «найти инструмент под работу» отношения не имеют.
--
-- Идемпотентность: DELETE перед INSERT по slug+lang.

DELETE FROM news WHERE lang = 'en' AND slug IN (
  'frontier-labs-coordinate-on-safety',
  'openai-project-lily-human-review',
  'perplexity-portable-computer-windows',
  'ai-agents-papercut-campaign',
  'california-child-safety-ai-laws',
  'gpt-image-25-cheaper-than-predecessors'
);

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published)
VALUES

-- 1 ─────────────────────────────────────────────────────────────────────────
('frontier-labs-coordinate-on-safety', 'en', 'regulation', 'Regulation', '#f56565', 'TechCrunch', 'September 15, 2026',
 'OpenAI, Anthropic and Google DeepMind Have Been Talking Safety for Weeks',
 $$OpenAI confirmed on September 15 that it has been in talks with Anthropic and Google DeepMind for several weeks about coordinating on AI safety. Proposals on the table include embedding third-party evaluators inside the companies and creating an industry standards body. OpenAI says no antitrust waiver is needed.$$,
 $$<p>Three companies that compete on almost everything have been quietly talking to each other about safety. <strong>OpenAI</strong> confirmed on September 15 that its discussions with <strong>Anthropic</strong> and <strong>Google DeepMind</strong> have been running for several weeks.</p>
<h2>What is on the table</h2>
<p>Three mechanisms have surfaced. The first is <strong>embedding third-party evaluators inside the companies</strong> to monitor safety work from the inside rather than reviewing it after the fact. The second is a <strong>new industry standards body</strong>. The third, and the most unusual, is coordinating on the pace of frontier development itself.</p>
<p>Chris Lehane, OpenAI's global policy chief, said the company supports a provision in the FRONTIER Act that would require top labs to admit independent verification organizations. Sam Altman said OpenAI would embed third-party evaluators. Demis Hassabis called for a new US standards body to act as a watchdog.</p>
<h2>What set it off</h2>
<p>Anthropic CEO Dario Amodei published an essay on Saturday arguing that the industry should work together to slow the pace of frontier AI and avoid catastrophic risks. The confirmations from OpenAI and Google followed within days.</p>
<h2>The antitrust question</h2>
<p>Competitors agreeing to move slower is, on its face, the shape of an illegal agreement. Lehane's position is that no government waiver is needed for safety coordination. Observers quoted by TechCrunch were less certain, noting the talks could draw scrutiny if the coordination were found to suppress competition.</p>
<p>The political backdrop cuts the other way. President Trump has called AI safety concerns a hoax, and adviser David Sacks has described the fears as overblown. So the labs are proposing self-restraint at a moment when the administration is not asking for any.</p>
<h2>Why it matters</h2>
<p>For anyone choosing tools, the practical question is whether independent evaluation becomes normal. A model audited by an outside organisation is a different proposition from one whose safety claims rest entirely on its maker. Nothing has been signed yet — these are talks, not commitments — but the direction is worth watching, because it would change what a vendor's safety documentation is actually worth.</p>$$,
 true),

-- 2 ─────────────────────────────────────────────────────────────────────────
('openai-project-lily-human-review', 'en', 'business', 'Business', '#f5a623', '404 Media', 'September 14, 2026',
 'Hundreds of Contractors Are Reading Real ChatGPT Conversations',
 $$404 Media obtained internal materials describing Project Lily, an OpenAI programme in which hundreds of external contractors read real ChatGPT conversations, summarise what the user wanted and score the model's replies from 1 to 7. Contractors are paid over $50 an hour through intermediaries. The setting that feeds chats into this pipeline is on by default.$$,
 $$<p><strong>404 Media</strong> has published internal materials describing an OpenAI programme codenamed <strong>Project Lily</strong>, under which hundreds of external contractors read real conversations between people and ChatGPT.</p>
<h2>What the reviewers do</h2>
<p>Contractors summarise what the user was trying to achieve, then grade the model's reply on a <strong>scale from 1 to 7</strong>. They flag specific failure modes, including robotic phrasing and excessive agreement with the user. The reporting is based on reviewer instructions, Slack messages, the scoring rubric and the user submissions themselves.</p>
<p>Pay is above <strong>$50 an hour</strong>, routed through intermediary firms rather than OpenAI directly. Some of the conversations reviewed contained sensitive personal information.</p>
<h2>The consent gap</h2>
<p>One source who worked on the programme was asked whether users realise their chats are reviewed this way. The answer was no: people do not imagine a contractor somewhere is analysing the conversation.</p>
<p>After publication, OpenAI pointed to a help page stating that humans may review content to improve model performance. The relevant setting, which sends chats into training, is <strong>enabled by default on the Free, Plus and Pro plans</strong>. Turning it off is the user's responsibility, and requires knowing it exists.</p>
<h2>Why it matters</h2>
<p>Human review is not a scandal in itself. It is how these systems are made to sound less robotic, and every major assistant does some version of it. What the reporting exposes is the distance between a defensible practice and what users actually understand about it.</p>
<p>The practical consequence is narrow and concrete. If you paste anything into a general assistant that you would not hand to a stranger — client data, medical details, unreleased work — the default settings are not on your side. Check the training toggle, or use a plan and product where the data handling is contractual rather than optional.</p>$$,
 true),

-- 3 ─────────────────────────────────────────────────────────────────────────
('perplexity-portable-computer-windows', 'en', 'tools', 'Tools', '#2dd4a0', 'NVIDIA', 'September 14, 2026',
 'Perplexity Puts Its Agent on Your Own GPU — No Tokens, No Cloud',
 $$Perplexity released Portable Computer for Windows on September 14, a local version of its agent that runs the model, harness, orchestrator and scheduler entirely on the device. It needs an NVIDIA RTX GPU with at least 24GB of VRAM, is limited to Pro and Max subscribers, and work completed locally does not consume Perplexity Computer credits.$$,
 $$<p><strong>Perplexity</strong> has brought <strong>Portable Computer</strong> to Windows: a version of its agent that runs on your machine instead of its servers.</p>
<h2>What runs locally</h2>
<p>Not just the model. Perplexity moved the <strong>model, the agent harness, the orchestrator and the scheduler</strong> onto the device. The agent plans and carries out multistep tasks the same way the cloud version does, but the work never leaves the machine.</p>
<p>The default local model is <strong>Qwen 3.8 27B</strong>, post-trained for Perplexity Computer and optimised for RTX hardware. Alongside it sit PPLX 27B, which Perplexity trained in-house, and NVIDIA Nemotron 3.5 Lightning, a 30-billion-parameter model that is still arriving.</p>
<h2>What it costs and what it needs</h2>
<p>The hardware requirement is the real gate: an <strong>NVIDIA GeForce RTX GPU or RTX PRO workstation with 24GB of VRAM or more</strong>. That is a high-end card, not a typical laptop. Access is limited to Pro and Max subscribers on individual and enterprise plans, through the existing Windows app in the Microsoft Store.</p>
<p>The payoff is that <strong>locally completed work does not consume Perplexity Computer credits</strong>. For anyone running an agent repeatedly on the same kind of task, that changes the arithmetic of using one at all.</p>
<h2>Why it matters</h2>
<p>Two things are converging here. Sensitive material stays on the device, which answers the objection that blocks agent adoption in a lot of regulated work. And the per-task cost drops to electricity, which removes the quiet anxiety of watching a credit balance while an agent iterates.</p>
<p>The catch is that both benefits are bought with a graphics card. This is not a cheaper way to use an agent — it is a different trade, capital up front instead of metered usage, and it only pays back at volume. Worth evaluating if you already own the hardware or your data cannot leave the building.</p>$$,
 true),

-- 4 ─────────────────────────────────────────────────────────────────────────
('ai-agents-papercut-campaign', 'en', 'research', 'Research', '#4aaef5', 'GreyNoise', 'September 11, 2026',
 'One Attacker, Hundreds of AI Agents, 395 Organisations in 48 Countries',
 $$Security firm GreyNoise documented a campaign in which a single attacker used hundreds of AI agents to exploit two PaperCut vulnerabilities, compromising at least 440 systems across 395 organisations in 48 countries. The agents ran on OpenAI's Codex harness paired with a DeepSeek model. Eleven organisations were compromised in 26 seconds.$$,
 $$<p><strong>GreyNoise</strong> has published an account of a campaign that is worth reading carefully, because the interesting part is not the vulnerability. It is the tempo.</p>
<h2>What happened</h2>
<p>A single attacker, assessed as Russian-speaking, exploited two flaws in <strong>PaperCut NG/MF</strong> print management software, tracked as CVE-2026-81578 and CVE-2026-82078. The result was at least <strong>440 compromised systems across 395 organisations in 48 countries</strong>.</p>
<p>The attacker first built a private lab with a vulnerable copy of PaperCut and an Active Directory server, then developed and tested the exploits there. The agents ran on <strong>OpenAI's Codex harness paired with a DeepSeek model</strong>, alongside publicly available offensive security tools.</p>
<h2>The speed is the story</h2>
<p>From an empty workspace to remote code execution against a real victim took <strong>just under four hours</strong>. First domain admin followed two hours after that. Once the campaign launched properly, <strong>eleven organisations were compromised in 26 seconds</strong>.</p>
<p>Credentials were harvested from 280 victims. Operating system or domain secrets came from 147. Administrator privileges were obtained at 12 organisations.</p>
<h2>Who was hit</h2>
<p>Education dominated with <strong>204 victims</strong>, far ahead of retail, professional services and hospitality, with government, healthcare and legal organisations scattered behind. GreyNoise attributes the skew to PaperCut's customer base rather than deliberate targeting — the agents went after whatever was reachable.</p>
<h2>Why it matters</h2>
<p>Patch windows have always been a race between defenders and attackers, and both sides moved at human speed. That assumption is what broke here. An attacker who can go from a fresh workspace to working exploitation in four hours, then hit eleven organisations in under half a minute, has compressed the window to something no manual patching process can meet.</p>
<p>The tools involved were not exotic. A coding harness, an open-weight model and off-the-shelf offensive utilities. That combination is available to anyone, which is the uncomfortable part.</p>$$,
 true),

-- 5 ─────────────────────────────────────────────────────────────────────────
('california-child-safety-ai-laws', 'en', 'regulation', 'Regulation', '#f56565', 'Governor of California', 'September 10, 2026',
 'California Will Require Independent Child-Safety Audits of AI Companion Chatbots',
 $$Governor Gavin Newsom signed a package of child safety bills on September 10. SB 1119, named Adam's Law, is the first in the country to require companion chatbot operators to undergo independent child safety audits and annual risk assessments, plus crisis protocols, parental controls and alerts when a child disables safety settings.$$,
 $$<p>California signed a package of child online safety bills on September 10, and one of them sets a precedent the rest of the industry will have to answer.</p>
<h2>Adam's Law</h2>
<p><strong>SB 1119</strong>, authored by Senator Steve Padilla with Assemblymembers Buffy Wicks and Rebecca Bauer-Kahan, covers <strong>AI companion chatbots</strong>. It requires operators to implement crisis protocols in cases of suicidal ideation, provide parental controls, and send notifications if a child disables safety settings.</p>
<p>The provision that breaks new ground is the oversight one. The law is described as <strong>the first in the country to require companies to conduct independent child safety audits and annual risk assessments</strong>. Not self-assessment, and not a report filed after something goes wrong.</p>
<h2>The rest of the package</h2>
<p>A dozen more bills were signed alongside it. <strong>SB 867</strong> covers companion chatbot toys, extending the same concern to physical products aimed at young children. <strong>AB 1856</strong> establishes age verification signals for software applications. <strong>AB 1709</strong> bars social media platforms from serving addictive engagement features to users under 16. <strong>AB 2</strong> raises the damages a large platform can face when its conduct harms a child, and deepfake victims can seek civil relief of up to <strong>$250,000 per action</strong>.</p>
<h2>Why California matters beyond California</h2>
<p>Companies rarely build one product for California and another for everyone else. A compliance requirement written in Sacramento tends to become the national default, which is how the state's privacy and emissions rules have worked for years.</p>
<h2>What to expect</h2>
<p>If you build on a companion chatbot platform, or ship anything with a persona that a minor might talk to, the audit requirement is the line item to plan for. It is a recurring external cost, not a one-time compliance exercise, and it lands on operators rather than on the model provider underneath.</p>
<p>For everyone else, the useful signal is that regulators have stopped treating chatbots as generic software and started treating companion products as their own category with their own duties.</p>$$,
 true),

-- 6 ─────────────────────────────────────────────────────────────────────────
('gpt-image-25-cheaper-than-predecessors', 'en', 'models', 'Models', '#7c6af7', 'OpenAI', 'September 8, 2026',
 'OpenAI''s Newest Image Models Cost Less Than the Ones They Replace',
 $$GPT Image 2.5 Sunburst and Flare are listed on the OpenAI API at $8 per million image input tokens and $30 per million output, with cached image input at $2. That undercuts GPT Image 1.5 at $32 output and GPT Image 1 at $40, reversing the usual pattern where a new generation arrives at a higher price.$$,
 $$<p>OpenAI has added <strong>GPT Image 2.5 Sunburst</strong> and <strong>GPT Image 2.5 Flare</strong> to its API pricing page, and the notable thing is the number.</p>
<h2>The prices</h2>
<p>Both variants are listed at <strong>$8 per million image input tokens and $30 per million image output tokens</strong>. Cached image input is $2. Text input is $5 per million, with cached text at $1.25.</p>
<p>Set against the older models in the same family, the direction is unusual. GPT Image 1.5 costs $8 in and <strong>$32</strong> out. GPT Image 1 costs $10 in and <strong>$40</strong> out. The small GPT Image 1-mini remains the cheapest at $2.50 and $8.</p>
<h2>Why this is backwards</h2>
<p>A new generation normally arrives at a premium and pushes the previous one down. Here the newest models are priced <strong>below their predecessors on output</strong>, which is where image generation costs actually land.</p>
<p>The likely explanation is competitive rather than technical. Image generation is the most crowded category in the market, with strong open-weight options and a long list of vendors distributing models through aggregators. Charging more than last year's model is difficult when a user can switch providers inside the same interface.</p>
<h2>What it means in practice</h2>
<p>If you are still calling GPT Image 1 or 1.5 in production, you are paying more for an older model. That is a rare situation and an easy thing to check.</p>
<p>The wider lesson is about how quickly this line moves. Pricing for image models has become genuinely volatile, so a cost estimate built six months ago is unlikely to still be accurate. Re-check the pricing page before committing to a provider, and prefer platforms that let you swap the underlying model without rebuilding your pipeline.</p>$$,
 true);

-- Проверка:
-- SELECT slug, date, category FROM news WHERE lang='en' ORDER BY id DESC LIMIT 8;
