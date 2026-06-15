-- Add body to 3 June 2026 news articles — EN only
-- Run in Supabase SQL Editor

UPDATE news SET body = $$
<p>Anthropic released <strong>Claude Fable 5</strong> on June 9, 2026 — the first Mythos-class model available to the general public. The launch marks a new capability ceiling for publicly accessible AI: Fable 5 ranks at or near the top across nearly all standard benchmarks for software engineering, vision, scientific reasoning, and autonomous task execution.</p>
<h2>What Fable 5 can do</h2>
<p>Fable 5 represents Anthropic's most capable public release to date. It exceeds prior Claude versions on multi-step coding tasks, achieves state-of-the-art performance on vision benchmarks, and handles long-horizon agentic workflows — including tasks that span multiple tools, APIs, and decision points without human checkpoints. Anthropic describes it as suited for "knowledge work at the frontier."</p>
<h2>Claude Mythos 5 — restricted access</h2>
<p>Alongside Fable 5, Anthropic launched <strong>Claude Mythos 5</strong> — a model in the same capability tier but available only to approved organizations for government-adjacent cybersecurity use cases. Shortly after release, Mythos 5 was temporarily taken offline due to a U.S. government export directive, though Fable 5 remained available to all users.</p>
<h2>Pricing and access</h2>
<p>Through June 22, 2026, Fable 5 is available at <strong>no extra cost</strong> for users on Pro, Max, Team, and Enterprise plans. From June 23, access requires usage credits: <strong>$10 per million input tokens and $50 per million output tokens</strong>. The model is accessible via claude.ai and the Anthropic API.</p>
<h2>Why it matters</h2>
<p>The public release of a Mythos-class model narrows the gap between Anthropic's restricted frontier capabilities and what any paying user can access. For developers and enterprises building on Claude, Fable 5 sets a new baseline for production use — particularly in code generation, research automation, and multi-agent system orchestration.</p>
$$
WHERE slug = 'claude-fable-5-public-release' AND lang = 'en';

UPDATE news SET body = $$
<p>Anthropic raised <strong>$65 billion in a Series H funding round</strong> at a <strong>$965 billion post-money valuation</strong>, making it the most valuable AI startup in history — surpassing OpenAI's valuation of approximately $852 billion. On June 1, 2026, the company confidentially filed a draft S-1 registration statement with the SEC in preparation for an initial public offering.</p>
<h2>The funding round</h2>
<p>The Series H was led by Altimeter Capital, Dragoneer, Greenoaks, and Sequoia Capital. The round brings Anthropic's total capital raised to over $100 billion since founding in 2021. Enterprise adoption of Claude for coding, research, and document processing has been the primary growth engine behind the valuation acceleration.</p>
<h2>Revenue trajectory</h2>
<p>Anthropic's annualized revenue run-rate reached approximately <strong>$47 billion as of May 2026</strong>, up from $9 billion at end-2024 and $30 billion in April 2026. The company expects to exceed $50 billion in annualized revenue by end of June — roughly $4 billion in incremental monthly revenue. This pace has driven the historic valuation premium.</p>
<h2>IPO context</h2>
<p>The confidential S-1 filing initiates the standard IPO process. Under SEC rules, Anthropic can choose to make the filing public and begin a roadshow, or hold it privately until closer to a target listing date. The IPO is expected to be one of the largest technology listings in U.S. history. No exchange or listing date has been announced.</p>
<h2>Why it matters</h2>
<p>The valuation overtaking OpenAI represents a significant shift in investor perception — driven by Anthropic's enterprise positioning, Claude's rapid adoption in professional environments, and the company's Constitutional AI approach, which has resonated with regulated industries and government clients.</p>
$$
WHERE slug = 'anthropic-965b-valuation-ipo-filing' AND lang = 'en';

UPDATE news SET body = $$
<p>GitHub's AI coding assistant transitioned all plans to a <strong>usage-based billing model on June 1, 2026</strong>, replacing the previous flat-rate request-based system. The change introduces a new currency — <strong>GitHub AI Credits</strong> — and makes the cost of each Copilot interaction variable depending on which model is used and how many tokens are consumed.</p>
<h2>How AI Credits work</h2>
<p>One GitHub AI Credit equals <strong>$0.01</strong>. Each Copilot interaction draws from a monthly credit balance, with the cost determined by the model tier and token count. Lightweight models used for autocomplete cost fewer credits; premium models used for complex reasoning tasks cost more. All paid plans include a monthly credit allocation, with the option to purchase additional credits.</p>
<h2>Credit allocation by plan</h2>
<p><strong>Pro</strong> ($10/mo): 1,500 credits included. <strong>Pro+</strong> ($39/mo): 7,000 credits included. <strong>Max</strong> ($99/mo): 20,000 credits included. Business and Enterprise customers receive extra credits during the transition period through September 1, 2026.</p>
<h2>What this replaces</h2>
<p>The previous system charged a flat fee per "premium request" regardless of model or token count. The new system eliminates the premium request definition entirely. GitHub argues that usage-based billing better reflects actual compute costs and lets users mix models within a single session. Critics note that heavy users of premium models could face higher-than-expected monthly bills if usage is not monitored.</p>
<h2>Why it matters</h2>
<p>GitHub Copilot is the largest AI coding assistant by active users. The billing change affects millions of developers and tens of thousands of organizations. The shift to credits mirrors token-based pricing from OpenAI and Anthropic — signaling that flat-rate AI product pricing is giving way to metered infrastructure economics across the industry.</p>
$$
WHERE slug = 'github-copilot-ai-credits-june-2026' AND lang = 'en';
