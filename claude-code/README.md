# Claude Code (73 Built-in + 24 Plugins + 5 MCPs)

Claude Code v2.1.104 includes 73 built-in commands ([reference](https://code.claude.com/docs/en/commands)) plus the plugins and MCPs below.

### Git & GitHub

| Plugin | Source | Description |
|--------|--------|-------------|
| github | [github](https://github.com/github/github-mcp-server) | GitHub MCP — issues, PRs, branches, releases |
| commit-commands | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/commit-commands) | Quick commit, push, PR workflows |
| code-review | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/code-review) | PR code review |
| pr-review-toolkit | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/pr-review-toolkit) | Deep PR review — comments, tests, error handling, types, quality |

### Language Servers (LSP)

| Plugin | Source | Description |
|--------|--------|-------------|
| pyright-lsp | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/pyright-lsp) | Python type checking |
| rust-analyzer-lsp | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/rust-analyzer-lsp) | Rust analysis & completion |
| typescript-lsp | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/typescript-lsp) | TypeScript/JavaScript type checking |

### Dev Workflow & Planning

| Plugin | Source | Description |
|--------|--------|-------------|
| superpowers | [superpowers-marketplace](https://github.com/obra/superpowers) | Core skills: debugging, TDD, planning, code review, git worktrees, parallel agents |
| feature-dev | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/feature-dev) | Guided feature development with codebase analysis |
| code-simplifier | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/code-simplifier) | Post-edit code cleanup & refactoring |
| claude-code-setup | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/claude-code-setup) | Analyze codebases & recommend tailored hooks, skills, MCPs |
| taskmaster | [taskmaster](https://github.com/eyaltoledano/claude-task-master) | Task orchestration & dependency management |
| double-shot-latte | [superpowers-marketplace](https://github.com/obra/superpowers-marketplace) | Auto-continue without "Would you like me to continue?" prompts (disabled) |

### Memory & Context

| Plugin | Source | Description |
|--------|--------|-------------|
| episodic-memory | [superpowers-marketplace](https://github.com/obra/episodic-memory) | Auto-indexes conversations, semantic search across sessions |
| claude-mem | [thedotmack](https://github.com/thedotmack/claude-mem) | Persistent memory DB, make-plan/do workflow, AST-based smart-explore |
| context7 | [upstash](https://github.com/upstash/context7) | Live library documentation lookup |

### UI & Design

| Plugin | Source | Description |
|--------|--------|-------------|
| frontend-design | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/frontend-design) | Production-grade frontend components (React, Svelte, Vue) |
| ui-ux-pro-max | [nextlevelbuilder](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | 50 styles, 21 palettes, 50 font pairings, multi-framework |

### Security & Quality

| Plugin | Source | Description |
|--------|--------|-------------|
| security-guidance | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/security-guidance) | Warns about injection, XSS, unsafe patterns |
| hookify | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/hookify) | Create custom hooks — auto-format, block dangerous commands |
| claude-md-management | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/claude-md-management) | Audit & maintain CLAUDE.md project instructions |

### Utility

| Plugin | Source | Description |
|--------|--------|-------------|
| playground | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/playground) | Interactive single-file HTML playgrounds |
| skill-creator | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/skill-creator) | Create, test, and evaluate custom skills |
| claude-hud | [claude-hud](https://github.com/jarrodwatts/claude-hud) | Status line HUD — model, cost, tokens, project info |

### Standalone MCP Servers

Configured via `claude mcp add --scope user`, not as plugins.

| Server | Command | Source | Description |
|--------|---------|--------|-------------|
| task-master-ai | `npx -y task-master-ai@latest` | [eyaltoledano/claude-task-master](https://github.com/eyaltoledano/claude-task-master) | Task orchestration & dependency management |
| playwright | `npx @playwright/mcp@latest` | [microsoft/playwright-mcp](https://github.com/microsoft/playwright-mcp) | Official Playwright browser automation & E2E testing |
| svelte | `npx -y @sveltejs/mcp` | [sveltejs/mcp](https://github.com/sveltejs/mcp) | Official Svelte docs, examples, autofixer |
| shadcn | `npx shadcn@latest mcp` | [shadcn-ui/ui](https://github.com/shadcn-ui/ui) | shadcn/ui component search, examples, audit |
| context7 | `npx -y @upstash/context7-mcp --api-key KEY` | [upstash/context7](https://github.com/upstash/context7) | Standalone context7 with API key support |

### Quick Install

```bash
# 1. Add third-party marketplaces (official marketplace is built-in)
claude plugin marketplace add obra/superpowers-marketplace
claude plugin marketplace add eyaltoledano/claude-task-master
claude plugin marketplace add thedotmack/claude-mem
claude plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill
claude plugin marketplace add jarrodwatts/claude-hud

# 2. Install plugins — official marketplace
claude plugin install github@claude-plugins-official
claude plugin install commit-commands@claude-plugins-official
claude plugin install code-review@claude-plugins-official
claude plugin install pr-review-toolkit@claude-plugins-official
claude plugin install pyright-lsp@claude-plugins-official
claude plugin install rust-analyzer-lsp@claude-plugins-official
claude plugin install typescript-lsp@claude-plugins-official
claude plugin install feature-dev@claude-plugins-official
claude plugin install code-simplifier@claude-plugins-official
claude plugin install claude-code-setup@claude-plugins-official
claude plugin install context7@claude-plugins-official
claude plugin install frontend-design@claude-plugins-official
claude plugin install security-guidance@claude-plugins-official
claude plugin install hookify@claude-plugins-official
claude plugin install claude-md-management@claude-plugins-official
claude plugin install playground@claude-plugins-official
claude plugin install skill-creator@claude-plugins-official
# Install plugins — third-party marketplaces
claude plugin install superpowers@superpowers-marketplace
claude plugin install episodic-memory@superpowers-marketplace
claude plugin install double-shot-latte@superpowers-marketplace
claude plugin install taskmaster@taskmaster
claude plugin install claude-mem@thedotmack
claude plugin install ui-ux-pro-max@ui-ux-pro-max-skill
claude plugin install claude-hud@claude-hud

# 3. Add standalone MCP servers (user scope)
claude mcp add --scope user task-master-ai -- npx -y task-master-ai@latest
claude mcp add --scope user playwright -- npx @playwright/mcp@latest
claude mcp add --scope user svelte -- npx -y @sveltejs/mcp
claude mcp add --scope user shadcn -- npx shadcn@latest mcp
claude mcp add --scope user context7 -- npx -y @upstash/context7-mcp --api-key YOUR_API_KEY
```

### Available (Not Installed)

Useful plugins and MCP servers that can be added later.

| Name | Type | Source | Description |
|------|------|--------|-------------|
| semgrep | plugin + MCP | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/semgrep) / [docs](https://semgrep.dev/docs/mcp) | Real-time security vulnerability detection & secure code guidance |
| sourcegraph | plugin + MCP | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/sourcegraph) / [docs](https://sourcegraph.com/docs/api/mcp) | Code search & reference tracing across repositories |

```bash
# Semgrep (requires: brew install semgrep && semgrep login)
claude plugin install semgrep@claude-plugins-official
claude mcp add --scope user semgrep -- semgrep mcp

# Sourcegraph (requires: instance URL + access token)
claude plugin install sourcegraph@claude-plugins-official
claude mcp add --transport http --scope user sourcegraph https://INSTANCE/.api/mcp --header "Authorization: token YOUR_TOKEN"
```
