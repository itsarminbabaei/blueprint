# Blueprint Developer Guide

**Blueprint** is a comprehensive, declarative development environment built with Nix, providing a reproducible Neovim configuration and development workflow.

## Table of Contents

- [Quick Start](#quick-start)
- [Architecture Overview](#architecture-overview)
- [NixVim Configuration](#nixvim-configuration)
- [Plugin Ecosystem](#plugin-ecosystem)
- [Keybindings & Workflow](#keybindings--workflow)
- [Project Management](#project-management)
- [Development Workflow](#development-workflow)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)

## Quick Start

### Prerequisites
- Nix with flakes enabled
- macOS (Darwin) or Linux
- Basic familiarity with Nix concepts

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/blueprint.git
cd blueprint

# Build and apply configuration
sudo darwin-rebuild switch --flake .#darwin  # macOS
# OR
home-manager switch --flake .                # Linux
```

### First Steps

1. **Activate AI Completion**: `:SupermavenUseFree`
2. **Verify LSP**: `:LspInfo`
3. **Explore Keybindings**: `<leader>?`
4. **Customize**: Edit files in `modules/home/programs/nixvim/config/`

## Architecture Overview

### Project Structure

```
blueprint/
├── modules/
│   ├── home/
│   │   ├── home-shared.nix          # Core packages, LSP servers, fonts
│   │   ├── programs/
│   │   │   ├── nixvim/              # Neovim configuration
│   │   │   │   └── config/          # Plugin configurations
│   │   │   ├── fish.nix             # Shell configuration
│   │   │   ├── ghostty.nix          # Terminal settings
│   │   │   ├── starship.nix         # Prompt configuration
│   │   │   ├── tmux.nix             # Multiplexer setup
│   │   │   └── git.nix              # Git configuration
│   └── darwin/                      # macOS-specific settings
├── hosts/                           # System configurations
├── flake.nix                        # Nix flake definition
└── README.md                        # User documentation
```

### Design Principles

- **Declarative**: All configuration is code, version-controlled
- **Reproducible**: Identical environments across machines
- **Composable**: Modular plugin system with clean separation
- **Documented**: Every component has rationale and source links
- **Maintainable**: Clear structure and consistent patterns

## NixVim Configuration

### Core Philosophy

Blueprint uses [NixVim](https://github.com/nix-community/nixvim) to configure Neovim entirely in Nix. This provides:

- **Version Pinning**: Exact plugin versions guaranteed
- **Dependency Management**: Automatic resolution of plugin dependencies
- **Type Safety**: Configuration validated at build time
- **Reproducibility**: Same config across all machines

### Configuration Structure

Each plugin has its own `.nix` file in `modules/home/programs/nixvim/config/`:

```nix
# Plugin Name - Brief description
# Docs: https://github.com/plugin-author/plugin-name
# Rationale: Why this plugin, what it solves

{
  plugins.pluginName = {
    enable = true;
    settings = {
      # Plugin-specific configuration
    };
  };
}
```

### Key Configuration Files

| File | Purpose | Critical Plugins |
|------|---------|------------------|
| `blink.nix` | Completion framework | blink-cmp, luasnip |
| `lspconfig.nix` | Language servers | 6 LSP servers |
| `supermaven.nix` | AI completion | Supermaven |
| `keymaps.nix` | All keybindings | Custom mappings |
| `which-key.nix` | Keybinding help | Interactive discovery |
| `airline.nix` | Status line | vim-airline |

## Plugin Ecosystem

### Completion Stack (Critical)

**Framework**: [blink-cmp](https://cmp.saghen.dev/) - Modern, async completion
- **LSP**: Real-time diagnostics from language servers
- **Snippets**: Code templates via luasnip
- **AI**: Supermaven suggestions (free tier available)
- **Buffers**: Words from open files
- **Paths**: File system completion

**Keybindings**:
- `<C-space>` - Open completion menu
- `<Tab>/<S-Tab>` - Navigate items
- `<CR>` - Accept selection
- `<C-a>` - Accept AI suggestion
- `<C-e>` - Dismiss menu

### UI Components

| Component | Plugin | Purpose |
|-----------|--------|---------|
| Status Line | vim-airline | File info, git status, position |
| Tab Line | bufferline | Buffer tabs with indicators |
| Dashboard | alpha | Startup screen with shortcuts |
| Messages | noice | Enhanced command line UI |
| Key Help | which-key | Interactive keybinding discovery |

### Navigation & Editing

| Category | Plugins | Key Features |
|----------|---------|--------------|
| **File Explorer** | oil (+ oil-git-status) | Edit filesystem as text |
| **Fuzzy Finder** | telescope | Project-wide search |
| **Bookmarks** | harpoon | File and terminal marks |
| **Motion** | flash | Character and tree-sitter jumps |
| **Text Objects** | treesitter-textobjects | AST-based selections |
| **Surround** | mini.surround | Edit brackets, quotes, tags |

### Code Quality

| Component | Plugin | Features |
|-----------|--------|----------|
| **Formatting** | conform | Multi-language code formatting |
| **Diagnostics** | trouble | LSP error/warning navigation |
| **Testing** | neotest | Test runner integration |
| **Debugging** | dap | Debug adapter protocol support |

### Git Integration

| Plugin | Purpose |
|--------|---------|
| gitsigns | Line-by-line git status |
| lazygit | Terminal git UI |
| diffview | Side-by-side diffs |

### Language Support

**Treesitter**: Syntax highlighting, code navigation, text objects
**LSP Servers**: Go, TypeScript, Lua, Bash, JSON, Nix

## Keybindings & Workflow

### Leader Key
**Space** (`<leader>`) - All custom commands start with this

### Core Navigation

| Key | Action | Description |
|-----|--------|-------------|
| `H`/`L` | Start/end of line | Smart line navigation |
| `j`/`k` | Vertical movement | Respects wrapped lines |
| `<Left>`/`<Right>` | Previous/next buffer | Buffer switching |
| `<C-h/j/k/l>` | tmux navigation | Pane switching |

### Search & Find (`<leader>f`)

| Key | Action | Description |
|-----|--------|-------------|
| `ff` | Find files | Telescope file picker |
| `fw` | Live grep | Search in project |
| `fb` | Find buffers | Open buffer list |
| `fh` | Help tags | Search documentation |

### File Operations

| Key | Action | Description |
|-----|--------|-------------|
| `-` | Oil explorer | Open parent directory |
| `<leader>e` | Snacks explorer | Alternative file browser |
| `<leader>h` + `a/m/1-4` | Harpoon marks | Jump to marked files |

### LSP & Code (`<leader>c`)

| Key | Action | Description |
|-----|--------|-------------|
| `cf` | Format buffer | Run code formatter |
| `cl` | LSP references | Find symbol references |
| `cs` | Symbols | Document/workspace symbols |
| `gd` | Go to definition | Jump to definition |
| `gr` | Go to references | Find all references |

### Git Operations (`<leader>g`)

| Key | Action | Description |
|-----|--------|-------------|
| `k`/`j` | Previous/next hunk | Navigate changes |
| `p` | Preview hunk | Show diff |
| `s`/`u` | Stage/unstage | Git add/remove |
| `r`/`R` | Reset hunk/buffer | Undo changes |

### UI Toggles (`<leader>u`)

| Key | Action | Description |
|-----|--------|-------------|
| `l`/`L` | Line numbers | Absolute/relative toggle |
| `w` | Word wrap | Toggle text wrapping |
| `d` | Diagnostics | Show/hide LSP messages |
| `c` | Conceal level | Toggle syntax concealing |
| `s` | Spelling | Spell check toggle |

### Debugging (`<leader>D`)

| Key | Action | Description |
|-----|--------|-------------|
| `b` | Toggle breakpoint | Add/remove breakpoint |
| `c` | Continue | Run until breakpoint |
| `si` | Step into | Enter function calls |
| `so` | Step over | Skip function calls |

## Project Management

### Backlog.md Integration

Blueprint includes [Backlog.md](https://github.com/MrLesk/Backlog.md) for collaborative task management between humans and AI agents.

**Key Features**:
- Git-native task tracking
- Acceptance criteria management
- AI-human collaboration workflows
- Kanban board visualization
- Automated metadata synchronization

### Task Workflow

```bash
# View available tasks
backlog task list --plain

# Start working on a task
backlog task edit 42 -s "In Progress" -a @username

# Mark acceptance criteria complete
backlog task edit 42 --check-ac 1 --check-ac 2

# Add implementation notes
backlog task edit 42 --notes "Completed feature X"

# Mark task as done
backlog task edit 42 -s Done
```

### Search & Discovery

```bash
# Search tasks by keyword
backlog search "authentication" --plain

# Filter by status
backlog search "api" --status "In Progress" --plain

# Find tasks by assignee
backlog task list -a @username --plain
```

## Development Workflow

### Daily Development

1. **Start Session**: `tmux` or `zellij` for multiplexing
2. **Open Project**: Use telescope (`<leader>ff`) or oil (`-`)
3. **Code Navigation**: LSP (`gd`, `gr`) and treesitter objects
4. **Version Control**: Gitsigns for line-level git, lazygit for complex operations
5. **Testing**: Neotest for running tests, DAP for debugging

### Plugin Development

**Adding a Plugin**:
1. Create `modules/home/programs/nixvim/config/plugin-name.nix`
2. Add configuration with docs link and rationale
3. Import in `default.nix`
4. Add keymaps in `keymaps.nix` if needed
5. Update README.md

**Configuration Pattern**:
```nix
# Plugin Name - Brief description
# Docs: https://github.com/author/plugin
# Rationale: Why this plugin solves X problem

{
  plugins.pluginName = {
    enable = true;
    settings = {
      # Configuration options
    };
  };
}
```

### Customization Workflow

1. **Identify Need**: What workflow needs improvement?
2. **Research**: Check nixvim docs and plugin documentation
3. **Configure**: Add plugin configuration
4. **Test**: Rebuild and verify functionality
5. **Document**: Update keymaps and README

## Troubleshooting

### Common Issues

**Plugin Not Loading**:
```vim
:checkhealth  # Check plugin status
:LspInfo       # Verify LSP servers
```

**Keybinding Conflicts**:
```vim
:map <leader>x  # Check what <leader>x is bound to
:verbose map <leader>x  # See where it's defined
```

**Performance Issues**:
- Check `highlighting_cache` in airline.nix
- Review treesitter parser installations
- Monitor LSP server performance

### Known Issues & Solutions

**VAM Deprecation Warning**:
- Source: nixvim internal migration
- Status: Non-breaking, safe to ignore
- No action needed

**EditorConfig Deprecation**:
- File is correct (`editorconfig.enable = true`)
- Warning from nixvim's migration layer
- No action needed

**Supermaven Integration**:
- Requires `blink-compat` for nvim-cmp sources
- Configured correctly in blink.nix
- Use `:SupermavenUseFree` to activate

### Rebuilding Configuration

```bash
# macOS
sudo darwin-rebuild switch --flake .#darwin

# Linux
home-manager switch --flake .

# Check syntax
nix flake check
```

### Debugging Configuration

```vim
# Plugin information
:lua print(vim.inspect(require('plugin-name')))

# Configuration inspection
:lua print(vim.inspect(vim.g.airline_settings))

# LSP debugging
:LspLog
```

## Contributing

### Code Style

- **Nix**: Follow established patterns in existing files
- **Documentation**: Every plugin needs docs link and rationale
- **Comments**: Precise, no filler text
- **Organization**: One plugin per file, alphabetical imports

### Testing Changes

1. **Syntax Check**: `nix flake check`
2. **Build Test**: Rebuild configuration
3. **Runtime Test**: `:checkhealth` and `:LspInfo`
4. **Keymap Test**: `:map <leader>xx` to verify bindings

### Plugin Addition Checklist

- [ ] Plugin file created with proper header
- [ ] Configuration follows nixvim patterns
- [ ] Keymaps added if applicable
- [ ] which-key groups updated
- [ ] README.md updated
- [ ] Rebuild successful
- [ ] Functionality verified

### Documentation Updates

- Update plugin counts in README.md
- Add keybindings to appropriate sections
- Include rationale for new additions
- Test all documented commands

## Advanced Configuration

### Custom LSP Servers

Add to `modules/home/home-shared.nix`:

```nix
lsp.servers = {
  yourLanguage.enable = true;
  yourLanguage.config = {
    # Server-specific settings
  };
};
```

### Plugin Overrides

For custom plugin versions or patches:

```nix
plugins.yourPlugin = {
  enable = true;
  package = pkgs.vimPlugins.yourPlugin.overrideAttrs (old: {
    # Custom modifications
  });
};
```

### Environment-Specific Configs

Use `osConfig` for host-specific settings:

```nix
# Only on macOS
pkgs.lib.optionals (osConfig.programs.vim.enable && pkgs.stdenv.isDarwin) [
  # macOS-specific packages
]
```

## Resources

### Official Documentation
- [Nix Manual](https://nixos.org/manual/nix/stable/)
- [NixVim Docs](https://nix-community.github.io/nixvim/)
- [Neovim Documentation](https://neovim.io/doc/)

### Plugin Documentation
- [blink-cmp](https://cmp.saghen.dev/)
- [Supermaven](https://github.com/supermaven-inc/supermaven-nvim)
- [Trouble](https://github.com/folke/trouble.nvim)

### Community Resources
- [NixOS Discourse](https://discourse.nixos.org/)
- [NixVim GitHub](https://github.com/nix-community/nixvim)
- [Backlog.md](https://github.com/MrLesk/Backlog.md)

---

**Blueprint** - Because your development environment should be as reliable as your code.