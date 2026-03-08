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

## Claude Code (22 Plugins)

See [claude-code/README.md](claude-code/README.md) for full details and install commands.

<details>
<summary>Plugin list</summary>

- `github` — GitHub MCP (issues, PRs, branches, releases)
- `commit-commands` — Quick commit, push, PR workflows
- `code-review` — PR code review
- `pr-review-toolkit` — Deep PR review (comments, tests, types, quality)
- `pyright-lsp` — Python type checking
- `rust-analyzer-lsp` — Rust analysis & completion
- `typescript-lsp` — TypeScript/JavaScript type checking
- `superpowers` — Core skills (debugging, TDD, planning, code review, parallel agents)
- `feature-dev` — Guided feature development with codebase analysis
- `taskmaster` — Task orchestration & dependency management
- `code-simplifier` — Post-edit code cleanup & refactoring
- `episodic-memory` — Auto-indexes conversations, semantic search across sessions
- `claude-mem` — Persistent memory DB, make-plan/do workflow, AST smart-explore
- `context7` — Live library documentation lookup
- `playwright-skill` — Browser automation & E2E testing with Playwright
- `frontend-design` — Production-grade frontend components (React, Svelte, Vue)
- `ui-ux-pro-max` — 50 styles, 21 palettes, 50 font pairings, multi-framework
- `security-guidance` — Warns about injection, XSS, unsafe patterns
- `hookify` — Create custom hooks (auto-format, block dangerous commands)
- `claude-md-management` — Audit & maintain CLAUDE.md project instructions
- `playground` — Interactive single-file HTML playgrounds
- `skill-creator` — Create, test, and evaluate custom skills

</details>

---

## TODO

- [ ] Add [Starship](https://starship.rs/) config
- [ ] Add [Oh My Posh](https://ohmyposh.dev/) theme
