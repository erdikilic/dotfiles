# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Rules

- Always use Context7 MCP to get up-to-date documentation and code examples when working with any library or API. Do this automatically without the user having to explicitly ask.

## What This Is

A personal dotfiles/toolkit repo for syncing dev environment configs across machines. Contains shell, editor, Git, language tooling, and Claude Code plugin configurations.

## Structure

- `shell/` — `fish/` (primary, Fisher plugins), `zsh/` (oh-my-zsh + powerlevel10k fallback), `starship.toml`
- `editor/` — `vscode/` (settings, keybindings, extensions), `editorconfig`
- `git/gitconfig`, `conda/condarc` — installed via symlink
- `lint/` — base linter/formatter configs (`ruff.toml`, `rustfmt.toml`, `clippy.toml`, `taplo.toml`,
  `biome.json`, `hadolint.yaml`, `markdownlint.json`); projects extend them
- `ai/claude-code/` — Claude Code `settings.json` (copy to `~/.claude/settings.json`) + plugin README
- `ai/codex/` — Codex CLI `config.toml` (copy to `~/.codex/`, not symlinked); machine-specific
  `[projects.*]` trust levels and `rules/default.rules` are intentionally not tracked (public repo)
- `sync.sh` — check/pull drift between live Claude & Codex configs and this repo

## Conventions

- Root topic configs are installed via symlink, e.g. `ln -sf $(pwd)/git/gitconfig ~/.gitconfig` and
  `ln -sf $(pwd)/conda/condarc ~/.condarc`
- Codex config is installed by **copy, not symlink** (`cp ai/codex/config.toml ~/.codex/config.toml`) —
  Codex rewrites it at runtime; recapture with `./sync.sh --pull`
- Language configs in `lint/` are base/shared configs — individual projects extend them
- Line length standard: **100** (used in ruff, rustfmt)
- Indent: 4 spaces default, 2 spaces for JS/TS/Svelte/JSON/YAML, tabs for Makefiles

## When Updating Configs

- **Claude Code plugins changed** → Update both `ai/claude-code/settings.json` and `ai/claude-code/README.md` (keep the categorized table format and Quick Install section)
- **VSCode extensions changed** → Update `editor/vscode/extensions.txt` (one extension ID per line)
- **Linter/formatter configs changed** → Update the file in `lint/` and the corresponding section in `README.md`
- **Shell config changed** → Only edit `shell/zsh/zshrc`; don't touch `shell/zsh/powerlevel10k/` (generated config)
- **Codex config changed** → run `./sync.sh --pull`, then commit `ai/codex/`
- **README.md** → Keep the expandable sections format with `<details>` tags
