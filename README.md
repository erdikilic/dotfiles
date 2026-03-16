# Dotfiles

Personal dev environment — shell, editor, AI tools.

---

## Shell

### Zsh + Oh My Zsh + Powerlevel10k

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
cat vscode/extensions.txt | xargs -L 1 code --install-extension
```

---

## Git

- `gitconfig` — aliases (`s`, `l`, `lg`, `d`, `co`, `cb`, `undo`, `wip`), pull rebase, auto push upstream, histogram diff, zdiff3 merge conflicts.

Symlink: `ln -sf $(pwd)/gitconfig ~/.gitconfig`

---

## Editor

- `.editorconfig` — universal indent/whitespace rules. 4 spaces for Python/Rust/Snakemake, 2 for JS/TS/Svelte/YAML/JSON.

---

## Conda

- `condarc` — conda-forge + bioconda, prefix.dev mirror, channel_priority disabled.

Symlink: `ln -sf $(pwd)/condarc ~/.condarc`

---

## Linters & Formatters

- `ruff.toml` — Python (Snakemake pipelines). Copy and add project-specific `per-file-ignores` and `known-first-party`.
- `rustfmt.toml` — Rust formatting (100 width, field/try shorthand).
- `clippy.toml` — Rust lints (relaxed thresholds for arg count and type complexity).
- `taplo.toml` — TOML formatting (100 width, 2-space indent).
- `.markdownlint.json` — Markdown linting (relaxed for inline HTML and line length).
- `.hadolint.yaml` — Dockerfile linting (warns on untrusted registries, relaxed version pinning).

---

## Claude Code (25 Plugins + 7 MCPs)

See [claude-code/README.md](claude-code/README.md) for full details.

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
| `taskmaster` | Task orchestration & dependency management |
| `claude-code-setup` | Analyze codebases & recommend tailored hooks, skills, MCPs |
| `double-shot-latte` | Auto-continue without "Would you like me to continue?" prompts |
| `episodic-memory` | Auto-indexes conversations, semantic search across sessions |
| `claude-mem` | Persistent memory DB, make-plan/do workflow, AST smart-explore |
| `context7` | Live library documentation lookup |
| `frontend-design` | Production-grade frontend components (React, Svelte, Vue) |
| `ui-ux-pro-max` | 50 styles, 21 palettes, 50 font pairings, multi-framework |
| `security-guidance` | Warns about injection, XSS, unsafe patterns |
| `semgrep` | Real-time security vulnerability detection & secure code guidance |
| `hookify` | Create custom hooks (auto-format, block dangerous commands) |
| `claude-md-management` | Audit & maintain CLAUDE.md project instructions |
| `playground` | Interactive single-file HTML playgrounds |
| `skill-creator` | Create, test, and evaluate custom skills |
| `sourcegraph` | Code search & reference tracing across repositories |

</details>

<details>
<summary>Skills / Slash Commands (50)</summary>

**superpowers**

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

**hookify**

| Command | Description |
|---------|-------------|
| `/hookify:help` | Get help with hookify |
| `/hookify:list` | List configured hookify rules |
| `/hookify:hookify` | Create hooks from conversation analysis or instructions |
| `/hookify:configure` | Enable/disable hookify rules |
| `/hookify:writing-rules` | Guide for hookify rule syntax |

**claude-mem**

| Command | Description |
|---------|-------------|
| `/claude-mem:mem-search` | Search persistent cross-session memory |
| `/claude-mem:make-plan` | Create phased implementation plans with doc discovery |
| `/claude-mem:do` | Execute phased plans using subagents |
| `/claude-mem:smart-explore` | Token-optimized code exploration via AST parsing |

**commit-commands**

| Command | Description |
|---------|-------------|
| `/commit-commands:clean_gone` | Clean up local branches deleted on remote |
| `/commit-commands:commit` | Create a git commit |
| `/commit-commands:commit-push-pr` | Commit, push, and open a PR |

**claude-md-management**

| Command | Description |
|---------|-------------|
| `/claude-md-management:revise-claude-md` | Update CLAUDE.md with session learnings |
| `/claude-md-management:claude-md-improver` | Audit and improve CLAUDE.md quality |

**episodic-memory**

| Command | Description |
|---------|-------------|
| `/episodic-memory:search-conversations` | Search previous conversations semantically |
| `/episodic-memory:remembering-conversations` | Recall past approaches and solutions |

**Single-command plugins**

| Plugin | Command | Description |
|--------|---------|-------------|
| code-review | `/code-review:code-review` | Code review a pull request |
| pr-review-toolkit | `/pr-review-toolkit:review-pr` | Comprehensive PR review using specialized agents |
| feature-dev | `/feature-dev:feature-dev` | Guided feature development with architecture focus |
| frontend-design | `/frontend-design:frontend-design` | Create production-grade frontend interfaces |
| ui-ux-pro-max | `/ui-ux-pro-max:ui-ux-pro-max` | UI/UX design: 50 styles, 21 palettes, 50 font pairings, multiple frameworks |
| playground | `/playground:playground` | Create interactive single-file HTML playgrounds |
| skill-creator | `/skill-creator:skill-creator` | Create, modify, benchmark, and optimize skills |
| claude-code-setup | `/claude-code-setup:claude-automation-recommender` | Analyze codebase & recommend Claude Code automations |
| semgrep-plugin | `/semgrep-plugin:setup-semgrep-plugin` | Set up Semgrep plugin (install, authenticate, verify) |
| sourcegraph | `/sourcegraph:sg-search`, `/sourcegraph:sg-file` | Search & read files from Sourcegraph |

**Standalone**

| Command | Description |
|---------|-------------|
| `/simplify` | Review changed code for reuse, quality, efficiency |
| `/loop` | Run a command on a recurring interval (e.g., `/loop 5m /foo`) |
| `/claude-api` | Help building apps with Claude API/Anthropic SDK |
| `/keybindings-help` | Customize Claude Code keyboard shortcuts |

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
| `task-master-ai` | Task orchestration & dependency management |
| `svelte` | Svelte documentation, examples, playground links, autofixer |
| `shadcn` | shadcn/ui component registry search, examples, audit checklists |
| `playwright` | Official Playwright browser automation & E2E testing |
| `semgrep` | Security scanning & vulnerability detection |
| `sourcegraph` | Code search & reference tracing across repositories |

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

## TODO

- [ ] Add [Starship](https://starship.rs/) config
- [ ] Add [Oh My Posh](https://ohmyposh.dev/) theme
