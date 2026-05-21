-- ============================================================
-- AItoolFit — News Update May 21, 2026 (EN only)
-- 4 news items: Google I/O 2026, OpenAI+Dell, Cursor Composer 2.5, Musk lawsuit
-- 1 tool update: Cursor (add Composer 2.5)
-- After running: translate to es, de, ru, ua, he, fr, pt
-- Run in Supabase SQL Editor
-- ============================================================

-- ============================================================
-- PART 1: UPDATE EXISTING TOOLS
-- ============================================================

-- 1. CURSOR — add Composer 2.5 (Kimi K2.5)
UPDATE tools SET
  description = $$Cursor 3.4 + Composer 2.5 (Kimi K2.5): agentic dev environments, multi-repo, Dockerfile provisioning, parallel agents. Composer 2.5 hits ~63% SWE-Bench at $0.50/task — matching Claude Opus 4.7 at 14× lower cost. BugBot moves to usage-based billing June 2026.$$,
  description_long = $$Cursor is a VS Code-based AI IDE that has become the most widely adopted AI-native coding environment in 2026, with over 500K developers using it for writing, refactoring, and reviewing code with deep AI integration at every step.

Cursor 3.4, released May 13, 2026, introduced agentic development environments — a major architectural shift where Cursor agents provision and manage their own environments. Agents can spin up Dockerfile-defined environments, clone and work across multiple repositories simultaneously, and execute tasks in parallel. Multi-repo support addresses teams working on microservices or monorepos where changes span several codebases at once. Cursor 3.3 added pull request review directly inside the editor, closing the full write-to-review loop without switching to GitHub.

Composer 2.5, released May 18, 2026, upgrades the underlying model powering Cursor's agentic Composer to Kimi K2.5. The result is benchmark performance matching Claude Opus 4.7 on SWE-Bench (~63% accuracy) at approximately $0.50 per task compared to $7 per task for Opus 4.7 — a 14x cost reduction for equivalent agentic coding quality. Composer 2.5 also ships multi-repo cloud agent environments that run remotely rather than on the developer's local machine, Dockerfile-based environment setup for reproducible agent contexts, and enterprise audit logs for compliance-sensitive deployments.

BugBot, Cursor's automated bug detection feature that runs on commits and PRs, transitions to usage-based billing in June 2026. Previously included in plans, it will be billed per scan after the transition. Cursor's core plans remain Hobby (free), Pro ($20/month), and Business ($40/user/month).

Cursor is best for professional developers and engineering teams who want an AI coding assistant that can execute full development cycles autonomously — not just complete lines of code, but write features, manage environments, and review changes end-to-end.$$,
  pros = ARRAY[
    $$Composer 2.5 on Kimi K2.5 matches Claude Opus 4.7 on SWE-Bench at 14× lower cost per task$$,
    $$Agentic dev environments: agents provision Dockerfiles and manage multi-repo workspaces$$,
    $$Parallel agent execution — run multiple coding agents simultaneously on different tasks$$,
    $$PR review inside the editor — full write-to-review loop without switching tools$$,
    $$Hobby plan free; Pro at $20/mo — accessible entry point for individual developers$$
  ],
  cons = ARRAY[
    $$BugBot moving to usage-based billing June 2026 — cost unpredictable for heavy scan users$$,
    $$Agentic env features are new — complex multi-repo tasks may still require human steering$$,
    $$Business plan at $40/user/mo adds up quickly for larger engineering teams$$,
    $$Remote cloud agents add latency vs. local execution for simple tasks$$
  ]
WHERE slug = $$cursor$$ AND lang = $$en$$;

-- ============================================================
-- PART 2: INSERT NEWS ITEMS
-- ============================================================

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, published)
VALUES

(
  'google-io-2026-highlights',
  'en', 'models', 'Models', '#7c6af7',
  'Google Blog', 'May 19, 2026',
  'Google I/O 2026: Gemini 3.5 Flash, Spark Agent, Android XR Glasses, and AI Ultra',
  'Google''s most product-dense I/O in years. Gemini 3.5 Flash replaces the previous flagship at Flash speed and $1.50/1M tokens. Gemini Spark launches as a proactive 24/7 personal agent running on cloud VMs. Android XR smart glasses with a real display go hands-on. Google AI Ultra replaces the $250/month plan at $100/month.',
  true
),

(
  'openai-dell-codex-enterprise',
  'en', 'business', 'Business', '#f5a623',
  'OpenAI Blog', 'May 18, 2026',
  'OpenAI and Dell Bring Codex to Enterprise On-Premises Environments',
  'OpenAI and Dell Technologies partnered to deploy Codex in hybrid and on-premises enterprise environments via the Dell AI Data Platform — OpenAI''s first explicit on-prem distribution deal. Codex now has 4M+ weekly developer users.',
  true
),

(
  'cursor-composer-25-kimi-k25',
  'en', 'tools', 'Tools', '#2dd4a0',
  'Cursor Blog', 'May 18, 2026',
  'Cursor Composer 2.5 Runs on Kimi K2.5 — Matches Opus 4.7 at 14× Lower Cost',
  'Cursor shipped Composer 2.5, powered by Kimi K2.5, achieving ~63% on SWE-Bench — matching Claude Opus 4.7 — at $0.50/task vs. $7/task for Opus. Also ships multi-repo cloud agent environments, Dockerfile-based environment setup, and enterprise audit logs.',
  true
),

(
  'musk-openai-lawsuit-dismissed',
  'en', 'regulation', 'Regulation', '#f56565',
  'NPR', 'May 19, 2026',
  'Jury Dismisses Elon Musk''s $150B Lawsuit Against OpenAI in Under Two Hours',
  'A California federal jury unanimously dismissed all claims in Elon Musk''s $150 billion lawsuit against OpenAI and Sam Altman. The verdict came in under two hours: statute of limitations had expired on all counts. Musk announced plans to appeal.',
  true
);

-- ============================================================
-- PART 3: ADD BODY TO NEWS ITEMS
-- ============================================================

-- 1. Google I/O 2026 highlights (with YouTube embed)
UPDATE news SET body = $$
<p>Google I/O 2026 (May 19–20) was the company's most product-dense developer conference in years. Sundar Pichai framed the event as the beginning of the <strong>"agentic era"</strong> — AI that works for you continuously, not just when prompted. The keynote covered a new flagship model, a proactive personal agent, smart glasses with a real display, a pricing overhaul, and a wave of product integrations across Google's entire ecosystem.</p>

<div style="position:relative;padding-bottom:56.25%;height:0;margin:1.5rem 0">
  <iframe src="https://www.youtube.com/embed/wYSncx9zLIU"
    style="position:absolute;top:0;left:0;width:100%;height:100%;border-radius:10px;border:0"
    allowfullscreen loading="lazy"></iframe>
</div>

<h2>Gemini 3.5 Flash — flagship intelligence at Flash cost</h2>
<p><strong>Gemini 3.5 Flash</strong> is now the default model in the Gemini app and in AI Mode in Google Search. It outperforms Gemini 3.1 Pro on coding and agentic benchmarks (Terminal-Bench 2.1: 76.2% vs. 70.3%) while running at Flash speed and pricing — <strong>$1.50 input / $9.00 output per 1M tokens</strong>. Google is positioning it as the model that ends the quality-versus-cost tradeoff that has defined the market so far.</p>

<h2>Gemini Spark — AI that acts without being asked</h2>
<p><strong>Gemini Spark</strong> is a cloud-based personal AI agent that runs 24/7 on Google Cloud VMs — including when your device is closed. The I/O demo showed Spark autonomously organizing a party: it created an RSVP tracker in Google Sheets, pulled attendee names from Gmail threads, and sent follow-up reminders to people who hadn't responded — all without a prompt. Spark connects to Gmail, Docs, Calendar, and third-party apps. Beta launches for <strong>Google AI Ultra subscribers</strong> next week.</p>

<h2>Google AI Ultra — $100/month replaces $250/month</h2>
<p>Google replaced its $250/month plan with <strong>Google AI Ultra at $100/month</strong>, bundling Gemini Spark beta access, 20 TB of cloud storage, and priority access to new model releases. The price cut makes the top tier accessible to a much wider audience and signals Google is competing directly with OpenAI Pro and Anthropic Max on both capability and price.</p>

<h2>Android XR smart glasses — "shockingly good" display</h2>
<p>Hands-on reviewers at I/O called the Android XR glasses display <em>"like watching an OLED laptop screen on your face."</em> The standout demo: wearing the glasses while moving between people speaking different languages, with seamless real-time Gemini translation that intelligently ignores speakers using the same language. Consumer designs from <strong>Warby Parker and Gentle Monster</strong> are confirmed for Fall 2026.</p>

<h2>Other launches</h2>
<p>Alongside the headline products: <strong>Ask YouTube</strong> (conversational video search, live for Premium users), <strong>Gmail Live and Docs Live</strong> (real-time AI collaboration), <strong>Universal Cart</strong> (one shopping cart across Search, YouTube, Gmail, and Gemini), and <strong>Google Antigravity 2.0</strong> (agent-first dev platform with Kotlin support and one-click Cloud Run deploy).</p>

<h2>The viral moment</h2>
<p>Several Google executives were visibly using iPhone 17 Pros and MacBooks during their live product demos. The irony was immediately noticed by Pixel fans and went viral within hours — a reminder that even Google's own teams live on Apple hardware.</p>
$$
WHERE slug = 'google-io-2026-highlights' AND lang = 'en';

-- 2. OpenAI + Dell Codex
UPDATE news SET body = $$
<p>OpenAI and Dell Technologies announced a partnership to bring <strong>Codex</strong> to hybrid and on-premises enterprise environments via the <strong>Dell AI Data Platform</strong>. Announced at Dell Technologies World in Las Vegas on May 18, 2026, this is OpenAI's first explicit on-premises enterprise distribution deal.</p>

<h2>What the partnership enables</h2>
<p>Codex — OpenAI's coding agent capable of handling multi-file software tasks autonomously — will run on Dell's enterprise hardware stack alongside existing on-premises data infrastructure. This addresses a core blocker for large enterprises adopting Codex: data sovereignty and compliance requirements that prevent source code from leaving the corporate network. Under the Dell AI Data Platform deployment, Codex operates within the organization's own environment rather than sending code to OpenAI's cloud.</p>

<h2>Why it matters for enterprise adoption</h2>
<p>Codex already has <strong>4 million+ weekly developer users</strong> in cloud deployments, primarily at startups and mid-market companies. The on-premises deal targets the Fortune 500 segment — financial institutions, defense contractors, healthcare systems, and regulated industries — that have been unable to adopt Codex due to compliance constraints. Dell's enterprise relationships give OpenAI a distribution channel into accounts that OpenAI's direct sales motion has struggled to reach.</p>

<h2>Broader context</h2>
<p>The deal is part of a broader OpenAI enterprise push in 2026. Codex in hybrid environments complements OpenAI's existing enterprise agreements with Microsoft (Azure OpenAI) and positions it against GitHub Copilot Enterprise, which already has strong on-premises enterprise reach via Microsoft's sales infrastructure. For Dell, the partnership adds a flagship AI workload to its hardware platform at a time when enterprise AI infrastructure investment is accelerating.</p>
$$
WHERE slug = 'openai-dell-codex-enterprise' AND lang = 'en';

-- 3. Cursor Composer 2.5
UPDATE news SET body = $$
<p>Cursor released <strong>Composer 2.5</strong>, upgrading the model powering Cursor's agentic coding engine to <strong>Kimi K2.5</strong> from Moonshot AI. The result: benchmark performance that matches Claude Opus 4.7 on SWE-Bench at approximately one-fourteenth of the cost per task.</p>

<h2>The benchmark story</h2>
<p>Composer 2.5 achieves <strong>~63% accuracy on SWE-Bench</strong>, the standard benchmark for agentic software engineering tasks. Claude Opus 4.7 also sits around 63% — making Composer 2.5 functionally equivalent on measurable coding tasks. The critical difference is price: Composer 2.5 runs at approximately <strong>$0.50 per task</strong> versus roughly $7 per task for Opus 4.7. For teams running hundreds of automated coding tasks per day, this difference is economically significant.</p>

<h2>Infrastructure upgrades</h2>
<p>Alongside the model upgrade, Cursor ships three infrastructure changes: <strong>multi-repo cloud agent environments</strong> that run on remote infrastructure rather than the developer's local machine (removing hardware constraints from long-running agents), <strong>Dockerfile-based environment setup</strong> that gives agents reproducible, version-controlled environments to work in, and <strong>enterprise audit logs</strong> that record agent actions for compliance and debugging. These additions extend Cursor's agentic capabilities from individual developers toward enterprise engineering team deployments.</p>

<h2>Context: one day after Cursor 3.4</h2>
<p>Cursor 3.4 shipped May 13 with agentic dev environments and multi-repo support. Composer 2.5 arrived May 18 — five days later — as a model-layer upgrade on top of the 3.4 infrastructure. The rapid iteration pace reflects Cursor's current development cadence: shipping infrastructure, then immediately upgrading the AI layer on top of it.</p>
$$
WHERE slug = 'cursor-composer-25-kimi-k25' AND lang = 'en';

-- 4. Musk vs OpenAI lawsuit dismissed
UPDATE news SET body = $$
<p>A California federal jury <strong>unanimously dismissed all claims</strong> in Elon Musk's lawsuit against OpenAI, Sam Altman, and other defendants on May 19, 2026. The verdict was delivered in under two hours — an unusually fast deliberation for a case this size — after the jury found that the statute of limitations had expired on all counts.</p>

<h2>What Musk was suing for</h2>
<p>Musk filed a <strong>$150 billion lawsuit</strong> alleging that OpenAI and Altman had betrayed the organization's original nonprofit mission. Musk was one of OpenAI's founding donors and board members, leaving the board in 2018. His core claim was that OpenAI's 2019 transition to a "capped-profit" structure and its subsequent commercial partnership with Microsoft represented a breach of contract and fraud against the nonprofit's founding principles. The $150 billion figure represented alleged damages from OpenAI's rise in value since the allegedly improper pivot.</p>

<h2>Why the jury dismissed it</h2>
<p>The jury found that Musk's claims were time-barred — he had waited too long to sue after the events he was challenging. The statute of limitations argument meant the jury never evaluated the merits of whether OpenAI actually violated its founding mission. The verdict does not settle the underlying question of whether OpenAI's commercialization was proper — it simply rules that Musk cannot pursue those claims in court at this point.</p>

<h2>What happens next</h2>
<p>Musk announced immediately after the verdict that he will appeal. Separately, Musk's own AI company <strong>xAI</strong> continues to compete directly with OpenAI with its Grok model family. The lawsuit's dismissal removes a legal overhang that had been cited as a distraction for OpenAI's leadership and may accelerate the company's planned corporate restructuring to a for-profit public benefit corporation.</p>
$$
WHERE slug = 'musk-openai-lawsuit-dismissed' AND lang = 'en';
