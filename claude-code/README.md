# Claude Code (22 Plugins)

### Git & GitHub

| Plugin | Source | Description |
|--------|--------|-------------|
| github | [official](https://github.com/anthropics/claude-plugins-official) | GitHub MCP — issues, PRs, branches, releases |
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
| superpowers | [superpowers-marketplace](https://github.com/jlowin/superpowers) | Core skills: debugging, TDD, planning, code review, git worktrees, parallel agents |
| feature-dev | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/feature-dev) | Guided feature development with codebase analysis |
| taskmaster | [taskmaster](https://github.com/eyaltoledano/claude-taskmaster) | Task orchestration & dependency management |
| code-simplifier | [official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/code-simplifier) | Post-edit code cleanup & refactoring |

### Memory & Context

| Plugin | Source | Description |
|--------|--------|-------------|
| episodic-memory | [superpowers-marketplace](https://github.com/jlowin/superpowers) | Auto-indexes conversations, semantic search across sessions |
| claude-mem | [thedotmack](https://github.com/thedotmack/claude-mem) | Persistent memory DB, make-plan/do workflow, AST-based smart-explore |
| context7 | [official](https://github.com/anthropics/claude-plugins-official) | Live library documentation lookup |

### Testing

| Plugin | Source | Description |
|--------|--------|-------------|
| playwright-skill | [lackeyjb](https://github.com/lackeyjb/playwright-skill) | Browser automation & E2E testing with Playwright |

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

## Quick Install

```bash
# Official marketplace
claude plugin install github commit-commands code-review pr-review-toolkit
claude plugin install pyright-lsp rust-analyzer-lsp typescript-lsp
claude plugin install feature-dev code-simplifier
claude plugin install context7 claude-md-management
claude plugin install security-guidance hookify
claude plugin install playground skill-creator

# Third-party marketplaces
claude plugin marketplace add superpowers-marketplace
claude plugin marketplace add eyaltoledano/claude-taskmaster
claude plugin marketplace add thedotmack/claude-mem
claude plugin marketplace add lackeyjb/playwright-skill
claude plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill

# Install from third-party
claude plugin install superpowers@superpowers-marketplace
claude plugin install episodic-memory@superpowers-marketplace
claude plugin install taskmaster@taskmaster
claude plugin install claude-mem@thedotmack
claude plugin install playwright-skill@playwright-skill
claude plugin install ui-ux-pro-max@ui-ux-pro-max-skill

# Playwright setup (downloads Chromium)
cd ~/.claude/plugins/cache/playwright-skill/playwright-skill/*/skills/playwright-skill
npm run setup
```

## Resources

- [Plugins Docs](https://code.claude.com/docs/en/discover-plugins) | [Skills Docs](https://code.claude.com/docs/en/skills) | [Hooks Docs](https://code.claude.com/docs/en/hooks)
- [Official Plugin Marketplace](https://github.com/anthropics/claude-plugins-official)
- [awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) — Curated skills, hooks, agents, plugins
- [awesome-claude-plugins](https://github.com/Chat2AnyLLM/awesome-claude-plugins) — Marketplace directory
- [Hooks Guide (20+ examples)](https://dev.to/lukaszfryc/claude-code-hooks-complete-guide-with-20-ready-to-use-examples-2026-dcg)
