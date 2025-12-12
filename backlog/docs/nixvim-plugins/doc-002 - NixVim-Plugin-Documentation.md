---
id: doc-002
title: NixVim Plugin Documentation
type: documentation
created_date: '2025-12-12 05:52'
---

# NixVim Plugin Documentation

This document provides comprehensive documentation for all plugins configured in the Blueprint NixVim setup.

## Overview

Blueprint uses 37 plugins organized into logical categories for a complete development experience. All plugins are configured declaratively in Nix and follow consistent patterns.

## Plugin Categories

### ⚡ Completion Stack (4 plugins)

#### 1. blink-cmp - Core Completion Engine
**File**: `blink.nix`
**Purpose**: Ultra-fast async completion framework (0.5-4ms)
**Features**:
- Aggregates LSP, snippets, AI, paths, buffer sources
- Typo-resistant fuzzy matching
- Signature help and documentation
**Keybindings**:
- `<C-space>` - Open completion menu
- `<Tab>/<S-Tab>` - Navigate items
- `<CR>` - Accept selection
- `<C-e>` - Dismiss menu

#### 2. lspconfig - Language Server Integration
**File**: `lspconfig.nix`
**Purpose**: Connects Neovim to LSP servers for IDE features
**Languages**: Go, TypeScript, Lua, Bash, JSON, Nix
**Features**: Go-to-definition, diagnostics, rename, formatting
**Commands**:
- `:LspInfo` - Server status
- `:LspLog` - Debug logs

#### 3. supermaven - AI Code Completion
**File**: `supermaven.nix`
**Purpose**: Fast AI-powered code suggestions (free tier available)
**Setup**: Run `:SupermavenUseFree` first time
**Keybindings**:
- `<C-a>` - Accept suggestion
- `<C-e>` - Dismiss suggestion
- `<C-j>` - Accept word

#### 4. luasnip - Code Snippets
**File**: Integrated in `blink.nix`
**Purpose**: Template system for reusable code snippets
**Integration**: Works seamlessly with blink-cmp

### 🎨 User Interface (6 plugins)

#### 5. airline - Status Line
**File**: `airline.nix`
**Purpose**: Lightweight status bar with file info, git status, position
**Shows**: Mode, branch, filename, file type, cursor position, file size + word count
**Theme**: Dracula with custom styling

#### 6. bufferline - Tab Bar
**File**: `bufferline.nix`
**Purpose**: Shows open buffers as clickable tabs at top
**Features**: Buffer indicators, close buttons, navigation

#### 7. noice - Modern Message UI
**File**: `noice.nix`
**Purpose**: Replaces Vim's basic messages with modern popup interface
**Shows**: Command output, search results, LSP messages in styled popups

#### 8. which-key - Keybinding Helper
**File**: `which-key.nix`
**Purpose**: Shows available keybindings when `<leader>` is pressed
**Features**: Interactive discovery, grouped commands, descriptions

#### 9. snacks - Utility Collection
**File**: `snacks.nix`
**Purpose**: Modern utilities (explorer, notifications, scrolling hints)
**Components**:
- File explorer (`<leader>e`)
- Picker system
- Status column
- Word highlights

#### 10. fidget - LSP Progress Indicator
**File**: `fidget.nix`
**Purpose**: Shows LSP server progress in corner instead of verbose messages
**Displays**: "Indexing..." or "Analyzing..." status

### 🧭 Navigation (6 plugins)

#### 11. telescope - Fuzzy Finder
**File**: `telescope.nix`
**Purpose**: Powerful search interface for files, buffers, grep
**Keybindings**:
- `<leader>ff` - Find files
- `<leader>fw` - Live grep
- `<leader>fb` - Find buffers

#### 12. harpoon - File Bookmarks
**File**: `harpoon.nix`
**Purpose**: Quick mark/jump to frequently used files
**Keybindings**: `<leader>h` + number (1-4) to mark/jump

#### 13. oil - File Explorer
**File**: `oil.nix`
**Purpose**: Edit filesystem like text (create, rename, delete by editing)
**Keybindings**:
- `-` - Open parent directory
- `<CR>` - Open in split

#### 14. oil-git-status - Git Status for Oil
**File**: `oil-git-status.nix`
**Purpose**: Shows git status icons in Oil file explorer
**Displays**: Modified, added, deleted file indicators

#### 15. tmux-navigator - Pane Navigation
**File**: `tmux-navigator.nix`
**Purpose**: Seamless navigation between Vim splits and tmux panes
**Keybindings**: `<C-h/j/k/l>` work in both Vim and tmux

#### 16. flash - Enhanced Motions
**File**: `flash.nix`
**Purpose**: Leap-style motions with search/char/treesitter modes
**Keybindings**:
- `s` - Jump to character
- `S` - Treesitter scope
- `r` - Remote flash

#### 17. navbuddy - Code Structure Browser
**File**: `navbuddy.nix`
**Purpose**: Popup showing LSP symbols for code navigation
**Keybindings**: `<leader>nb` - Open structure browser

### 🔧 Code Quality (4 plugins)

#### 18. conform - Code Formatting
**File**: `conform.nix`
**Purpose**: Async formatter supporting multiple languages
**Formatters**: Biome, gofmt, stylua, shfmt, etc.
**Keybindings**: `<leader>cf` - Format buffer

#### 19. trouble - Diagnostics Panel
**File**: `trouble.nix`
**Purpose**: Pretty list of LSP errors/warnings with navigation
**Keybindings**:
- `<leader>xx` - All diagnostics
- `<leader>xX` - Buffer diagnostics

#### 20. neotest - Test Runner
**File**: `neotest.nix`
**Purpose**: Unified interface for running tests with results display
**Supports**: Go tests, shows status/output inline

#### 21. dap - Debug Adapter Protocol
**File**: `dap.nix`
**Purpose**: Debug support with breakpoints, stepping, variable inspection
**Adapters**: Go (dap-go), UI components, virtual text

### 🌳 Treesitter (3 plugins)

#### 22. treesitter - Syntax Engine
**File**: `treesitter.nix`
**Purpose**: AST-based syntax highlighting, indentation, incremental selection
**Features**: Better highlighting than regex, textobjects for navigation

#### 23. treesitter-context - Sticky Headers
**File**: `treesitter-context.nix`
**Purpose**: Shows current function/class context at top while scrolling
**Displays**: Function signature or class name as you scroll

#### 24. twilight - Focus Mode
**File**: `twilight.nix`
**Purpose**: Dims surrounding code to focus on current function/block
**Helps**: Reduce distractions when working on specific code sections

### ✏️ Text Editing (3 plugins)

#### 25. comment - Comment Toggling
**File**: `comment.nix`
**Purpose**: Smart comment/uncomment with `gc` operator
**Features**: Treesitter-aware language detection, block comments

#### 26. mini - Lightweight Utilities
**File**: `mini.nix`
**Purpose**: Collection of small, focused utilities
**Components**:
- `ai` - Textobjects
- `surround` - Edit brackets, quotes, tags
- `pairs` - Auto-pairs

#### 27. render-markdown - Markdown Display
**File**: `render-markdown.nix`
**Purpose**: Renders markdown with proper formatting in editor
**Shows**: Headers, links, code blocks, lists with styling

### 🛠️ Utilities (9 plugins)

#### 28. gitsigns - Git Decorations
**File**: `git.nix`
**Purpose**: Shows git status in line decorations (added/modified/deleted)
**Features**: Hunk navigation, blame, staging, diff preview

#### 29. lazygit - Git TUI
**File**: `lazygit.nix`
**Purpose**: Integrates lazygit terminal UI into Neovim
**Keybindings**: `<leader>gg` - Open lazygit interface

#### 30. persistence - Session Management
**File**: `persistence.nix`
**Purpose**: Saves/restores editor state across sessions
**Remembers**: Open buffers, folds, cursor positions

#### 31. sleuth - Indent Detection
**File**: `sleuth.nix`
**Purpose**: Automatically detects indentation style from file content
**Handles**: Spaces vs tabs, indent width

#### 32. lazydev - Lua Development
**File**: `lazydev.nix`
**Purpose**: Provides Neovim API type hints for Lua config files
**Helps**: Writing NixVim configurations with proper completion

#### 33. editorconfig - Project Settings
**File**: `editorconfig.nix`
**Purpose**: Applies .editorconfig file settings automatically
**Controls**: Indentation, line endings, charset per project

#### 34. web-devicons - File Icons
**File**: `icons.nix`
**Purpose**: Provides file type icons for various plugins
**Used by**: Telescope, alpha, trouble, and other UI components

#### 35. colorscheme - Dracula Theme
**File**: `colorscheme.nix`
**Purpose**: Applies Dracula dark theme with vibrant colors
**Covers**: All UI elements, syntax highlighting

#### 36. alpha - Startup Dashboard
**File**: `alpha.nix`
**Purpose**: Shows greeter/dashboard on startup with ASCII art
**Features**: Quick action buttons, recent files

#### 37. arrow - Line Bookmarks
**File**: `arrow.nix`
**Purpose**: Lightweight bookmarking for frequently accessed lines
**Features**: Persistent bookmarks across sessions

#### 38. pbcopy - System Clipboard
**File**: `pbcopy.nix`
**Purpose**: Enables system clipboard integration on macOS
**Allows**: Copy/paste between Neovim and other applications

## Configuration Patterns

### Standard Plugin Structure
```nix
# Plugin Name - Brief description
# Docs: https://github.com/author/plugin
# Rationale: Why this plugin solves X problem

{
  plugins.pluginName = {
    enable = true;
    settings = {
      # Plugin-specific configuration
    };
  };
}
```

### Keybinding Organization
- `<leader>` commands grouped by function (f/t/c/x/g/etc.)
- Consistent naming conventions
- Descriptive help text for which-key

### LSP Server Configuration
```nix
lsp.servers = {
  languageName.enable = true;
  languageName.config = {
    # Server-specific settings
  };
};
```

## Plugin Dependencies

### Critical Dependencies
- **blink + lspconfig + supermaven**: Completion stack requires all three
- **treesitter**: Required by many plugins for syntax awareness
- **web-devicons**: Required by UI plugins for file icons

### Optional Dependencies
- **oil-git-status**: Enhances oil with git information
- **treesitter-context**: Enhances treesitter with context display
- **twilight**: Enhances focus mode

## Performance Considerations

### Lazy Loading
- Plugins load on demand to minimize startup time
- LSP servers start when opening relevant file types
- Completion sources activate only when needed

### Resource Usage
- Treesitter parsers loaded per language
- LSP servers run in background
- UI plugins optimized for responsiveness

## Troubleshooting

### Plugin Loading Issues
- Check `:checkhealth` for plugin status
- Verify Nix configuration syntax
- Ensure plugin dependencies are installed

### LSP Issues
- `:LspInfo` for server status
- `:LspLog` for debugging information
- Check language server installation

### Keybinding Conflicts
- `:map <leader>x` to check bindings
- `:verbose map <leader>x` to see source
- Check which-key for conflicts

## Maintenance

### Updating Plugins
1. Update flake inputs
2. Test configuration changes
3. Verify keybindings still work
4. Update documentation if needed

### Adding New Plugins
1. Create `.nix` file with proper structure
2. Add to `default.nix` imports
3. Configure keybindings if needed
4. Update which-key groups
5. Test and document

### Removing Plugins
1. Remove `.nix` file
2. Remove from `default.nix` imports
3. Clean up keybindings
4. Update which-key groups
5. Update documentation

This documentation serves as the comprehensive reference for all plugins in the Blueprint NixVim configuration.

