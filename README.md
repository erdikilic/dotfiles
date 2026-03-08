# Claude Toolkit

Personal Claude Code dev environment — plugins, themes, templates, and workflow setup.

**Stack:** Tauri/Svelte desktop apps, Rust CLI tools, Snakemake/Nextflow pipelines

## Plugins (22)

### Git & GitHub

| Plugin | Source | Description |
|--------|--------|-------------|
| github | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins) | GitHub MCP — issues, PRs, branches, releases |
| commit-commands | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/commit-commands) | Quick commit, push, PR workflows |
| code-review | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/code-review) | PR code review |
| pr-review-toolkit | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/pr-review-toolkit) | Deep PR review — comments, tests, error handling, types, quality |

### Language Servers (LSP)

| Plugin | Source | Description |
|--------|--------|-------------|
| pyright-lsp | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/pyright-lsp) | Python type checking |
| rust-analyzer-lsp | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/rust-analyzer-lsp) | Rust analysis & completion |
| typescript-lsp | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/typescript-lsp) | TypeScript/JavaScript type checking |

### Dev Workflow & Planning

| Plugin | Source | Description |
|--------|--------|-------------|
| superpowers | [superpowers-marketplace](https://github.com/jlowin/superpowers) | Core skills: debugging, TDD, planning, code review, git worktrees, parallel agents |
| feature-dev | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/feature-dev) | Guided feature development with codebase analysis |
| taskmaster | [taskmaster](https://github.com/eyaltoledano/claude-taskmaster) | Task orchestration & dependency management |
| code-simplifier | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/code-simplifier) | Post-edit code cleanup & refactoring |

### Memory & Context

| Plugin | Source | Description |
|--------|--------|-------------|
| episodic-memory | [superpowers-marketplace](https://github.com/jlowin/superpowers) | Auto-indexes conversations, semantic search across sessions |
| claude-mem | [thedotmack/claude-mem](https://github.com/thedotmack/claude-mem) | Persistent memory DB, make-plan/do workflow, AST-based smart-explore |
| context7 | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins) | Live library documentation lookup (replaces outdated training data) |

### Testing

| Plugin | Source | Description |
|--------|--------|-------------|
| playwright-skill | [lackeyjb/playwright-skill](https://github.com/lackeyjb/playwright-skill) | Browser automation & E2E testing with Playwright (auto-invoked) |

### UI & Design

| Plugin | Source | Description |
|--------|--------|-------------|
| frontend-design | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/frontend-design) | Production-grade frontend components (React, Svelte, Vue, etc.) |
| ui-ux-pro-max | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | 50 styles, 21 palettes, 50 font pairings, multi-framework |

### Security & Quality

| Plugin | Source | Description |
|--------|--------|-------------|
| security-guidance | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/security-guidance) | Hook-based warnings for injection, XSS, unsafe patterns |
| hookify | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/hookify) | Create custom hooks — auto-format, block dangerous commands |
| claude-md-management | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/claude-md-management) | Audit & maintain CLAUDE.md project instructions |

### Utility

| Plugin | Source | Description |
|--------|--------|-------------|
| playground | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/playground) | Interactive single-file HTML playgrounds with live preview |
| skill-creator | [anthropics/claude-plugins-official](https://github.com/anthropics/claude-plugins-official/tree/main/plugins/skill-creator) | Create, test, and evaluate custom skills |

## Quick Install

```bash
# Official marketplace plugins
claude plugin install github commit-commands code-review pr-review-toolkit
claude plugin install pyright-lsp rust-analyzer-lsp typescript-lsp
claude plugin install feature-dev code-simplifier
claude plugin install context7 claude-md-management
claude plugin install security-guidance hookify
claude plugin install playground skill-creator

# Third-party marketplaces
claude plugin marketplace add superpowers-marketplace  # → superpowers, episodic-memory
claude plugin marketplace add eyaltoledano/claude-taskmaster  # → taskmaster
claude plugin marketplace add thedotmack/claude-mem  # → claude-mem
claude plugin marketplace add lackeyjb/playwright-skill  # → playwright-skill
claude plugin marketplace add nextlevelbuilder/ui-ux-pro-max-skill  # → ui-ux-pro-max

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

## Directory Structure

```
claude-toolkit/
  themes/          # Color schemes, fonts, UI assets
  templates/       # Project templates and boilerplate
  hooks/           # Custom Claude Code hooks
  skills/          # Custom skills
  scripts/         # Setup and utility scripts
```

## Useful Resources

- [Claude Code Docs — Plugins](https://code.claude.com/docs/en/discover-plugins)
- [Claude Code Docs — Skills](https://code.claude.com/docs/en/skills)
- [Claude Code Docs — Hooks](https://code.claude.com/docs/en/hooks)
- [Official Plugin Marketplace](https://github.com/anthropics/claude-plugins-official)
- [awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) — Curated list of skills, hooks, agents, plugins
- [awesome-claude-plugins](https://github.com/Chat2AnyLLM/awesome-claude-plugins) — Marketplace & plugin directory
- [Claude Code Hooks Guide (20+ examples)](https://dev.to/lukaszfryc/claude-code-hooks-complete-guide-with-20-ready-to-use-examples-2026-dcg)
- [tauri-plugin-mcp](https://github.com/P3GLEG/tauri-plugin-mcp) — AI agents debug inside Tauri apps
- [dchuk/claude-code-tauri-skills](https://playbooks.com/skills/dchuk/claude-code-tauri-skills/tauri-plugins) — Tauri plugin development skills
