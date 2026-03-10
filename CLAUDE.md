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

- **Claude Code plugins changed** → Update both `claude-code/settings.json` and `claude-code/README.md` (keep the categorized table format and Quick Install section)
- **VSCode extensions changed** → Update `vscode/extensions.txt` (one extension ID per line)
- **Shell config changed** → Only edit `shell/zshrc`; don't touch `shell/powerlevel10k/` (generated config)
- **README.md** → Keep the expandable sections format with `<details>` tags
