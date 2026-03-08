# Dotfiles

Personal dev environment — shell, editor, AI tools.

**Stack:** Tauri/Svelte desktop apps, Rust CLI tools, Snakemake/Nextflow pipelines

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

### Key Settings

- Format on save: Python (Black, line-length 150), Rust (rustfmt), R
- Auto organize imports (isort, profile=black)
- Bracket pair colorization with guides
- GitLens AI via Copilot (GPT-4.1)

Install all extensions:
```bash
cat vscode/extensions.txt | xargs -L 1 code --install-extension
```

---

## Claude Code (22 Plugins)

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

### Quick Install

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

---

## Resources

### Claude Code
- [Plugins Docs](https://code.claude.com/docs/en/discover-plugins) | [Skills Docs](https://code.claude.com/docs/en/skills) | [Hooks Docs](https://code.claude.com/docs/en/hooks)
- [Official Plugin Marketplace](https://github.com/anthropics/claude-plugins-official)
- [awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) — Curated skills, hooks, agents, plugins
- [awesome-claude-plugins](https://github.com/Chat2AnyLLM/awesome-claude-plugins) — Marketplace directory
- [Hooks Guide (20+ examples)](https://dev.to/lukaszfryc/claude-code-hooks-complete-guide-with-20-ready-to-use-examples-2026-dcg)

### Tauri / Desktop Dev
- [tauri-plugin-mcp](https://github.com/P3GLEG/tauri-plugin-mcp) — AI agents debug inside Tauri apps
- [claude-code-tauri-skills](https://playbooks.com/skills/dchuk/claude-code-tauri-skills/tauri-plugins) — Tauri plugin development skills

### Shell
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Nerd Fonts](https://www.nerdfonts.com/)
