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
ln -sf $(pwd)/starship.toml ~/.config/starship.toml

# Fish shell
rm -rf ~/.config/fish
ln -sf $(pwd)/fish ~/.config/fish

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

## Claude Code (73 Built-in + 28 Plugins + 5 MCPs)

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
| `double-shot-latte` | Auto-continue without "Would you like me to continue?" prompts (disabled) |
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

</details>

<details>
<summary>Built-in Commands (73)</summary>

Commands built into the Claude Code CLI. Source: [commands reference](https://code.claude.com/docs/en/commands).

| Command | Description |
|---------|-------------|
| `/add-dir <path>` | Add a working directory for file access |
| `/agents` | Manage agent configurations |
| `/autofix-pr [prompt]` | Spawn web session to auto-fix PR CI/review issues |
| `/batch <instruction>` | **Skill.** Orchestrate large-scale parallel changes across a codebase |
| `/branch [name]` | Branch the conversation (aliases: `/fork`) |
| `/btw <question>` | Quick side question without adding to conversation |
| `/chrome` | Configure Claude in Chrome settings |
| `/claude-api` | **Skill.** Load Claude API reference material and Managed Agents reference |
| `/clear` | Clear conversation history (aliases: `/reset`, `/new`) |
| `/color [color]` | Set prompt bar color for session |
| `/compact [instructions]` | Compact conversation with optional focus |
| `/config` | Open Settings interface (alias: `/settings`) |
| `/context` | Visualize context usage as a colored grid |
| `/copy [N]` | Copy last assistant response to clipboard |
| `/cost` | Show token usage statistics |
| `/debug [description]` | **Skill.** Enable debug logging and troubleshoot issues |
| `/desktop` | Continue session in Desktop app (alias: `/app`) |
| `/diff` | Interactive diff viewer for uncommitted and per-turn changes |
| `/doctor` | Diagnose and verify installation and settings |
| `/effort [level]` | Set model effort level (low, medium, high, max, auto) |
| `/exit` | Exit the CLI (alias: `/quit`) |
| `/export [filename]` | Export conversation as plain text |
| `/extra-usage` | Configure extra usage for rate limits |
| `/fast [on\|off]` | Toggle fast mode |
| `/feedback [report]` | Submit feedback (alias: `/bug`) |
| `/help` | Show help and available commands |
| `/hooks` | View hook configurations for tool events |
| `/ide` | Manage IDE integrations and show status |
| `/init` | Initialize project with CLAUDE.md guide |
| `/insights` | Generate session analysis report (patterns, friction) |
| `/install-github-app` | Set up Claude GitHub Actions app |
| `/install-slack-app` | Install Claude Slack app |
| `/keybindings` | Open or create keybindings configuration file |
| `/login` | Sign in to Anthropic account |
| `/logout` | Sign out from Anthropic account |
| `/loop [interval] [prompt]` | **Skill.** Run a prompt repeatedly on an interval |
| `/mcp` | Manage MCP server connections and OAuth |
| `/memory` | Edit CLAUDE.md memory files, toggle auto-memory |
| `/mobile` | QR code for mobile app (aliases: `/ios`, `/android`) |
| `/model [model]` | Select or change AI model |
| `/passes` | Share a free week of Claude Code |
| `/permissions` | Manage tool permission rules (alias: `/allowed-tools`) |
| `/plan [description]` | Enter plan mode |
| `/plugin` | Manage plugins |
| `/powerup` | Interactive feature lessons with animated demos |
| `/privacy-settings` | View and update privacy settings |
| `/release-notes` | View changelog in interactive version picker |
| `/reload-plugins` | Reload active plugins without restarting |
| `/remote-control` | Make session available for remote control (alias: `/rc`) |
| `/remote-env` | Configure default remote environment |
| `/rename [name]` | Rename current session |
| `/resume [session]` | Resume conversation by ID or name (alias: `/continue`) |
| `/rewind` | Rewind conversation and/or code (alias: `/checkpoint`) |
| `/sandbox` | Toggle sandbox mode |
| `/schedule [description]` | **Skill.** Create, update, list, or run scheduled tasks |
| `/security-review` | Analyze pending changes for security vulnerabilities |
| `/setup-bedrock` | Configure Amazon Bedrock (interactive wizard) |
| `/setup-vertex` | Configure Google Vertex AI (interactive wizard) |
| `/simplify [focus]` | **Skill.** Review changed code for quality, then fix issues |
| `/skills` | List available skills |
| `/stats` | Visualize daily usage, streaks, model preferences |
| `/status` | Settings status tab (version, model, account) |
| `/statusline` | Configure Claude Code's status line |
| `/stickers` | Order Claude Code stickers |
| `/tasks` | List and manage background tasks (alias: `/bashes`) |
| `/teleport` | Pull web session into terminal (alias: `/tp`) |
| `/terminal-setup` | Configure terminal keybindings (Shift+Enter, etc.) |
| `/theme` | Change color theme (light, dark, colorblind, ANSI) |
| `/ultraplan <prompt>` | Draft plan in ultraplan session, review in browser |
| `/upgrade` | Open upgrade page |
| `/usage` | Show plan usage limits and rate limit status |
| `/voice` | Toggle push-to-talk voice dictation |
| `/web-setup` | Connect GitHub to Claude Code on the web |

</details>

<details>
<summary>Skills / Slash Commands (167)</summary>

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
| `/claude-mem:timeline-report` | Generate project development history/timeline reports |
| `/claude-mem:version-bump` | Automated semantic versioning and release workflow for plugins |
| `/claude-mem:knowledge-agent` | Build and query AI-powered knowledge bases from observations |

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

**taskmaster**

| Command | Description |
|---------|-------------|
| `/taskmaster:smart-workflow` | Auto-detect next action and execute the right workflow |
| `/taskmaster:init-project` | Initialize a new Task Master project |
| `/taskmaster:init-project-quick` | Quick project initialization with defaults |
| `/taskmaster:parse-prd` | Parse a PRD into tasks |
| `/taskmaster:parse-prd-with-research` | Parse PRD with web research for better task generation |
| `/taskmaster:next-task` | Show the next task to work on |
| `/taskmaster:auto-implement-tasks` | Automatically implement pending tasks |
| `/taskmaster:list-tasks` | List all tasks |
| `/taskmaster:list-tasks-by-status` | List tasks filtered by status |
| `/taskmaster:list-tasks-with-subtasks` | List tasks with their subtasks |
| `/taskmaster:show-task` | Show details of a specific task |
| `/taskmaster:add-task` | Add a new task |
| `/taskmaster:update-task` | Update a task's details |
| `/taskmaster:update-single-task` | Update a single task field |
| `/taskmaster:update-tasks-from-id` | Batch update tasks starting from a given ID |
| `/taskmaster:remove-task` | Remove a task |
| `/taskmaster:expand-task` | Expand a task into subtasks |
| `/taskmaster:expand-all-tasks` | Expand all pending tasks into subtasks |
| `/taskmaster:add-subtask` | Add a subtask to a task |
| `/taskmaster:remove-subtask` | Remove a specific subtask |
| `/taskmaster:remove-subtasks` | Remove multiple subtasks |
| `/taskmaster:remove-all-subtasks` | Remove all subtasks from a task |
| `/taskmaster:convert-task-to-subtask` | Convert a standalone task into a subtask |
| `/taskmaster:to-pending` | Set task status to pending |
| `/taskmaster:to-in-progress` | Set task status to in-progress |
| `/taskmaster:to-review` | Set task status to review |
| `/taskmaster:to-done` | Set task status to done |
| `/taskmaster:to-cancelled` | Set task status to cancelled |
| `/taskmaster:to-deferred` | Set task status to deferred |
| `/taskmaster:add-dependency` | Add a dependency between tasks |
| `/taskmaster:remove-dependency` | Remove a dependency between tasks |
| `/taskmaster:validate-dependencies` | Validate task dependency graph |
| `/taskmaster:fix-dependencies` | Auto-fix invalid dependencies |
| `/taskmaster:analyze-project` | Analyze project structure and codebase |
| `/taskmaster:analyze-complexity` | Analyze task complexity |
| `/taskmaster:complexity-report` | Generate a complexity report |
| `/taskmaster:project-status` | Show overall project status |
| `/taskmaster:setup-models` | Configure AI model settings |
| `/taskmaster:view-models` | View current model configuration |
| `/taskmaster:sync-readme` | Sync README with current task state |
| `/taskmaster:command-pipeline` | Run a sequence of taskmaster commands |
| `/taskmaster:install-taskmaster` | Install Task Master |
| `/taskmaster:quick-install-taskmaster` | Quick install with defaults |
| `/taskmaster:help` | Get help with taskmaster commands |
| `/taskmaster:learn` | Learn about taskmaster concepts and workflows |
| `/taskmaster:tm-main` | Main taskmaster entry point |

**claude-hud**

| Command | Description |
|---------|-------------|
| `/claude-hud:setup` | Configure claude-hud as your status line |
| `/claude-hud:configure` | Configure HUD display options (layout, presets, elements) |

**Single-command plugins**

| Plugin | Command | Description |
|--------|---------|-------------|
| code-review | `/code-review:code-review` | Code review a pull request |
| pr-review-toolkit | `/pr-review-toolkit:review-pr` | Comprehensive PR review using specialized agents |
| feature-dev | `/feature-dev:feature-dev` | Guided feature development with architecture focus |
| frontend-design | `/frontend-design:frontend-design` | Create production-grade frontend interfaces |
| ui-ux-pro-max | `/ui-ux-pro-max:ui-ux-pro-max` | UI/UX design: 50+ styles, 161 palettes, 57 font pairings, multiple frameworks |
| playground | `/playground:playground` | Create interactive single-file HTML playgrounds |
| skill-creator | `/skill-creator:skill-creator` | Create, modify, benchmark, and optimize skills |
| claude-code-setup | `/claude-code-setup:claude-automation-recommender` | Analyze codebase & recommend Claude Code automations |
| andrej-karpathy-skills | `/andrej-karpathy-skills:karpathy-guidelines` | Reduce LLM mistakes — surgical changes, surface assumptions, verifiable criteria |

**ui-ux-pro-max** (additional skills)

| Command | Description |
|---------|-------------|
| `/ui-ux-pro-max:banner-design` | Design banners for social media, ads, website heroes, print (22 styles) |
| `/ui-ux-pro-max:brand` | Brand voice, visual identity, messaging frameworks, asset management |
| `/ui-ux-pro-max:design` | Comprehensive design: logos (55 styles), CIP (50 deliverables), icons, social photos |
| `/ui-ux-pro-max:design-system` | Token architecture, component specs, three-layer design tokens |
| `/ui-ux-pro-max:slides` | Strategic HTML presentations with Chart.js, design tokens, responsive layouts |
| `/ui-ux-pro-max:ui-styling` | UI styling with shadcn/ui, Radix UI, Tailwind, canvas-based visual designs |

**Standalone**

| Command | Description |
|---------|-------------|
| `/simplify` | Review changed code for reuse, quality, efficiency |
| `/loop` | Run a command on a recurring interval (e.g., `/loop 5m /foo`) |
| `/claude-api` | Help building apps with Claude API/Anthropic SDK |
| `/keybindings-help` | Customize Claude Code keyboard shortcuts |
| `/update-config` | Configure Claude Code settings.json (hooks, permissions, env vars) |
| `/schedule` | Create, update, list, or run scheduled remote agents on a cron schedule |

**document-skills**

| Command | Description |
|---------|-------------|
| `/document-skills:pdf` | Read, merge, split, rotate, watermark, encrypt, OCR PDF files |
| `/document-skills:xlsx` | Open, read, edit, create, convert spreadsheet files |
| `/document-skills:docx` | Create, read, edit, manipulate Word documents |
| `/document-skills:pptx` | Create, read, edit, combine slide decks and presentations |
| `/document-skills:frontend-design` | Create production-grade frontend interfaces with high design quality |
| `/document-skills:canvas-design` | Create visual art in PNG/PDF using design philosophy |
| `/document-skills:claude-api` | Build, debug, optimize Claude API / Anthropic SDK apps |
| `/document-skills:algorithmic-art` | Create generative art using p5.js with seeded randomness |
| `/document-skills:webapp-testing` | Test local web apps using Playwright — screenshots, logs, UI verification |
| `/document-skills:brand-guidelines` | Apply Anthropic brand colors and typography to artifacts |
| `/document-skills:internal-comms` | Write internal communications (status reports, updates, FAQs, incident reports) |
| `/document-skills:mcp-builder` | Guide for building MCP servers (Python FastMCP or Node/TS SDK) |
| `/document-skills:theme-factory` | Apply or generate themes for slides, docs, reports, landing pages |
| `/document-skills:web-artifacts-builder` | Create multi-component web artifacts with React, Tailwind, shadcn/ui |
| `/document-skills:slack-gif-creator` | Create animated GIFs optimized for Slack |
| `/document-skills:doc-coauthoring` | Structured workflow for co-authoring documentation and specs |
| `/document-skills:skill-creator` | Create, modify, evaluate, and benchmark custom skills |

**codex**

| Command | Description |
|---------|-------------|
| `/codex:review` | Run a Codex code review against local git state |
| `/codex:adversarial-review` | Run a Codex review that challenges implementation approach and design choices |
| `/codex:rescue` | Delegate investigation or fix requests to Codex rescue subagent |
| `/codex:setup` | Check Codex CLI readiness and toggle stop-time review gate |
| `/codex:status` | Show active and recent Codex jobs, including review-gate status |
| `/codex:result` | Show stored final output for a finished Codex job |
| `/codex:cancel` | Cancel an active background Codex job |

**compound-engineering**

| Command | Description |
|---------|-------------|
| `/compound-engineering:ce-brainstorm` | Explore requirements and approaches through collaborative dialogue |
| `/compound-engineering:ce-plan` | Create structured plans for multi-step tasks with interactive review |
| `/compound-engineering:ce-work` | Execute work efficiently while maintaining quality |
| `/compound-engineering:ce-debug` | Systematic root-cause debugging for errors and test failures |
| `/compound-engineering:ce-review` | Structured code review with tiered persona agents |
| `/compound-engineering:ce-optimize` | Metric-driven iterative optimization loops (Karpathy autoresearch-inspired) |
| `/compound-engineering:ce-compound` | Document a solved problem to compound team knowledge |
| `/compound-engineering:ce-ideate` | Generate and evaluate grounded improvement ideas for a project |
| `/compound-engineering:ce-sessions` | Search and query coding agent session history |
| `/compound-engineering:ce-slack-research` | Search Slack for organizational context and decisions |
| `/compound-engineering:ce-demo-reel` | Capture visual demo reels (GIF, screenshots) for PR descriptions |
| `/compound-engineering:ce-pr-description` | Write or regenerate value-first PR descriptions |
| `/compound-engineering:git-commit` | Create a git commit with clear, value-communicating message |
| `/compound-engineering:git-commit-push-pr` | Commit, push, and open a PR with adaptive description |
| `/compound-engineering:git-worktree` | Manage git worktrees for isolated parallel development |
| `/compound-engineering:git-clean-gone-branches` | Clean up local branches whose remote tracking is gone |
| `/compound-engineering:onboarding` | Generate ONBOARDING.md for new contributors |
| `/compound-engineering:document-review` | Review requirements/plan docs using parallel persona agents |
| `/compound-engineering:todo-resolve` | Batch-resolve approved todos after code review or triage |
| `/compound-engineering:test-browser` | Run browser tests on pages affected by current PR/branch |
| `/compound-engineering:proof` | Create, edit, comment on markdown docs via Proof's web API |
| `/compound-engineering:claude-permissions-optimizer` | Optimize Claude Code permissions from session history |
| `/compound-engineering:frontend-design` | Build web interfaces with genuine design quality |
| `/compound-engineering:agent-native-architecture` | Build apps where agents are first-class citizens |
| `/compound-engineering:gemini-imagegen` | Generate and edit images using Gemini API |
| `/compound-engineering:andrew-kane-gem-writer` | Write Ruby gems following Andrew Kane's patterns |
| `/compound-engineering:dhh-rails-style` | Write Ruby/Rails code in DHH's 37signals style |
| `/compound-engineering:dspy-ruby` | Build type-safe LLM apps with DSPy.rb |
| `/compound-engineering:every-style-editor` | Review/edit copy for Every's style guide compliance |
| `/compound-engineering:lfg` | Full autonomous engineering workflow |
| `/compound-engineering:ce-work-beta` | Execute work with experimental Codex delegation mode |
| `/compound-engineering:ce-compound-refresh` | Refresh stale learnings and pattern docs against current codebase |
| `/compound-engineering:changelog` | Create engaging changelogs for recent merges to main |
| `/compound-engineering:resolve-pr-feedback` | Resolve PR review feedback by evaluating and fixing issues in parallel |
| `/compound-engineering:agent-native-audit` | Run comprehensive agent-native architecture review with scored principles |
| `/compound-engineering:todo-create` | Create durable work items in the file-based todo system |
| `/compound-engineering:todo-triage` | Review pending todos for approval and prioritize findings |
| `/compound-engineering:test-xcode` | Build and test iOS apps on simulator using XcodeBuildMCP |
| `/compound-engineering:deploy-docs` | Validate and prepare documentation for GitHub Pages deployment |
| `/compound-engineering:ce-setup` | Diagnose and configure compound-engineering environment |
| `/compound-engineering:ce-update` | Check if plugin is up to date and fix stale cache |
| `/compound-engineering:report-bug-ce` | Report a bug in the compound-engineering plugin |

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

- [x] Add [Starship](https://starship.rs/) config
- [ ] ~~Add [Oh My Posh](https://ohmyposh.dev/) theme~~ — replaced by Starship
