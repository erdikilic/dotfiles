#!/usr/bin/env bash
# sync.sh — check/capture drift between live Claude Code & Codex configs and this repo.
# Never reads or copies secrets (~/.codex/auth.json, ~/.claude/.credentials.json).
set -uo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_LIVE="$HOME/.claude/settings.json"
CLAUDE_REPO="$REPO_DIR/ai/claude-code/settings.json"
CODEX_LIVE="$HOME/.codex/config.toml"
CODEX_REPO="$REPO_DIR/ai/codex/config.toml"

# Canonical header for the tracked Codex config (re-applied on --pull).
CODEX_HEADER='# Codex CLI config — tracked in dotfiles.
# NOTE: per-project [projects.*] trust levels are intentionally NOT tracked.
# They are machine-specific state that Codex regenerates per machine, and this
# repo is public. `sync.sh --pull` strips them automatically. Do not re-add them.'

usage() {
    cat <<'EOF'
sync.sh — keep live Claude Code / Codex configs in sync with this repo.

Usage:
  ./sync.sh [--check]   Report drift between live configs and the repo (default). Exit 1 on drift.
  ./sync.sh --pull      Capture live configs into the repo (then review with git diff & commit).
  ./sync.sh --help      Show this help.

Claude settings.json is tracked verbatim. Codex config.toml is tracked WITHOUT its
machine-specific [projects.*] trust levels — this repo is public — so both the
comparison and --pull strip them. Never reads or copies secrets (auth.json, credentials).
EOF
}

report() { printf '  %-5s %-22s %s\n' "$1" "$2" "$3"; }

# Strip machine-specific [projects.*] trust tables from a Codex config file.
sanitize_codex() {
    awk '
        /^\[projects\./            { skip=1; next }
        /^\[/ && !/^\[projects\./  { skip=0 }
        skip                       { next }
        { print }
    ' "$1"
}
# Drop full-line comments and blank lines so the tracked header/spacing is not read as drift.
strip_noise() { grep -vE '^[[:space:]]*(#|$)'; }
# Insert a blank line before each [table] header for readability.
pretty_toml() { awk 'NR>1 && /^\[/ && prev!="" {print ""} {print; prev=$0}'; }

check() {
    local drift=0

    if [[ ! -f "$CLAUDE_LIVE" ]]; then report '??' 'claude/settings' 'live file missing'
    elif [[ ! -f "$CLAUDE_REPO" ]]; then report '+' 'claude/settings' 'not tracked in repo'; drift=1
    elif diff -q "$CLAUDE_LIVE" "$CLAUDE_REPO" >/dev/null 2>&1; then report 'ok' 'claude/settings' 'in sync'
    else report '~' 'claude/settings' 'DRIFT (run --pull)'; drift=1; fi

    if [[ ! -f "$CODEX_LIVE" ]]; then report '??' 'codex/config' 'live file missing'
    elif [[ ! -f "$CODEX_REPO" ]]; then report '+' 'codex/config' 'not tracked in repo'; drift=1
    elif diff -q <(sanitize_codex "$CODEX_LIVE" | strip_noise) <(strip_noise <"$CODEX_REPO") >/dev/null 2>&1; then
        report 'ok' 'codex/config' 'in sync (excl. [projects.*])'
    else report '~' 'codex/config' 'DRIFT (run --pull)'; drift=1; fi

    if command -v jq >/dev/null 2>&1 && [[ -f "$CLAUDE_LIVE" && -f "$CLAUDE_REPO" ]]; then
        local ol or
        ol=$(comm -23 <(jq -r '.enabledPlugins|keys[]' "$CLAUDE_LIVE"|sort) \
                      <(jq -r '.enabledPlugins|keys[]' "$CLAUDE_REPO"|sort) 2>/dev/null || true)
        or=$(comm -13 <(jq -r '.enabledPlugins|keys[]' "$CLAUDE_LIVE"|sort) \
                      <(jq -r '.enabledPlugins|keys[]' "$CLAUDE_REPO"|sort) 2>/dev/null || true)
        [[ -n "$ol" ]] && { report '~' 'enabledPlugins' "only in LIVE: $(echo $ol|tr '\n' ' ')"; drift=1; }
        [[ -n "$or" ]] && { report '~' 'enabledPlugins' "only in REPO: $(echo $or|tr '\n' ' ')"; drift=1; }
    elif ! command -v jq >/dev/null 2>&1; then
        report '--' 'enabledPlugins' '(jq not found; skipped)'
    fi

    if [[ $drift -eq 0 ]]; then echo "All tracked configs in sync."
    else echo "Drift detected. Run './sync.sh --pull' to capture live changes into the repo."; fi
    return $drift
}

pull() {
    if [[ -f "$CLAUDE_LIVE" ]]; then cp "$CLAUDE_LIVE" "$CLAUDE_REPO"; report 'pull' 'claude/settings' 'live -> repo'
    else report 'skip' 'claude/settings' 'live file missing'; fi

    if [[ -f "$CODEX_LIVE" ]]; then
        { printf '%s\n\n' "$CODEX_HEADER"; sanitize_codex "$CODEX_LIVE" | pretty_toml; } >"$CODEX_REPO.tmp" \
            && mv "$CODEX_REPO.tmp" "$CODEX_REPO"
        report 'pull' 'codex/config' 'live -> repo (excl. [projects.*])'
    else report 'skip' 'codex/config' 'live file missing'; fi
    echo "Done. Review with 'git diff' and commit."
}

case "${1:---check}" in
    --check) check ;;
    --pull)  pull ;;
    --help|-h) usage ;;
    *) echo "Unknown option: $1" >&2; usage; exit 2 ;;
esac
