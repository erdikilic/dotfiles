# Claude Code (24 Plugins + 5 MCPs)

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
| double-shot-latte | [superpowers-marketplace](https://github.com/obra/superpowers-marketplace) | Auto-continue without "Would you like me to continue?" prompts |

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
| semgrep | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/semgrep) | Real-time security vulnerability detection & secure code guidance |
| hookify | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/hookify) | Create custom hooks — auto-format, block dangerous commands |
| claude-md-management | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/claude-md-management) | Audit & maintain CLAUDE.md project instructions |

### Utility

| Plugin | Source | Description |
|--------|--------|-------------|
| playground | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/playground) | Interactive single-file HTML playgrounds |
| skill-creator | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/skill-creator) | Create, test, and evaluate custom skills |
| sourcegraph | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/sourcegraph) | Code search & reference tracing across repositories |

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
# Copy settings
cp claude-code/settings.json ~/.claude/settings.json

# Add MCP servers (user scope)
claude mcp add --scope user task-master-ai -- npx -y task-master-ai@latest
claude mcp add --scope user playwright -- npx @playwright/mcp@latest
claude mcp add --scope user svelte -- npx -y @sveltejs/mcp
claude mcp add --scope user shadcn -- npx shadcn@latest mcp
claude mcp add --scope user context7 -- npx -y @upstash/context7-mcp --api-key YOUR_API_KEY
```
