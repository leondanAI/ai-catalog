-- Батч новостей за 30 сентября – 6 октября 2026 (после news_2026-09-29_en.sql).
--
-- Источники, проверено 2026-10-06:
--   mistral.ai/news/mistral-large-4 — параметры, цены, статус весов
--   a16z.com/100-gen-ai-apps-7 — данные о платных подписках (опубликовано 5 октября)
--   techcrunch.com, 5 октября — визуальная реклама в ChatGPT
--   techcrunch.com, macrumors.com, 9to5mac.com, 2 октября — Full Disk Access в macOS
--
-- Расхождения с пересказами, решённые в пользу первоисточника:
--   • Доля подписчиков Claude на тарифе от $100: в пересказах 7,5%, у a16z 7,3%.
--   • «Подписчики Plus, Pro и Enterprise рекламу не увидят» — только в пересказах.
--     TechCrunch пишет лишь, что реклама поддерживает бесплатный и недорогие
--     тарифы, без перечня планов. В текст не взято.
--
-- Идемпотентность: DELETE перед INSERT по slug+lang.

DELETE FROM news WHERE lang = 'en' AND slug IN (
  'mistral-large-4-open-weights',
  'a16z-paid-ai-subscriptions-report',
  'chatgpt-visual-ads-image-generation',
  'apple-macos-full-disk-access-ai-agents'
);

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published)
VALUES

-- 1 ─────────────────────────────────────────────────────────────────────────
('mistral-large-4-open-weights', 'en', 'models', 'Models', '#7c6af7', 'Mistral AI', 'October 6, 2026',
 'Mistral Large 4: a Trillion-Parameter Model With Open Weights at the End of October',
 $$Mistral released Large 4 on October 6 as a public API preview: a natively multimodal mixture-of-experts model with 1 trillion parameters, 49 billion of them active. Weights are due to be published at the end of October. API pricing is $1.36 per million input tokens and $4.18 per million output.$$,
 $$<p><strong>Mistral AI</strong> has released <strong>Mistral Large 4</strong>, and the detail that sets it apart is not the size but the licence: the weights are coming.</p>
<h2>What it is</h2>
<p>Large 4 is a <strong>natively multimodal mixture-of-experts model with 1 trillion parameters, 49 billion of them active</strong> on any given token. It is available now as a <strong>public preview through the API</strong>, with <strong>open weights due at the end of October</strong>.</p>
<p>Pricing is <strong>$1.36 per million input tokens and $4.18 per million output</strong>. For comparison, OpenAI's GPT-6 Sol lists at $2 and $10, and Anthropic's Claude Sonnet 5.5 at the same $2 and $10.</p>
<h2>What Mistral claims</h2>
<p>The announcement leads with security: Mistral says Large 4 scores 82% on vulnerability reproduction and patching, which it calls the highest of any model. It also reports 61.7% on DeepSWE v1.1 for coding, and claims it outperforms all open-source models on HarveyAI's legal agent benchmark and exceeds GPT-6 Astra on legal and financial tasks.</p>
<p>These are the vendor's own numbers. Independent evaluations will follow once the weights are public, and that is when they are worth taking seriously.</p>
<h2>Why open weights at this size matter</h2>
<p>A model you can download is a model you can run inside your own infrastructure, fine-tune, and keep running if the vendor changes its prices or its terms. For regulated industries in Europe in particular, where data residency is a condition rather than a preference, a frontier-class model with published weights from a European company changes the procurement conversation.</p>
<p>The catch is hardware. A trillion parameters, even with 49 billion active, is not something you run on a workstation. Open weights at this scale mostly benefit organisations with their own GPU capacity, or cloud providers who will host it.</p>
<h2>Who should look at it</h2>
<p>Teams that need a strong model under their own control, and teams in legal, finance or security work, where Mistral is concentrating its claims. For everyone else, the API preview at $1.36 and $4.18 is simply one of the cheapest ways to try a frontier-sized model this month.</p>$$,
 true),

-- 2 ─────────────────────────────────────────────────────────────────────────
('a16z-paid-ai-subscriptions-report', 'en', 'business', 'Business', '#f5a623', 'Andreessen Horowitz', 'October 5, 2026',
 'Only 4.5% of Americans Pay for ChatGPT, Gemini or Claude — and Claude Users Pay the Most',
 $$Andreessen Horowitz's seventh Top 100 consumer AI apps report, published October 5, finds that as of August just 4.5% of US consumers had a paid personal subscription to ChatGPT, Gemini or Claude. ChatGPT has three times more US paid subscribers than either rival. 7.3% of Claude's payers are on its Max plan from $100 a month, against 1.3% for Google and 1.1% for ChatGPT.$$,
 $$<p><strong>Andreessen Horowitz</strong> has published the seventh edition of its Top 100 consumer AI apps report, and this time it follows the money rather than the traffic.</p>
<h2>The headline numbers</h2>
<p>As of August 2026, just <strong>4.5% of US consumers</strong> had an active paid personal subscription to ChatGPT, Gemini or Claude. Most people who use these assistants do so for free.</p>
<p>Among those who pay, <strong>ChatGPT has three times more US paid subscribers</strong> than either Claude or Gemini. Claude has now passed Gemini on paid subscribers, making it the clear third.</p>
<h2>The interesting number</h2>
<p><strong>7.3% of Claude's paying users</strong> are on Max, its most expensive individual plan, which starts at $100 a month. The equivalent figure is <strong>1.3% for Google</strong> and <strong>1.1% for ChatGPT</strong>.</p>
<p>In other words, Claude has fewer customers but a far larger share of heavy ones. That fits how it is generally used: long coding sessions and agent work, where a $20 plan runs out quickly.</p>
<h2>How people actually spend</h2>
<p>The median paying user spends <strong>$25 a month</strong> on AI subscriptions, and that figure has barely moved. The top 1% average about <strong>$903 a month</strong>. Spending on AI is not broad; it is concentrated in a small group of people who use it for work.</p>
<h2>What it means if you are choosing</h2>
<p>Popularity and fit are different questions. ChatGPT's lead in subscribers reflects breadth of use. Claude's concentration of high-tier users reflects depth in particular kinds of work. If your task is long-running coding or agent work, the second number is the more useful signal. If you want one assistant for everything, the first one is.</p>
<p>And the 4.5% figure is a reminder that the free tiers are good enough for most people. Pay when you hit a limit, not before.</p>$$,
 true),

-- 3 ─────────────────────────────────────────────────────────────────────────
('chatgpt-visual-ads-image-generation', 'en', 'tools', 'Tools', '#2dd4a0', 'TechCrunch', 'October 5, 2026',
 'ChatGPT Will Start Showing Image Ads Next to the Pictures It Generates',
 $$OpenAI announced on October 5 a visual ad format for ChatGPT that will appear alongside images users ask it to generate. The test starts later in October, in the US only, with an initial group of advertisers. OpenAI says the ads will be clearly labelled and will not influence ChatGPT's answers, and that they support its free and low-cost tiers.$$,
 $$<p><strong>OpenAI</strong> is adding a new kind of advertising to <strong>ChatGPT</strong>: image-based ads that appear alongside the pictures it generates for you.</p>
<h2>What is changing</h2>
<p>Until now, ads in ChatGPT were text. The new format lets advertisers show product imagery, usage and experiences, placed <strong>next to images that users ask ChatGPT to generate</strong>. The ad sits beside the result rather than inside it.</p>
<p>The test begins <strong>later in October, in the US only</strong>, with an initial group of advertisers. OpenAI says the ads will be <strong>clearly labelled</strong> and <strong>will not influence the answers ChatGPT provides</strong>.</p>
<h2>Who will see them</h2>
<p>OpenAI positions the ads as supporting its <strong>free and low-cost subscription tiers</strong>. It has not published a plan-by-plan list of who will and will not see them, so it is worth checking your own account once the test begins rather than assuming either way.</p>
<h2>The measurement side</h2>
<p>Alongside the new format, OpenAI named a long list of measurement and attribution partners, including AppsFlyer, Adjust, Branch and Kochava, plus DoubleVerify and Integral Ad Science for brand-suitability pilots. That is the infrastructure of a serious ad business, not an experiment.</p>
<h2>Why image generation first</h2>
<p>Image requests are unusually commercial. Someone generating a living room, an outfit or a product mock-up is already describing something they might buy. That makes the image surface the most natural place in ChatGPT to show a product, and the least jarring.</p>
<h2>What to take from it</h2>
<p>If you use ChatGPT's image generation for client or commercial work, expect the interface around your results to change, and keep the distinction between the generated image and any adjacent ad clear in your workflow. If ads in the interface are a deal-breaker for you, this is a reason to compare image tools that are paid-only and ad-free, rather than a reason to panic.</p>$$,
 true),

-- 4 ─────────────────────────────────────────────────────────────────────────
('apple-macos-full-disk-access-ai-agents', 'en', 'tools', 'Tools', '#2dd4a0', 'TechCrunch', 'October 2, 2026',
 'Apple Will Tighten macOS Full Disk Access, Citing the Risks of AI Agents',
 $$Apple said on October 2 that it will add controls to macOS Full Disk Access so that granting an app that level of access requires very explicit user action. Apple said AI agents have increased the risks, with some developers using the permission in ways that expose files, mail, messages and browsing history. It has not said when the change ships.$$,
 $$<p><strong>Apple</strong> has announced that it will tighten <strong>Full Disk Access</strong> on macOS, and it named AI agents as the reason.</p>
<h2>What Apple said</h2>
<p>Full Disk Access was designed so that backup software could work. Apple says AI agents have increased the risks of that level of access, and that some developers are using it in ways that expose <strong>files, mail, messages and even browsing history</strong> without users fully understanding what they granted.</p>
<p>The company says it will introduce additional controls so that users who genuinely want to grant an app this access can only do so with <strong>very explicit user action</strong>.</p>
<h2>What we do not know</h2>
<p>Apple has not said what the new controls look like, which version of macOS will include them, or when they will ship. For now this is a statement of intent.</p>
<h2>What prompted it</h2>
<p>The announcement came days after a journalist claimed that Meta's Muse app for Mac had read their private messages, a claim Meta disputes, and after a Wired report on a flaw in ChatGPT's Mac app that could have exposed sensitive data. Apple did not attribute its decision to either case directly, but the timing is hard to miss.</p>
<h2>Why this matters</h2>
<p>This is the first time an operating-system vendor has changed a core permission specifically because of AI agents. Desktop agents are useful precisely because they can see and act on everything on your machine. That is also exactly what makes them dangerous, and the permission model was never designed with an autonomous system on the other side of it.</p>
<h2>What to do now</h2>
<p>Open System Settings, go to Privacy and Security, then Full Disk Access, and look at what is on the list. Remove anything you do not actively need, especially AI assistants you installed once and stopped using. An agent with that permission can read far more than the task you gave it.</p>$$,
 true);

-- Проверка:
-- SELECT slug, date, category FROM news WHERE lang='en' ORDER BY id DESC LIMIT 6;
