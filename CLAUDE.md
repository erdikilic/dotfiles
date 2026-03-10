# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Rules

- Always use Context7 MCP to get up-to-date documentation and code examples when working with any library or API. Do this automatically without the user having to explicitly ask.

## What This Is

A personal dotfiles/toolkit repo for syncing dev environment configs across machines. Contains shell, editor, Git, language tooling, and Claude Code plugin configurations.

## Structure

- `shell/` — Zsh config (oh-my-zsh + powerlevel10k), PATH setup for conda/mamba/nvm/pixi/bun
- `vscode/` — Settings, keybindings, and extension list (install via `cat vscode/extensions.txt | xargs -L 1 code --install-extension`)
- `claude-code/` — Claude Code `settings.json` (copy to `~/.claude/settings.json`) and plugin README with install commands
- Root configs — `gitconfig`, `condarc`, `.editorconfig`, `ruff.toml`, `rustfmt.toml`, `clippy.toml`

## Conventions

- Root configs (`gitconfig`, `condarc`) are installed via symlink: `ln -sf $(pwd)/gitconfig ~/.gitconfig`
- Language configs (`ruff.toml`, `rustfmt.toml`, `clippy.toml`) are base/shared configs — individual projects extend them
- Line length standard: **100** (used in ruff, rustfmt)
- Indent: 4 spaces default, 2 spaces for JS/TS/Svelte/JSON/YAML, tabs for Makefiles

## When Updating Configs

- **Claude Code plugins changed** → Update both `claude-code/settings.json` and `claude-code/README.md` (keep the categorized table format and Quick Install section), and update the Skills section below
- **VSCode extensions changed** → Update `vscode/extensions.txt` (one extension ID per line)
- **Shell config changed** → Only edit `shell/zshrc`; don't touch `shell/powerlevel10k/` (generated config)
- **README.md** → Keep the expandable sections format with `<details>` tags

## Skills / Slash Commands

Quick reference for all available slash commands, grouped by plugin.

### superpowers

| Command | Description |
|---------|-------------|
| `/superpowers:brainstorming` | Explore intent, requirements, and design before creative work |
| `/superpowers:writing-plans` | Create multi-step implementation plans from specs |
| `/superpowers:executing-plans` | Execute written plans with review checkpoints |
| `/superpowers:test-driven-development` | TDD workflow: write tests before implementation |
| `/superpowers:systematic-debugging` | Structured debugging for bugs, test failures, unexpected behavior |
| `/superpowers:dispatching-parallel-agents` | Parallelize 2+ independent tasks via subagents |
| `/superpowers:subagent-driven-development` | Execute plans with independent tasks using subagents |
| `/superpowers:using-git-worktrees` | Create isolated git worktrees for feature work |
| `/superpowers:finishing-a-development-branch` | Guide completion: merge, PR, or cleanup options |
| `/superpowers:requesting-code-review` | Verify work meets requirements before merging |
| `/superpowers:receiving-code-review` | Handle code review feedback with technical rigor |
| `/superpowers:verification-before-completion` | Run verification before claiming work is done |
| `/superpowers:writing-skills` | Create, edit, or verify custom skills |

### hookify

| Command | Description |
|---------|-------------|
| `/hookify:help` | Get help with hookify |
| `/hookify:list` | List configured hookify rules |
| `/hookify:hookify` | Create hooks from conversation analysis or instructions |
| `/hookify:configure` | Enable/disable hookify rules |
| `/hookify:writing-rules` | Guide for hookify rule syntax |

### claude-mem

| Command | Description |
|---------|-------------|
| `/claude-mem:mem-search` | Search persistent cross-session memory |
| `/claude-mem:make-plan` | Create phased implementation plans with doc discovery |
| `/claude-mem:do` | Execute phased plans using subagents |
| `/claude-mem:smart-explore` | Token-optimized code exploration via AST parsing |

### commit-commands

| Command | Description |
|---------|-------------|
| `/commit-commands:clean_gone` | Clean up local branches deleted on remote |
| `/commit-commands:commit` | Create a git commit |
| `/commit-commands:commit-push-pr` | Commit, push, and open a PR |

### claude-md-management

| Command | Description |
|---------|-------------|
| `/claude-md-management:revise-claude-md` | Update CLAUDE.md with session learnings |
| `/claude-md-management:claude-md-improver` | Audit and improve CLAUDE.md quality |

### episodic-memory

| Command | Description |
|---------|-------------|
| `/episodic-memory:search-conversations` | Search previous conversations semantically |
| `/episodic-memory:remembering-conversations` | Recall past approaches and solutions |

### code-review

| Command | Description |
|---------|-------------|
| `/code-review:code-review` | Code review a pull request |

### pr-review-toolkit

| Command | Description |
|---------|-------------|
| `/pr-review-toolkit:review-pr` | Comprehensive PR review using specialized agents |

### feature-dev

| Command | Description |
|---------|-------------|
| `/feature-dev:feature-dev` | Guided feature development with architecture focus |

### frontend-design

| Command | Description |
|---------|-------------|
| `/frontend-design:frontend-design` | Create production-grade frontend interfaces |

### ui-ux-pro-max

| Command | Description |
|---------|-------------|
| `/ui-ux-pro-max:ui-ux-pro-max` | UI/UX design: 50 styles, 21 palettes, 50 font pairings, multiple frameworks |

### playground

| Command | Description |
|---------|-------------|
| `/playground:playground` | Create interactive single-file HTML playgrounds |

### skill-creator

| Command | Description |
|---------|-------------|
| `/skill-creator:skill-creator` | Create, modify, benchmark, and optimize skills |

### playwright-skill

| Command | Description |
|---------|-------------|
| `/playwright-skill:playwright-skill` | Browser automation and testing with Playwright |

### Standalone

| Command | Description |
|---------|-------------|
| `/simplify` | Review changed code for reuse, quality, efficiency |
| `/loop` | Run a command on a recurring interval (e.g., `/loop 5m /foo`) |
| `/claude-api` | Help building apps with Claude API/Anthropic SDK |
| `/keybindings-help` | Customize Claude Code keyboard shortcuts |

## MCP Servers

Plugins that provide tools via Model Context Protocol (no slash commands — used automatically).

| Plugin | Description |
|--------|-------------|
| `github` | GitHub API — PRs, issues, code search, repo management |
| `context7` | Up-to-date library documentation and code examples |
| `taskmaster` | Task creation, tracking, and orchestration for AI-driven dev |
| `episodic-memory` | Semantic search across past Claude Code conversations |
| `claude-mem` | Persistent cross-session memory with observation logging |

## LSP Servers

Language servers providing code intelligence (type checking, go-to-definition, references).

| Plugin | Languages |
|--------|-----------|
| `pyright-lsp` | Python (`.py`, `.pyi`) — static type checking |
| `rust-analyzer-lsp` | Rust (`.rs`) — code intelligence and analysis |
| `typescript-lsp` | TypeScript/JavaScript (`.ts`, `.tsx`, `.js`, `.jsx`, `.mts`, `.cts`, `.mjs`, `.cjs`) |

## Hooks

Plugins that run automatically on specific events.

| Plugin | Description |
|--------|-------------|
| `security-guidance` | Warns about security issues (XSS, injection, unsafe patterns) on file edits |
| `claude-mem` | Session lifecycle hooks for memory persistence |
