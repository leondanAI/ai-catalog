-- Update article bodies for all 12 news articles

UPDATE news SET body = '<p>Anthropic''s latest flagship model, <strong>Claude Opus 4.7</strong>, has set a new industry record on SWE-bench Verified — the gold-standard benchmark for AI software engineering — achieving a score of <strong>87.6%</strong>. This surpasses all previously published results from any publicly available model.</p>
<h2>What SWE-bench measures</h2>
<p>SWE-bench Verified tests whether an AI can resolve real GitHub issues from popular open-source repositories. Each task requires the model to read a bug report, understand a codebase, write a fix, and pass the project''s existing test suite — without any human guidance.</p>
<h2>Pricing and availability</h2>
<p>Claude Opus 4.7 is priced at <strong>$5 per million input tokens and $25 per million output tokens</strong> — positioning it as a premium option for teams building agentic software workflows. It is available via the Anthropic API and Claude.ai Pro.</p>
<h3>What this means for developers</h3>
<p>The result signals a qualitative shift in what AI agents can accomplish autonomously. At 87.6%, the model can reliably fix the majority of real-world bugs without human intervention — a capability that was considered out of reach just 18 months ago.</p>
<p>Anthropic describes Claude Opus 4.7 as purpose-built for long-horizon agentic tasks: multi-step coding projects, automated testing pipelines, and complex refactoring work that previously required experienced engineers.</p>'
WHERE slug = 'claude-opus-47-swe-bench' AND lang = 'en';

UPDATE news SET body = '<p>OpenAI has expanded its model lineup with the release of <strong>GPT-5.4</strong>, available in three tiers: Standard, Thinking, and Pro. All three variants share the same underlying architecture and a <strong>1.05 million token context window</strong> — the largest OpenAI has ever offered commercially.</p>
<h2>Three variants explained</h2>
<p><strong>Standard</strong> is optimized for speed and cost, suitable for most everyday tasks. <strong>Thinking</strong> adds an extended reasoning layer for complex problems — similar to the o-series models but integrated into a single model. <strong>Pro</strong> combines maximum capability with the largest context window for the most demanding use cases.</p>
<h2>Dynamic tool retrieval</h2>
<p>A notable architectural change in GPT-5.4 is dynamic tool spec retrieval. Rather than loading every available tool definition into the prompt at the start of each conversation, the model fetches only the tool specifications it needs as tasks arise. This reduces prompt bloat and improves response quality in complex agentic workflows.</p>
<h3>Availability</h3>
<p>GPT-5.4 Standard is rolling out to ChatGPT Plus subscribers immediately. Thinking and Pro variants are available via the API and to ChatGPT Team and Enterprise customers.</p>'
WHERE slug = 'gpt-54-three-variants-1m-context' AND lang = 'en';

UPDATE news SET body = '<p>Apple has announced a ground-up rebuild of Siri, powered by <strong>Google''s Gemini model</strong> running on Apple''s Private Cloud Compute infrastructure. The announcement marks the most significant change to Siri since its introduction in 2011.</p>
<h2>Private Cloud Compute</h2>
<p>The new Siri processes complex queries in the cloud while maintaining Apple''s privacy guarantees. Apple''s Private Cloud Compute architecture ensures that queries are processed on Apple-controlled servers using hardware attestation — meaning not even Apple employees can access user data.</p>
<h2>What the new Siri can do</h2>
<p>The rebuilt Siri handles <strong>multi-step tasks on-device for the first time</strong> — combining actions across multiple apps without sending data to external servers. For more complex queries requiring frontier intelligence, it routes to Gemini via Private Cloud Compute.</p>
<h3>Why Google, not OpenAI?</h3>
<p>Apple had previously partnered with OpenAI for ChatGPT integration in Apple Intelligence 1.0. The shift to Gemini is reported to reflect both performance advantages and a deeper commercial relationship between Apple and Google, which already pays Apple billions annually for default search placement.</p>
<p>The new Siri is expected to roll out with iOS 20 later this year.</p>'
WHERE slug = 'apple-rebuilds-siri-google-gemini' AND lang = 'en';

UPDATE news SET body = '<p>Stanford University''s Human-Centered AI Institute has published its annual <strong>AI Index 2026</strong>, the most comprehensive data-driven snapshot of artificial intelligence progress, adoption and societal impact.</p>
<h2>Anthropic leads overall rankings</h2>
<p>For the first time, <strong>Anthropic</strong> tops Stanford''s overall model performance rankings, narrowly ahead of xAI, Google and OpenAI. The ranking aggregates performance across reasoning, coding, science and language benchmarks.</p>
<h2>Adoption outpacing all previous technologies</h2>
<p>The report''s most striking finding is the pace of adoption. AI tools reached <strong>500 million regular users faster than the personal computer, the internet, or the smartphone</strong>. The authors attribute this to zero-friction access — unlike previous technology waves, AI requires no hardware purchase or technical setup.</p>
<h3>Key statistics from the report</h3>
<p>As of early 2026, 67% of knowledge workers report using AI tools at least weekly. AI-assisted code now accounts for an estimated 35% of all new code committed to public repositories. Investment in AI infrastructure reached $420 billion globally in 2025 — more than double the 2023 figure.</p>
<p>The full report is available at hai.stanford.edu.</p>'
WHERE slug = 'stanford-ai-index-2026' AND lang = 'en';

UPDATE news SET body = '<p>PwC''s 2026 AI Performance study, based on data from 5,000 companies across 22 industries, reveals a growing divide between AI leaders and the rest of the market.</p>
<h2>The 20/75 split</h2>
<p>The top 20% of companies — those PwC calls "AI Frontier" firms — are capturing <strong>75% of the economic value being generated by AI</strong>. The distinguishing factor is not technology spend or model access, but strategic orientation: frontier firms are using AI to <strong>create new revenue streams</strong>, not just cut costs.</p>
<h2>What separates leaders from laggards</h2>
<p>The report identifies three characteristics common to AI Frontier companies: they have a C-suite executive accountable for AI outcomes, they measure AI impact in revenue terms rather than efficiency metrics, and they have restructured at least one core business process around AI capabilities rather than bolting AI onto existing workflows.</p>
<h3>The danger of experimentation mode</h3>
<p>PwC warns that 60% of companies are still in what it calls "experimentation mode" — running pilots and proofs of concept without scaling to production. The report finds that companies in this phase are not only missing compounding returns but are falling further behind as frontier firms build proprietary data advantages.</p>'
WHERE slug = 'pwc-top-companies-ai-economic-gains' AND lang = 'en';

UPDATE news SET body = '<p>OpenAI has acquired <strong>TBPN (Technology Business Programming Network)</strong>, a daily live streaming show covering technology, AI and business that has become one of the most-watched programs in Silicon Valley over the past two years.</p>
<h2>What is TBPN?</h2>
<p>TBPN broadcasts live on weekdays, featuring interviews with founders, investors and technologists. It gained a reputation for candid, unscripted conversations at a time when most tech media had shifted toward produced video content. The show attracted a loyal audience among startup founders and venture capitalists.</p>
<h2>OpenAI''s first media acquisition</h2>
<p>This is <strong>OpenAI''s first acquisition of a media company</strong>, marking a strategic expansion beyond AI model development. The move signals OpenAI''s ambition to build direct audience relationships and shape the narrative around AI development.</p>
<h3>Editorial independence</h3>
<p>OpenAI says TBPN will continue to operate independently with its existing team. The company stated it will not exercise editorial control over content. Industry observers remain skeptical about how genuine that independence can be under corporate ownership.</p>
<p>Financial terms of the acquisition were not disclosed.</p>'
WHERE slug = 'openai-acquires-tbpn' AND lang = 'en';

UPDATE news SET body = '<p>Anthropic has officially confirmed the existence of <strong>Claude Mythos</strong>, a model it describes as the most capable it has ever built — and one it has no plans to release publicly.</p>
<h2>Project Glasswing</h2>
<p>Access to Claude Mythos is being managed through <strong>Project Glasswing</strong>, a restricted program for approximately 50 partner organizations. Partners are primarily focused on two domains: advanced cybersecurity research and complex multi-step reasoning tasks that exceed the capabilities of publicly available models.</p>
<h2>Why not release it?</h2>
<p>Anthropic CEO Dario Amodei stated that Mythos''s capabilities in certain domains — particularly autonomous action and persuasion — cross thresholds that require controlled deployment. The company says it is using learnings from Glasswing to develop safety protocols before any broader release.</p>
<h3>What we know about its capabilities</h3>
<p>Anthropic has not published benchmark results for Mythos. Partner organizations have described it as capable of sustained autonomous operation across complex multi-day tasks — a qualitative leap beyond what Claude Opus 4.7 can achieve. One cybersecurity partner described it as able to conduct end-to-end penetration testing with minimal human direction.</p>'
WHERE slug = 'anthropic-confirms-claude-mythos' AND lang = 'en';

UPDATE news SET body = '<p>OpenAI has surpassed <strong>$25 billion in annualized revenue</strong>, according to sources familiar with the company''s financials, and is taking early steps toward an initial public offering potentially in late 2026.</p>
<h2>Revenue breakdown</h2>
<p>The majority of OpenAI''s revenue comes from ChatGPT subscriptions and API usage. Enterprise contracts — which include large deployments within Fortune 500 companies — are reported to be the fastest-growing segment, now accounting for approximately 40% of total revenue.</p>
<h2>Anthropic close behind</h2>
<p><strong>Anthropic is approaching $19 billion</strong> in annualized revenue, driven by strong enterprise adoption of Claude and its integration across Amazon Web Services through the Bedrock platform. The gap between the two companies has narrowed significantly over the past 12 months.</p>
<h3>IPO timeline</h3>
<p>OpenAI''s path to a public listing was complicated by its unusual capped-profit structure. The company completed a restructuring in early 2026 that converted it to a more conventional public benefit corporation, clearing a key obstacle for an IPO. Bankers from Goldman Sachs and Morgan Stanley are reported to be in early conversations with the company.</p>'
WHERE slug = 'openai-25b-revenue-ipo-2026' AND lang = 'en';

UPDATE news SET body = '<p>Meta has released <strong>Llama 4 Scout and Maverick</strong>, the first models in the Llama family to use a <strong>Mixture-of-Experts (MoE) architecture</strong> — a design that activates only a subset of parameters for each query, dramatically improving efficiency.</p>
<h2>Scout: built for long context</h2>
<p>Llama 4 Scout has <strong>17 billion active parameters</strong> across 16 experts (109 billion total parameters) and a <strong>10 million token context window</strong> — the largest of any open model. This enables Scout to process entire codebases, legal documents or research archives in a single pass.</p>
<h2>Maverick: built for performance</h2>
<p>Llama 4 Maverick is the higher-capability variant, with more experts and stronger performance on reasoning and coding benchmarks. Meta positions it as competitive with closed frontier models on most standard evaluations.</p>
<h3>Commercial use</h3>
<p>Both models are available for commercial use under Meta''s updated Llama license, which removes the previous restrictions on companies with large user bases. The weights can be downloaded from Hugging Face and run on standard GPU hardware.</p>
<p>Meta says the MoE architecture reduces inference costs by approximately 60% compared to a dense model of equivalent quality — a significant advantage for large-scale deployments.</p>'
WHERE slug = 'meta-llama-4-scout-10m-context' AND lang = 'en';

UPDATE news SET body = '<p>Google has released <strong>Gemma 4</strong>, the latest generation of its open-weight model family, in four variants ranging from <strong>2.3 billion to 31 billion parameters</strong>.</p>
<h2>Gemma 4 31B: #3 globally</h2>
<p>The flagship <strong>Gemma 4 31B Dense model ranks third globally</strong> on the Arena AI leaderboard among open-weight models — behind only much larger models. This makes it the strongest open model Google has ever released and a serious competitor to Meta''s Llama family.</p>
<h2>Model variants</h2>
<p>The four Gemma 4 variants — 2.3B, 7B, 14B and 31B — are designed to cover different deployment scenarios, from on-device mobile applications to cloud inference. All variants support a 128K token context window and are optimized for Google''s TPU hardware as well as standard NVIDIA GPUs.</p>
<h3>Multimodal capabilities</h3>
<p>For the first time in the Gemma series, the 14B and 31B variants include native vision capabilities, allowing them to process images alongside text. This brings Gemma closer to feature parity with closed multimodal models.</p>
<p>All Gemma 4 weights are available on Hugging Face and Google AI Studio under a permissive open license allowing commercial use.</p>'
WHERE slug = 'google-gemma-4-31b-open-model' AND lang = 'en';

UPDATE news SET body = '<p>The European Union''s AI Act entered <strong>full enforcement in March 2026</strong>, marking the end of a phased implementation period that began with the Act''s passage in 2024. The regulation now applies to all AI systems deployed within the EU, regardless of where the developer is based.</p>
<h2>What the Act requires</h2>
<p>The AI Act establishes a risk-based framework. <strong>High-risk systems</strong> — those used in hiring, credit scoring, healthcare, law enforcement and critical infrastructure — must complete formal conformity assessments, register in a central EU database, and implement ongoing monitoring.</p>
<h2>General-purpose AI compliance</h2>
<p>For large foundation model providers, new <strong>GPAI (General Purpose AI) obligations</strong> now apply. OpenAI, Anthropic, Google and Mistral have all published their compliance documentation, covering training data transparency, copyright disclosures, and adversarial testing results.</p>
<h3>Enforcement teeth</h3>
<p>Violations of the AI Act can result in fines of up to <strong>€35 million or 7% of global annual turnover</strong> — whichever is higher. The newly established European AI Office, headquartered in Brussels, is responsible for enforcement and has already opened preliminary inquiries into several companies.</p>
<p>The regulation is being watched closely by legislators in the US, UK and Asia as a potential template for domestic AI governance frameworks.</p>'
WHERE slug = 'eu-ai-act-full-enforcement' AND lang = 'en';

UPDATE news SET body = '<p>Chinese AI laboratory Zhipu AI has released <strong>GLM-5.1</strong> under the MIT license — one of the most permissive open-source licenses available — making it free for any use including commercial deployment without restrictions.</p>
<h2>Scale and architecture</h2>
<p>GLM-5.1 is a <strong>744-billion parameter Mixture-of-Experts model</strong> with 40 billion active parameters per forward pass. This architecture delivers performance comparable to much larger dense models while keeping inference costs manageable. The model supports a <strong>200,000 token context window</strong>.</p>
<h2>Benchmark performance</h2>
<p>On standard evaluations including MMLU, HumanEval and MATH, GLM-5.1 matches or exceeds GPT-4-class performance across most categories. Coding and mathematical reasoning are reported as particular strengths, with the model scoring above 85% on competitive programming benchmarks.</p>
<h3>Why this matters</h3>
<p>The fully open MIT release is significant because it places no restrictions on how the model is used, modified or redistributed. Previous large open models — including Meta''s Llama family — carry custom licenses with various restrictions. GLM-5.1''s MIT license makes it the most freely available frontier-scale model to date.</p>
<p>The weights are available for download on Hugging Face. Zhipu AI also operates a commercial API for teams that prefer managed inference.</p>'
WHERE slug = 'zhipu-glm-51-744b-open-source' AND lang = 'en';
