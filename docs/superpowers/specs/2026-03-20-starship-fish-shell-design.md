# Starship + Fish Shell Configuration Design

## Context

Migrating from Zsh + Oh-My-Zsh + Powerlevel10k to Fish + Starship as the primary terminal setup. The current P10k prompt uses a single-line rainbow powerline style with colored background segments and angled separators (left: os_icon → dir → git; right: status → duration → conda → user@host). Oh-My-Posh was tried but couldn't properly handle conda environment display. Starship was chosen for its native conda support and cross-shell compatibility.

The user is a bioinformatician working with conda, Docker, Python, Rust, Nextflow, and Snakemake.

## Design Decisions

### Prompt Layout: Single-Line with Left/Right Sections

Matches the current P10k layout — one line with powerline-style colored background segments and `\uE0B0`/`\uE0B2` separator characters.

**Left prompt (`format`):**
1. **Conda env** — always shown, prominent badge with ` ` icon. Named envs use gruvbox green (`#98971a`), base uses aqua (`#689d6a`)
2. **Directory** — truncated to 3 levels, gruvbox blue (`#458588`)
3. **Git branch** — with ` ` icon, gruvbox red (`#cc241d`)
4. **Git status** — modified/staged/untracked counts, gruvbox yellow (`#d79921`)

**Right prompt (`right_format`):**
1. **Exit status** — ✔ green on success, ✘ red on error
2. **Command duration** — always shown (no threshold)
3. **Python version** — contextual (when .py/pyproject.toml detected), gruvbox purple (`#b16286`)
4. **Rust version** — contextual (when Cargo.toml detected), gruvbox orange (`#d65d0e`)
5. **Node.js version** — contextual (when package.json detected), gruvbox blue (`#458588`)
6. **Docker context** — contextual (when Dockerfile detected), gruvbox aqua (`#689d6a`)
7. **Nextflow** — custom module, 🧬 icon when `nextflow.config` detected
8. **Snakemake** — custom module, 🐍 icon when `Snakefile` detected

### Color Palette: Gruvbox Dark

Full Gruvbox Dark palette defined as a custom Starship palette:

| Segment | Color | Hex |
|---------|-------|-----|
| Conda (named) | Green | `#98971a` |
| Conda (base) | Aqua | `#689d6a` |
| Directory | Blue | `#458588` |
| Python | Purple | `#b16286` |
| Rust | Orange | `#d65d0e` |
| Node.js | Blue | `#458588` |
| Docker | Aqua | `#689d6a` |
| Git branch | Red | `#cc241d` |
| Git status | Yellow | `#d79921` |
| Bioinfo (nf/sm) | Aqua | `#689d6a` |
| Status (ok) | Green | `#98971a` |
| Status (error) | Red | `#cc241d` |
| Duration | BG1 | `#3c3836` |
| Text on dark bg | FG | `#ebdbb2` |
| Text on light bg | BG | `#282828` |

### Visual Style: Powerline with Nerd Font Icons

- Powerline separators: `\uE0B0` (left→right), `\uE0B2` (right→left)
- Nerd Font icons for all modules (existing nerd font from P10k)
- No prompt character on a separate line — the left prompt terminates with the powerline arrow
- No empty line before prompt

### Icons

| Module | Icon |
|--------|------|
| Conda | ` ` |
| Directory | ` ` |
| Python | ` ` |
| Rust | ` ` |
| Node.js | ` ` |
| Docker | ` ` |
| Git branch | ` ` |
| Nextflow | `🧬` |
| Snakemake | `🐍` |

## Fish Shell Configuration

### Migration Strategy: Gradual

- Keep Zsh as login shell (no `chsh`)
- Set Fish as the shell in terminal emulator settings
- Maintain both `shell/` (zsh) and `fish/` configs in dotfiles
- Starship works with both shells during transition

### Plugin Manager: Fisher

Install: `curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher`

### Plugins

| Plugin | Purpose |
|--------|---------|
| `jethrokuan/z` | Frecency-based directory jumping |
| `PatrickF1/fzf.fish` | Fuzzy finder key bindings (Ctrl+R history, Ctrl+F files) |
| `franciscolourenco/done` | Auto-notify when long commands finish |
| `edc/bass` | Bash script compatibility layer |

### Config Structure

```
fish/
  config.fish        # Main config: starship init, interactive check
  conf.d/
    00-path.fish     # PATH: miniforge, nvm, pixi, bun via fish_add_path
    10-conda.fish    # Conda/mamba init for Fish + changeps1 disabled
    20-abbr.fish     # Abbreviations: nf, sm, dk, snm, etc.
```

### config.fish

- `starship init fish | source`
- Guard all interactive setup with `if status is-interactive`
- No POSIX compatibility shims needed (bass plugin handles edge cases)

### conf.d/00-path.fish

Translate from current zshrc:
- `fish_add_path $HOME/miniforge3/bin`
- `fish_add_path $HOME/.pixi/bin`
- `fish_add_path $HOME/.bun/bin`
- NVM via bass: `bass source ~/.nvm/nvm.sh` (uses the bash compat plugin already installed)

### conf.d/10-conda.fish

- Run `conda init fish` to generate activation scripts
- Set `conda config --set changeps1 false` to prevent conda's own prompt (Starship handles it)
- Initialize mamba if available

### conf.d/20-abbr.fish

```fish
abbr -a nf 'nextflow'
abbr -a sm 'snakemake'
abbr -a dk 'docker'
abbr -a snm 'snakemake --cores all --use-conda'
abbr -a nfrun 'nextflow run -latest'
```

## Dotfiles Structure

```
dotfiles/
  shell/              # Existing zsh config (kept as-is)
    zshrc
    powerlevel10k/
  fish/               # NEW → symlink to ~/.config/fish/
    config.fish
    conf.d/
      00-path.fish
      10-conda.fish
      20-abbr.fish
  starship.toml       # NEW → symlink to ~/.config/starship.toml
```

Installation:
```bash
ln -sf $(pwd)/starship.toml ~/.config/starship.toml
# Remove existing fish config directory if present (e.g., from prior Fish install)
rm -rf ~/.config/fish
ln -sf $(pwd)/fish ~/.config/fish
```

## Starship TOML Configuration Outline

The `starship.toml` will contain:

1. **Custom palette** — `[palettes.gruvbox_dark]` with all hex colors
2. **`palette = "gruvbox_dark"`** — apply globally
3. **`format`** — left prompt with powerline separators between modules
4. **`right_format`** — right prompt with reverse powerline separators
5. **Module configs** — each module styled with `bg:` and `fg:` referencing palette colors
6. **Custom modules** — `[custom.nextflow]` and `[custom.snakemake]` detecting workflow files
7. **`add_newline = false`** — no empty line before prompt

### Powerline Implementation in Starship

Starship achieves powerline segments by embedding separator characters directly in each module's `format` string with matching `bg:` and `fg:` colors. Each module's format must include a trailing separator whose foreground matches the current module's background and whose background matches the next module's background. This requires careful chaining in the global `format` string.

## Verification

1. Install starship: `conda install -c conda-forge starship` or `curl -sS https://starship.rs/install.sh | sh`
2. Install Fish: `sudo apt install fish` or `conda install -c conda-forge fish`
3. Install Fisher + plugins
4. Symlink configs
5. Open terminal with Fish shell
6. Verify:
   - Conda env badge appears (switch between base and named envs)
   - Git branch/status shows in a git repo
   - Python version appears when in a Python project
   - Rust version appears when in a Rust project
   - Nextflow/Snakemake icons appear when config files detected
   - Command duration shows after every command
   - Error state shows red ✘ after a failed command
   - Right prompt aligns properly on the same line
   - Powerline separators render correctly (requires Nerd Font)
