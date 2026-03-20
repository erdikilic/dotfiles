---
name: dotfiles-sync
description: Compare installed Claude Code plugins and MCP servers against dotfiles, show differences, and update settings.json + README.md + root README.md to match
disable-model-invocation: true
---

# Dotfiles Sync

Sync the dotfiles repo with the currently installed Claude Code plugins and MCP servers.

## Workflow

### Step 1: Gather current state

Run these in parallel:

1. **Installed plugins**: Parse `~/.claude/plugins/installed_plugins.json` — extract all plugin keys (format: `name@marketplace`)
2. **Installed MCPs**: Run `claude mcp list` — extract standalone MCP server names (ignore `plugin:*` and `claude.ai` entries)
3. **Live settings**: Parse `~/.claude/settings.json` — extract `enabledPlugins` and `extraKnownMarketplaces`
4. **Dotfiles tracked**: Read `claude-code/settings.json` — extract `enabledPlugins` and `extraKnownMarketplaces`
5. **Dotfiles README**: Read `claude-code/README.md` — extract plugin table entries and MCP server table entries

### Step 2: Diff and report

Compare installed vs tracked. Report:

```
## Sync Report

### Plugins
- New (installed but not in dotfiles): [list]
- Removed (in dotfiles but not installed): [list]
- In sync: X plugins

### MCP Servers
- New (configured but not in dotfiles): [list]
- Removed (in dotfiles but not configured): [list]
- In sync: X servers

### Marketplace registries
- New: [list]
- Removed: [list]
```

If everything is in sync, say so and stop.

### Step 3: Update dotfiles

For each new plugin, determine:
- **Category**: Which section it belongs to in the README (Git & GitHub, Language Servers, Dev Workflow & Planning, Memory & Context, UI & Design, Security & Quality, Utility)
- **Source**: The marketplace repo URL (check `extraKnownMarketplaces` in live settings or the plugin cache directory)
- **Description**: Brief one-line description (check the plugin's installed SKILL.md or package metadata)

Then update these files:

1. **`claude-code/settings.json`**:
   - Add/remove entries in `enabledPlugins`
   - Add/remove entries in `extraKnownMarketplaces`
   - Match the structure of `~/.claude/settings.json`

2. **`claude-code/README.md`**:
   - Update plugin count in title (`# Claude Code (N Plugins + M MCPs)`)
   - Add/remove rows in the appropriate category table
   - Add/remove marketplace lines in Quick Install section
   - Add/remove install lines in Quick Install section
   - For MCPs: add/remove rows in Standalone MCP Servers table and install commands

3. **`README.md`** (root):
   - Update plugin count in the Claude Code section heading
   - Add/remove rows in the Plugin list `<details>` table
   - Update slash command count if the plugin provides new skills
   - Add slash command entries for any new plugin skills (check the plugin's skills/ directory)

### Step 4: Verify

After updates, show a summary of all changes made and file-by-file diffs.
