#!/usr/bin/env python3
import urllib.request, json

import os
SB_URL     = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_SERVICE = os.environ.get('SB_SERVICE_KEY', '')
if not SB_SERVICE:
    print('ERROR: Set SB_SERVICE_KEY'); exit(1)

TOOLS = [
  {
    "slug": "cline",
    "lang": "en",
    "name": "Cline",
    "url": "https://cline.bot",
    "domain": "cline.bot",
    "category": "code",
    "badge": "free",
    "users": "5M+",
    "best_for": "VS Code autonomous coding agent with step-by-step approval",
    "description": "Open-source VS Code extension that autonomously creates files, runs terminal commands, and controls browsers — all with step-by-step user approval. Works with any LLM via your own API key.",
    "description_long": "Cline (formerly Claude Dev) is an open-source autonomous coding agent extension for VS Code, JetBrains, Cursor, Windsurf, Zed, and Neovim. It operates in a step-by-step approval loop: the agent proposes each action (create file, run command, open browser) and the user approves before execution — making it transparent and safe compared to fully autonomous tools. With 59,000+ GitHub stars and 5 million installs, it is the most widely adopted open-source coding agent in the VS Code ecosystem.\n\nCline reached v3.81 in May 2026 and receives daily updates. It supports Model Context Protocol (MCP) natively, allowing custom tool integrations. The extension works with any LLM via bring-your-own-key: Anthropic Claude, OpenAI, Gemini, AWS Bedrock, OpenRouter, and local models. It can read and edit files across the full codebase, execute terminal commands, run tests, and use a browser for research or end-to-end testing.\n\nKey capabilities include multi-file editing with full codebase context, browser use for research and UI testing, MCP tool support, and an approval-based workflow that keeps the developer in control at every step. Unlike forked editors like Cursor or Windsurf, Cline runs inside your existing editor without requiring a migration.\n\nPricing: Cline itself is completely free and open source. You pay only for the LLM API calls you make to your chosen provider. Running on local models via Ollama is free.\n\nLimitations: The step-by-step approval workflow, while safe, can slow down complex multi-file tasks compared to fully autonomous tools. Quality depends entirely on the LLM you configure. The BYOK model means you manage API costs separately.\n\nBest suited for developers who want a powerful autonomous coding agent inside their existing editor without switching to a new IDE, and who prefer transparent step-by-step control over fully autonomous execution.",
    "pros": ["Most widely installed open-source coding agent — 59K stars and 5M installs", "Works inside your existing editor — no migration to a new IDE required", "Step-by-step approval keeps developer in control of every action", "Native MCP support for custom tool and data source integrations", "Supports any LLM: Claude, GPT-4o, Gemini, Bedrock, local Ollama"],
    "cons": ["Approval-based workflow slows down complex multi-file tasks", "No proprietary model — quality depends on your chosen LLM", "BYOK means API costs are managed and paid separately", "Less polished UX than commercial tools with dedicated teams"],
    "also_consider": ["cursor", "continue-dev", "opencode", "windsurf"],
    "published": True
  },
  {
    "slug": "aider",
    "lang": "en",
    "name": "Aider",
    "url": "https://aider.chat",
    "domain": "aider.chat",
    "category": "code",
    "badge": "free",
    "users": "5M+",
    "best_for": "Terminal AI pair programmer with automatic git commits",
    "description": "Open-source terminal AI pair programmer that auto-commits every change to git, builds a repo map of large codebases, and supports any LLM. 40,000+ GitHub stars and 5 million PyPI installs.",
    "description_long": "Aider is an open-source Python-based AI pair programmer that runs entirely in the terminal. Its defining feature is git-native operation: every change the AI makes is automatically committed with a descriptive commit message, so you can use git diff, git log, and git revert to audit or undo any AI modification. This makes it uniquely safe for production codebases where tracking changes matters.\n\nThe tool processes 15 billion tokens per week across its user base as of early 2026. Aider builds a repo map — a semantic index of the entire codebase — enabling accurate multi-file edits across large projects. It connects to any LLM: Claude Sonnet, GPT-4o, Gemini, DeepSeek, local Ollama models, and dozens of providers via OpenRouter. The open-source community releases frequent updates.\n\nKey capabilities include automatic git commits for every AI change, multi-file editing across large codebases via repo map, voice input mode, in-editor image support for visual debugging, and a watch mode that responds to special comments in your code. Aider works in any directory without IDE plugins or configuration beyond an API key.\n\nPricing: Aider is completely free and open source. You pay only for LLM API calls to your chosen provider. Running on local models via Ollama costs nothing beyond hardware.\n\nLimitations: Aider is terminal-only — there is no GUI, IDE extension, or browser interface. Setup requires installing via pip and configuring an API key. Like all BYOK tools, LLM costs are paid separately.\n\nBest suited for developers who live in the terminal and want an AI pair programmer with full git accountability — where every AI change is tracked, reviewable, and reversible.",
    "pros": ["Every AI change is auto-committed to git — fully auditable and reversible", "Repo map enables accurate multi-file edits across large codebases", "Connects to any LLM: Claude, GPT-4o, Gemini, DeepSeek, local Ollama", "No IDE plugin required — works in any directory from the terminal", "Voice input mode and image support for visual debugging"],
    "cons": ["Terminal-only — no GUI, IDE extension, or browser interface", "Setup requires pip install and API key configuration", "LLM API costs paid separately — no bundled model subscription", "Less discoverable for developers unfamiliar with terminal workflows"],
    "also_consider": ["opencode", "claude-code", "continue-dev", "cline"],
    "published": True
  },
  {
    "slug": "zed",
    "lang": "en",
    "name": "Zed",
    "url": "https://zed.dev",
    "domain": "zed.dev",
    "category": "code",
    "badge": "freemium",
    "users": "500K+",
    "best_for": "Ultra-fast AI code editor with native multiplayer collaboration",
    "description": "Code editor built from scratch in Rust with sub-millisecond response times, native real-time multiplayer editing, and concurrent AI agents. Released v1.0 in April 2026.",
    "description_long": "Zed is a next-generation code editor built entirely from scratch in Rust, using a custom GPU-accelerated UI framework called GPUI. Unlike VS Code forks such as Cursor or Windsurf, Zed is not based on Electron — it was built from the ground up for performance. The result is sub-millisecond keystroke response, startup in under a second, and smooth editing even on very large files. Zed reached 1.0 on April 29, 2026 after five years of development and has 81,700+ GitHub stars.\n\nZed's native multiplayer feature is unique: multiple developers can edit the same file simultaneously in real time, similar to Google Docs but for code. As of v1.0, Zed supports concurrent AI agents — multiple AI agents can work on different parts of the codebase simultaneously within the same editor window. The proprietary Zeta model powers AI features on the paid plan, while BYOK is supported for custom LLM configurations.\n\nKey capabilities include native real-time collaboration without plugins, concurrent AI agents, LSP support for all major languages, vim mode, a built-in terminal, and extensibility via a WebAssembly-based plugin system. Zed is available on macOS and Linux; Windows support is in progress.\n\nPricing: The editor itself is free and open source. AI features use a credit system — some usage is included free, with a paid plan for heavier Zed AI usage. BYOK is supported for teams with existing LLM contracts.\n\nLimitations: Zed cannot run VS Code extensions — the extension ecosystem is smaller than VS Code or Cursor. Windows support is still in progress as of mid-2026. Teams heavily invested in VS Code extensions may find the transition costly.\n\nBest suited for developers prioritizing editor performance, real-time team collaboration, and a modern editor architecture — particularly on macOS and Linux.",
    "pros": ["Fastest code editor available — sub-millisecond keystrokes built in Rust", "Native real-time multiplayer — multiple developers edit simultaneously without plugins", "Concurrent AI agents work on different codebase parts in the same window", "Free and open source — 81K+ GitHub stars with active development", "Released v1.0 in April 2026 after five years of careful development"],
    "cons": ["Cannot run VS Code extensions — smaller extension ecosystem than Cursor or VS Code", "Windows support still in progress as of mid-2026", "WASM-based plugin system has fewer extensions than VS Code marketplace", "Smaller community and fewer tutorials compared to established editors"],
    "also_consider": ["cursor", "windsurf", "continue-dev", "cline"],
    "published": True
  },
  {
    "slug": "amazon-q-developer",
    "lang": "en",
    "name": "Amazon Q Developer",
    "url": "https://aws.amazon.com/q/developer/",
    "domain": "aws.amazon.com",
    "category": "code",
    "badge": "freemium",
    "users": "1M+",
    "best_for": "AWS-native AI coding assistant for cloud and infrastructure development",
    "description": "AWS's AI coding assistant with deep understanding of AWS services, IAM policies, CloudFormation, and CDK. Free tier includes code completions and 50 agentic chats per month; Pro adds unlimited usage for $19/month.",
    "description_long": "Amazon Q Developer is AWS's AI coding assistant, renamed from CodeWhisperer in mid-2024 and significantly expanded. Its defining feature is deep AWS service awareness: unlike generic coding tools, Q Developer understands your IAM policies, CloudFormation stacks, CDK constructs, and broader AWS architecture. It can generate code that correctly references your specific AWS resources, suggest least-privilege IAM policies, and help debug cloud infrastructure problems in context.\n\nThe tool includes a code transformation feature that automatically upgrades legacy codebases — migrating Java 8/11 to Java 17/21 or Python 2 to Python 3 — across entire repositories. The agent can be assigned complex tasks like refactoring a service, writing unit tests for an existing module, or implementing a new feature end-to-end. Q Developer integrates with VS Code, JetBrains, Visual Studio, and the AWS Console directly.\n\nKey capabilities include AWS-context-aware code generation, automated code transformation for language version upgrades, inline completions in 15+ languages, agentic task execution, security vulnerability scanning, and direct integration with the AWS Console. For teams building on AWS, it provides infrastructure-level context that no other coding tool offers.\n\nPricing: Free tier includes unlimited code completions and 50 agentic developer chats per month. Pro tier costs $19 per user per month and adds unlimited agentic chats, code transformation for larger projects, and extended context. Enterprise pricing is available with additional compliance controls.\n\nLimitations: Outside of AWS development, Amazon Q Developer is not particularly competitive compared to Cursor or GitHub Copilot. The free tier's 50 agentic chats per month runs out quickly on active projects. The tool provides less value for GCP, Azure, or non-cloud development.\n\nBest suited for development teams building on AWS who want an AI assistant that understands their cloud infrastructure — IAM, CloudFormation, CDK, and AWS services — alongside standard coding capabilities.",
    "pros": ["Deep AWS context awareness — understands IAM, CloudFormation, CDK, and AWS services", "Code transformation upgrades legacy codebases (Java 8→17, Python 2→3) automatically", "Free tier includes unlimited code completions and 50 agentic chats per month", "Security vulnerability scanning built into the coding workflow", "Integrates with VS Code, JetBrains, Visual Studio, and the AWS Console"],
    "cons": ["Significantly less competitive outside of AWS development use cases", "Free tier limited to 50 agentic chats per month — runs out quickly", "Less value for GCP, Azure, or non-cloud development", "Smaller community and fewer resources compared to GitHub Copilot or Cursor"],
    "also_consider": ["github-copilot", "cursor", "continue-dev", "cline"],
    "published": True
  }
]

def sb_post(path, data):
    body = json.dumps(data).encode()
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/{path}',
        data=body,
        headers={
            'apikey': SB_SERVICE,
            'Authorization': f'Bearer {SB_SERVICE}',
            'Content-Type': 'application/json',
            'Prefer': 'resolution=merge-duplicates'
        },
        method='POST'
    )
    with urllib.request.urlopen(req) as r:
        return r.status

for tool in TOOLS:
    status = sb_post('tools', tool)
    print(f"  {tool['slug']}: HTTP {status}")

print("Done.")
