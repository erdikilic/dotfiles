# Dotfiles

Personal dev environment — shell, editor, AI tools.

---

## Shell

### Fish + Starship (primary)

- **Prompt:** [Starship](https://starship.rs/) — Gruvbox Dark powerline, single-line with left/right sections
- **Font:** [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- **Plugin manager:** [Fisher](https://github.com/jorgebucaran/fisher)
- **Plugins:** [z](https://github.com/jethrokuan/z) (dir jumping), [fzf.fish](https://github.com/PatrickF1/fzf.fish) (fuzzy finder), [done](https://github.com/franciscolourenco/done) (notifications), [bass](https://github.com/edc/bass) (bash compat)
- **Package managers:** conda/mamba (miniforge3), nvm, pixi, bun

<details>
<summary>Starship prompt segments</summary>

**Left:** conda env (badge) → directory → git branch → git status

**Right:** contextual tools (python, rust, node, docker, nextflow, snakemake) → duration → status

Custom bioinformatics modules detect `nextflow.config` (🧬) and `Snakefile` (🐍).

</details>

Install:
```bash
# Starship
ln -sf $(pwd)/shell/starship.toml ~/.config/starship.toml

# Fish shell
rm -rf ~/.config/fish
ln -sf $(pwd)/shell/fish ~/.config/fish

# Fisher + plugins
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z PatrickF1/fzf.fish franciscolourenco/done edc/bass
```

### Zsh + Oh My Zsh + Powerlevel10k (fallback)

- **Theme:** [Powerlevel10k](https://github.com/romkatv/powerlevel10k) — rainbow style, nerdfont, 1-line, compact
- **Font:** [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- **Plugins:** git, [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- **Package managers:** conda/mamba (miniforge3), nvm, pixi, bun

---

## VSCode

### Theme & Appearance

- **Color theme:** [One Dark Pro Darker](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme) (dark) / Quiet Light (light)
- **Icon theme:** [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
- **Font:** FiraCode Nerd Font
- **Bracket colors:** Custom rainbow — red, orange, pink, blue, green, yellow

### Extensions (56)

<details>
<summary>Full list</summary>

**Themes & Appearance**
- `zhuangtongfa.material-theme` — One Dark Pro
- `beardedbear.beardedtheme` — Bearded Theme
- `timx.ayu-modern` — Ayu Modern
- `github.github-vscode-theme` — GitHub Theme
- `pkief.material-icon-theme` — Material Icon Theme
- `vscode-icons-team.vscode-icons` — vscode-icons
- `ms-vscode.cpptools-themes` — C/C++ Themes
- `danielgjackson.auto-dark-mode-windows` — Auto Dark Mode

**Python**
- `ms-python.python` — Python
- `ms-python.vscode-pylance` — Pylance
- `ms-python.vscode-python-envs` — Python Environments
- `ms-python.debugpy` — Debugpy
- `ms-python.black-formatter` — Black Formatter
- `ms-python.isort` — isort

**Rust**
- `rust-lang.rust-analyzer` — rust-analyzer
- `vadimcn.vscode-lldb` — CodeLLDB (Rust debugger)

**C/C++**
- `ms-vscode.cpptools` — C/C++
- `ms-vscode.cpptools-extension-pack` — C/C++ Extension Pack
- `ms-vscode.cmake-tools` — CMake Tools
- `twxs.cmake` — CMake

**Notebooks & Data**
- `ms-toolsai.jupyter` — Jupyter
- `ms-toolsai.jupyter-keymap` — Jupyter Keymap
- `ms-toolsai.jupyter-renderers` — Jupyter Renderers
- `ms-toolsai.vscode-jupyter-cell-tags` — Jupyter Cell Tags
- `ms-toolsai.vscode-jupyter-slideshow` — Jupyter Slideshow
- `ms-toolsai.vscode-jupyter-powertoys` — Jupyter PowerToys
- `ms-toolsai.datawrangler` — Data Wrangler
- `mechatroner.rainbow-csv` — Rainbow CSV

**Bioinformatics & Pipelines**
- `nextflow.nextflow` — Nextflow
- `broadinstitute.wdl` — WDL
- `broadinstitute.wdl-devtools` — WDL DevTools
- `reditorsupport.r-syntax` — R Syntax

**Git & GitHub**
- `eamodio.gitlens` — GitLens
- `mhutchie.git-graph` — Git Graph
- `guodongsun.vscode-git-cruise` — Git Cruise
- `github.vscode-pull-request-github` — GitHub Pull Requests
- `github.remotehub` — RemoteHub
- `semanticdiff.semanticdiff` — SemanticDiff

**AI**
- `anthropic.claude-code` — Claude Code
- `github.copilot-chat` — GitHub Copilot Chat
- `openai.chatgpt` — ChatGPT

**Remote & Containers**
- `ms-vscode-remote.remote-containers` — Remote - Containers
- `ms-vscode-remote.remote-ssh` — Remote - SSH
- `ms-vscode-remote.remote-ssh-edit` — Remote - SSH: Edit
- `ms-vscode.remote-explorer` — Remote Explorer
- `ms-vscode.remote-repositories` — Remote Repositories
- `ms-vscode.azure-repos` — Azure Repos
- `ms-azuretools.vscode-docker` — Docker
- `ms-azuretools.vscode-containers` — Dev Containers

**Other Languages**
- `modular-mojotools.vscode-mojo` — Mojo
- `tamasfe.even-better-toml` — Even Better TOML

**Utilities**
- `mutantdino.resourcemonitor` — Resource Monitor
- `adpyke.codesnap` — CodeSnap
- `yzhang.markdown-all-in-one` — Markdown All in One
- `ms-dotnettools.vscode-dotnet-runtime` — .NET Runtime

</details>

Install all extensions:
```bash
cat editor/vscode/extensions.txt | xargs -L 1 code --install-extension
```

---

## Git

- `git/gitconfig` — aliases (`s`, `l`, `lg`, `d`, `co`, `cb`, `undo`, `wip`), pull rebase, auto push upstream, histogram diff, zdiff3 merge conflicts.

Symlink: `ln -sf $(pwd)/git/gitconfig ~/.gitconfig`

---

## Editor

- `editor/editorconfig` — universal indent/whitespace rules. 4 spaces for Python/Rust/Snakemake, 2 for JS/TS/Svelte/YAML/JSON.

---

## Conda

- `conda/condarc` — conda-forge + bioconda, prefix.dev mirror, channel_priority disabled.

Symlink: `ln -sf $(pwd)/conda/condarc ~/.condarc`

---

## Linters & Formatters

- `lint/ruff.toml` — Python (Snakemake pipelines). Copy and add project-specific `per-file-ignores` and `known-first-party`.
- `lint/rustfmt.toml` — Rust formatting (100 width, field/try shorthand).
- `lint/clippy.toml` — Rust lints (relaxed thresholds for arg count and type complexity).
- `lint/taplo.toml` — TOML formatting (100 width, 2-space indent).
- `lint/markdownlint.json` — Markdown linting (relaxed for inline HTML and line length).
- `lint/hadolint.yaml` — Dockerfile linting (warns on untrusted registries, relaxed version pinning).

---

## Claude Code (30 Plugins + 5 MCPs)

See [ai/claude-code/README.md](ai/claude-code/README.md) for full details.

<details>
<summary>Plugin list</summary>

| Plugin | Description |
|--------|-------------|
| `github` | GitHub MCP (issues, PRs, branches, releases) |
| `commit-commands` | Quick commit, push, PR workflows |
| `code-review` | PR code review |
| `pr-review-toolkit` | Deep PR review (comments, tests, types, quality) |
| `pyright-lsp` | Python type checking |
| `rust-analyzer-lsp` | Rust analysis & completion |
| `typescript-lsp` | TypeScript/JavaScript type checking |
| `superpowers` | Core skills (debugging, TDD, planning, code review, parallel agents) |
| `feature-dev` | Guided feature development with codebase analysis |
| `code-simplifier` | Post-edit code cleanup & refactoring |
| `taskmaster` | Task orchestration & dependency management _(disabled)_ |
| `claude-code-setup` | Analyze codebases & recommend tailored hooks, skills, MCPs |
| `double-shot-latte` | Auto-continue without "Would you like me to continue?" prompts _(disabled)_ |
| `compound-engineering` | Dev workflow suite (brainstorm, plan, debug, review, PR descriptions) _(disabled)_ |
| `andrej-karpathy-skills` | Karpathy's coding guidelines — surgical changes, verifiable criteria |
| `episodic-memory` | Auto-indexes conversations, semantic search across sessions |
| `claude-mem` | Persistent memory DB, make-plan/do workflow, AST smart-explore |
| `context7` | Live library documentation lookup |
| `frontend-design` | Production-grade frontend components (React, Svelte, Vue) |
| `ui-ux-pro-max` | 50 styles, 21 palettes, 50 font pairings, multi-framework |
| `security-guidance` | Warns about injection, XSS, unsafe patterns |
| `hookify` | Create custom hooks (auto-format, block dangerous commands) |
| `claude-md-management` | Audit & maintain CLAUDE.md project instructions |
| `playground` | Interactive single-file HTML playgrounds |
| `skill-creator` | Create, test, and evaluate custom skills |
| `claude-hud` | Status line HUD — model, cost, tokens, project info |
| `document-skills` | Document suite — PDF, XLSX, DOCX, PPTX, canvas art, MCP builder |
| `codex` | Delegate tasks & code review to OpenAI Codex |
| `academic-research-skills` | Academic paper pipeline — deep research, writing, peer review, revision |
| `remember` | `/remember` — save session state for clean continuation next session |

</details>

<details>
<summary>MCP Servers</summary>

Plugins that provide tools via Model Context Protocol (used automatically, no slash commands).

| Plugin | Description |
|--------|-------------|
| `github` | GitHub API — PRs, issues, code search, repo management |
| `context7` | Up-to-date library documentation and code examples |
| `episodic-memory` | Semantic search across past Claude Code conversations |
| `claude-mem` | Persistent cross-session memory with observation logging |
| `chrome_devtools` | Drive Chrome — console, network, performance traces, screenshots |
| `svelte` | Svelte documentation, examples, playground links, autofixer |
| `shadcn` | shadcn/ui component registry search, examples, audit checklists |
| `playwright` | Official Playwright browser automation & E2E testing |

</details>

<details>
<summary>LSP Servers</summary>

Language servers providing code intelligence (type checking, go-to-definition, references).

| Plugin | Languages |
|--------|-----------|
| `pyright-lsp` | Python (`.py`, `.pyi`) — static type checking |
| `rust-analyzer-lsp` | Rust (`.rs`) — code intelligence and analysis |
| `typescript-lsp` | TypeScript/JavaScript (`.ts`, `.tsx`, `.js`, `.jsx`, `.mts`, `.cts`, `.mjs`, `.cjs`) |

</details>

<details>
<summary>Hooks</summary>

Plugins that run automatically on specific events.

| Plugin | Description |
|--------|-------------|
| `security-guidance` | Warns about security issues (XSS, injection, unsafe patterns) on file edits |
| `claude-mem` | Session lifecycle hooks for memory persistence |

</details>

---

## Codex

[Codex CLI](https://github.com/openai/codex) config — model, reasoning effort, personality, and TUI/notice
settings.

- **Config:** `ai/codex/config.toml` — model/reasoning/personality, `[tui]` status line, `[notice]`.
- **Not tracked (intentionally):** the per-project `[projects.*]` trust levels (machine-specific local
  paths — this repo is public) and `rules/default.rules` (accumulated per-session command approvals).
  `sync.sh` strips `[projects.*]` automatically on `--pull`.
- **Secrets:** `~/.codex/auth.json` (OAuth tokens) is **never** tracked.

> Installed by **copy, not symlink** — Codex rewrites `config.toml` at runtime (it appends project trust
> levels), so a symlink would keep dirtying the repo. Use `./sync.sh --pull` to recapture local changes
> (with `[projects.*]` stripped).

Install:
```bash
cp ai/codex/config.toml ~/.codex/config.toml
```

Keep in sync:
```bash
./sync.sh --check   # report drift between live configs and this repo
./sync.sh --pull    # copy live configs back into the repo, then commit
```

---

## TODO

- [x] Add [Starship](https://starship.rs/) config
- [ ] ~~Add [Oh My Posh](https://ohmyposh.dev/) theme~~ — replaced by Starship
