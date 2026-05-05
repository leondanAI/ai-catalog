#!/usr/bin/env python3
"""Update EN content for agents category tools."""
import urllib.request, json, os

SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_SERVICE = os.environ.get('SB_SERVICE_KEY', '')
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

def h(write=False):
    key = SB_SERVICE if (write and SB_SERVICE) else SB_ANON
    return {'apikey': key, 'Authorization': f'Bearer {key}', 'Content-Type': 'application/json'}

def patch_en(slug, fields):
    data = json.dumps(fields, ensure_ascii=False).encode('utf-8')
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tools?slug=eq.{slug}&lang=eq.en',
        data=data, method='PATCH', headers=h(write=True)
    )
    with urllib.request.urlopen(req) as r:
        return r.status

updates = [
  {
    'slug': 'devin',
    'lang': 'en',
    'badge': 'paid',
    'description': 'AI software engineer by Cognition. Devin 2.0 autonomously plans, codes, debugs and deploys full features from $20/month.',
    'description_long': 'Devin is a fully autonomous AI software engineer built by Cognition AI that handles end-to-end development tasks: adding payment systems, fixing CI/CD pipelines, migrating databases, and writing tests without human intervention. It operates in a sandboxed environment with its own terminal, browser, and code editor.\n\nDevin 2.0 launched in 2025 and represented a major step forward — completing 83% more junior developer tasks per unit of compute compared to v1. Cognition simultaneously cut the entry price from $500/month to $20/month, making it accessible beyond enterprise budgets.\n\nPricing is ACU-based (Agent Compute Units), where 1 ACU equals roughly 15 minutes of active agent work. Core plan costs $20/month with ACUs at $2.25 each. Team plan is $500/month and includes 250 ACUs at $2.00 each. Enterprise pricing is custom. A complex multi-hour task can cost $10–30 in ACUs on top of the subscription.\n\nThe key differentiator is genuine autonomy. Unlike AI coding assistants that suggest completions, Devin takes a task description and runs the full cycle independently — reading docs, writing code, running tests, fixing failures, and opening a pull request. It integrates with GitHub, Slack, and Jira for real workflow embedding.\n\nLimitations: Devin still struggles with deeply ambiguous requirements and large legacy codebases without good documentation. It performs best on well-scoped, self-contained tasks. The ACU model can become expensive for exploratory work where the agent goes down wrong paths.\n\nBest for engineering teams that want to delegate junior-level tasks — bug fixes, feature additions, test coverage, documentation — and get a pull request back rather than a code suggestion.',
    'pros': ['Devin 2.0 is 83% more efficient per ACU than v1', 'Full dev cycle: reads docs, writes code, runs tests, opens PR', 'Integrates with GitHub, Slack, Jira for real team workflows', 'Entry price dropped to $20/mo — accessible beyond enterprise'],
    'cons': ['ACU costs add up fast on exploratory or ambiguous tasks', 'Struggles with large undocumented legacy codebases', 'Still requires human review before merging PRs', 'Not cost-effective for quick one-off questions vs Cursor or Copilot'],
  },
  {
    'slug': 'lindy',
    'lang': 'en',
    'badge': 'freemium',
    'description': 'Build AI agents for email, scheduling and customer support in minutes. No code needed.',
    'description_long': 'Lindy is a no-code platform for deploying practical AI agents without technical knowledge. The core use case is autonomous email management: Lindy reads inboxes, drafts context-aware replies, schedules follow-ups, and routes messages without a human in the loop. Additional agents handle customer support, meeting scheduling, CRM updates, and lead qualification.\n\nThe platform is designed for business users, not developers. Building an agent takes minutes using a template library with pre-built workflows for common scenarios. Each agent connects to Gmail, Outlook, Salesforce, HubSpot, Slack, and 200+ other tools through native integrations.\n\nPricing uses a credit system. Free plan includes 400 credits per month. Pro plan is $49.99/month with 5,000 credits. Max plan is $199.99/month. Enterprise pricing is custom. Simple actions cost around 1 credit each; complex multi-step workflows cost 5–10+ credits per run. A 7-day free trial is available for Pro features.\n\nLindy competes with Zapier AI and Make in the automation space, but focuses on agent-style interactions — conversations and decisions — rather than pure data routing. It is notably easier to set up than n8n or Relevance AI.\n\nLimitations: the credit model can feel unpredictable for heavy users — a busy inbox could consume the Pro allowance in days. Complex custom logic still requires workarounds compared to code-based alternatives.\n\nBest for sales teams, founders, and small business operators who want to automate email and customer communication without hiring developers.',
    'pros': ['400 free credits/month — usable for real tasks without paying', 'No-code setup — working agent in minutes from templates', '200+ integrations including Gmail, Salesforce, HubSpot, Slack', 'Credit system transparent — pay only for what agents actually do'],
    'cons': ['Pro $49.99/mo — expensive if you only need light automation', 'Credit costs unpredictable for high-volume inboxes', 'Less flexible than n8n or code-based agents for complex logic', 'No self-hosted option'],
  },
  {
    'slug': 'make',
    'lang': 'en',
    'badge': 'freemium',
    'description': 'Visual automation platform connecting 1,000+ apps. More flexible than Zapier, cheaper than most alternatives.',
    'description_long': 'Make (formerly Integromat) is a visual workflow automation platform that connects over 1,000 apps through a drag-and-drop canvas. Each automation — called a scenario — displays as a visual flowchart showing exactly how data flows between apps, with conditional logic, loops, error handling, and data transformation.\n\nIn August 2025, Make switched from an operations-based model to a credit-based system. Current plans: Free (1,000 credits/month, 2 active scenarios), Core ($9/month, 10,000 credits, unlimited scenarios), Pro ($16/month), Teams ($29/month). Extra credits can be purchased at a 25% premium over the base plan rate. Native one-click AI modules for OpenAI, Claude, and Anthropic are now available directly in the scenario builder.\n\nMake sits between Zapier (simpler, more expensive) and n8n (more powerful, requires technical setup). The canvas interface is its strongest differentiator — you can see the entire automation visually, which makes debugging and collaboration significantly easier than competing platforms.\n\nThe platform handles complex multi-step workflows well: branching paths, data aggregation, scheduled runs, webhooks, and iterating over arrays. Enterprise teams use it for document processing, lead routing, and cross-platform data sync.\n\nLimitations: the credit model introduced in 2025 made costs less predictable for existing users accustomed to counting operations. Very high-volume scenarios still require the Teams or higher plan to avoid overages.\n\nBest for marketing teams, operations managers, and developers who need flexible automation across many apps without writing code — and want more power than Zapier at a lower price.',
    'pros': ['Visual canvas makes complex automations easy to debug', 'Credit model from Aug 2025 aligns cost with actual usage', 'Native AI modules for OpenAI, Claude, Anthropic built-in', 'Unlimited scenarios on paid plans starting at $9/month'],
    'cons': ['Credit model less predictable than old operations model', 'Steeper learning curve than Zapier for beginners', 'Free tier limited to 2 active scenarios only', 'High-volume scenarios require Teams plan or higher'],
  },
  {
    'slug': 'microsoft-copilot-studio',
    'lang': 'en',
    'badge': 'freemium',
    'description': 'Build and deploy custom AI agents for your business. Integrates with Office 365 and Teams. Now supports Claude models.',
    'description_long': 'Microsoft Copilot Studio is an enterprise platform for building custom AI agents without writing code. It targets IT teams, business analysts, and citizen developers who need AI assistants embedded into Microsoft 365 workflows — Teams, SharePoint, Outlook, and Dynamics 365.\n\nIn September 2025, Microsoft replaced per-message pricing with Copilot Credits — a unified currency across all Copilot products. Standard pricing is $200/month per pack of 25,000 Copilot Credits, with pay-as-you-go also available and volume discounts up to 20%. A major 2026 update added multi-model support: users can now choose between GPT-4o, Claude Sonnet 4.5, or Claude Opus 4.7 when building custom agents.\n\nThe platform uses a visual canvas for designing conversation flows with pre-built connectors to Microsoft services. Agents can be published to Teams channels, websites, or embedded in SharePoint. For complex enterprise scenarios, the platform supports multi-agent orchestration where specialized agents hand off tasks between each other.\n\nDeveloper pushback in April 2026 noted that the credit system effectively delivered less value than the old model at similar price points. Microsoft acknowledged the concern without reversing the change.\n\nLimitations: genuinely useful deployment requires an existing Microsoft 365 ecosystem. Outside of that, alternatives like Relevance AI or Lindy offer more flexibility at lower cost.\n\nBest for enterprises already standardized on Microsoft 365 who need AI agents embedded directly in Teams and SharePoint without involving external platforms.',
    'pros': ['Deep integration with Teams, SharePoint, Outlook, Dynamics 365', 'Multi-model support: GPT-4o, Claude Sonnet 4.5, Claude Opus 4.7', 'Visual no-code agent builder — no developer required', 'Enterprise-grade security, compliance, and SSO out of the box'],
    'cons': ['Copilot Credits complex — $200/25k credits, less value than old model', 'April 2026 developer backlash over pricing value reduction', 'Only truly useful inside existing Microsoft 365 ecosystems', 'High cost for small teams outside enterprise volume discounts'],
  },
  {
    'slug': 'relevance-ai',
    'lang': 'en',
    'badge': 'freemium',
    'description': 'No-code platform to build AI agents and multi-agent teams for business workflows.',
    'description_long': 'Relevance AI is a no-code platform for building and deploying AI agents and multi-agent teams. Its specialty is multi-agent orchestration — systems where specialized agents (a researcher, a writer, a QA reviewer) collaborate to complete complex workflows that a single agent could not handle reliably.\n\nIn September 2025, Relevance AI overhauled its pricing, splitting costs into two components: Actions (what agents do) and Vendor Credits (model costs, passed through without markup). Paid plans allow bring-your-own API keys (BYOK) to bypass vendor credits entirely, reducing costs for high-volume users. Current tiers: Free (200 actions/month + 1,000 vendor credits on signup), Pro ($19/seat/month), Team ($234/seat/month), Enterprise (custom).\n\nThe platform includes a visual workflow builder, a tool library with 100+ pre-built agent capabilities, and fine-tuning on company-specific documents. Agents connect to CRM systems, databases, Slack, and email. Multi-agent orchestration handles task delegation, result aggregation, and quality checking automatically.\n\nRelevance AI targets operations and RevOps teams who need agents handling real business processes — prospect research, proposal generation, support ticket triage — not just simple question-answering.\n\nLimitations: steeper learning curve than Lindy for simple automation. The Team plan at $234/seat is expensive for small teams. The two-currency model can confuse new users.\n\nBest for revenue operations, marketing automation, and support teams that need multi-agent workflows handling complex, multi-step business processes.',
    'pros': ['Multi-agent orchestration — teams of specialized agents work together', 'Sep 2025: transparent Actions + Vendor Credits pricing model', 'BYOK on paid plans eliminates vendor credit costs for power users', 'Pro at $19/seat — affordable entry for professional teams'],
    'cons': ['Steeper learning curve than simpler tools like Lindy', 'Team plan $234/seat — expensive for small teams', 'Two-currency model (actions + credits) confusing initially', 'Less suitable for simple one-step automations'],
  },
  {
    'slug': 'manus',
    'lang': 'en',
    'badge': 'freemium',
    'description': 'Autonomous AI agent acquired by Meta. Give it a complex goal — it browses the web, writes code, and delivers a finished result.',
    'description_long': 'Manus went viral in March 2026 as the most-discussed AI release since ChatGPT — an autonomous agent from the Monica team that accepts high-level goals and executes them end-to-end by operating a virtual computer: browsing the web, writing and running code, managing files, and producing deliverables without step-by-step human guidance.\n\nIn late 2025, Manus was acquired by Meta for approximately $2 billion. Since the acquisition, the product expanded significantly: Web App Builder (create functional web apps from a description), AI-powered slides, a desktop application, and native integrations with Slack, WhatsApp, and Telegram.\n\nPricing: Free plan includes 300 daily-refresh credits with up to 5 concurrent tasks. Pro plan provides 8,000 credits/month with 20 concurrent tasks. Complex tasks consume 500–900 credits each, making the free tier adequate for occasional use only.\n\nThe core experience differs from Devin (code-only) or AutoGPT (research-only) — Manus handles mixed workloads: research a market, build a spreadsheet, write a report, and send it — all as one task chain.\n\nLimitations: credit consumption on complex tasks is high. The free tier of 300 daily credits can be exhausted by a single heavy task. The Meta acquisition raises questions about long-term product direction.\n\nBest for knowledge workers, founders, and consultants who want to delegate complex multi-step research and content tasks to an agent that delivers finished outputs rather than drafts.',
    'pros': ['Executes full multi-step tasks: web, code, files, output — autonomously', 'Acquired by Meta ($2B) — significant resources behind the product', 'Added Web App Builder, Slack/WhatsApp/Telegram integrations', '300 free daily credits — usable for moderate tasks at no cost'],
    'cons': ['Complex tasks consume 500–900 credits — free tier exhausted quickly', 'Pro pricing requires signup to see full details', 'Meta acquisition raises questions about product direction', 'Quality inconsistent on tasks requiring deep domain expertise'],
  },
  {
    'slug': 'n8n',
    'lang': 'en',
    'badge': 'freemium',
    'description': 'Open-source workflow automation. Self-host free with unlimited runs, or use cloud. Native Claude and Gemini AI nodes.',
    'description_long': 'n8n is an open-source workflow automation platform that allows self-hosting for zero cost with unlimited executions — the primary reason engineering and privacy-conscious teams choose it over Make or Zapier. The visual editor connects 400+ services and supports complex logic: branching, loops, error handling, and custom JavaScript/Python nodes.\n\nIn April 2026, n8n removed all active workflow limits across all cloud plans — now only execution counts matter. Cloud pricing: Starter (24 EUR/month, 2,500 executions), Pro (60 EUR/month, 10,000 executions), Business (800 EUR/month, 40,000 executions with SSO). Self-hosted Community Edition remains completely free with unlimited executions and workflows. Native AI nodes were added: Claude, Gemini, and vector store integrations are now first-class citizens in the editor.\n\nThe self-hosted option is n8n biggest differentiator. Teams can run it on a $5/month VPS with full control over their data, no per-execution fees, and unlimited scale. The tradeoff is infrastructure responsibility.\n\nThe AI node library grew substantially in 2025–2026: LangChain-style chains, RAG pipelines, and multi-model routing can all be built visually. This positions n8n as a serious option for teams building AI-powered internal tools.\n\nLimitations: the learning curve is steeper than Make or Zapier. Self-hosting requires DevOps comfort. The UI, while improving, is less polished than competitors.\n\nBest for engineering teams and technical operators who want maximum flexibility, data privacy, and zero per-execution costs — and are comfortable running their own infrastructure.',
    'pros': ['Self-hosted Community Edition: free, unlimited workflows and executions', 'April 2026: removed active workflow limits on all cloud plans', 'Native Claude, Gemini, and vector store AI nodes built in', 'Cloud Pro at 60 EUR/mo — cheaper than competitors for heavy use'],
    'cons': ['Self-hosting requires DevOps knowledge and infrastructure management', 'Steeper learning curve than Make or Zapier for non-technical users', 'UI less polished than commercial alternatives', 'Official support only on paid cloud plans'],
  },
]

for row in updates:
    slug = row.pop('slug')
    row.pop('lang', None)
    try:
        patch_en(slug, row)
        print(f'  {slug} ✓')
    except Exception as e:
        print(f'  {slug} ERROR: {e}')

print('Done.')
