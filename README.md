<div align="justify">
  <p align="left">
    <strong>
      <samp>「</samp>
    </strong>
  </p>
  <p align="center">
    <samp>
      <b>
        Blueprint
        <br />
        Terminal-First Nix Environment
      </b>
      <br />
      <img
        src="https://readme-typing-svg.demolab.com?font=Geist+Mono&size=16&pause=2000&color=ff79c6&center=true&vCenter=true&width=435&lines=nix+%E2%86%92+vim+%E2%86%90+terminal"
        alt="Typing SVG"
      />
    </samp>
  </p>
  <p align="right">
    <strong>
      <samp>」</samp>
    </strong>
  </p>
  <details>
    <summary>
      <samp>
        <b>Overview</b>
      </samp>
    </summary>
    <br />
    <h2></h2>
    <p align="left">
      <samp>
        A comprehensive, declarative development environment built on Nix. This Blueprint provides a complete terminal-first workflow with NixVim, AI coding assistants, and seamless cross-platform compatibility.
        <br /><br />
        Based on <a href="https://github.com/numtide/blueprint">Numtide's Blueprint</a>, extended with 59 NixVim plugins, AI tools, and personal configurations for an optimized development experience.
      </samp>
    </p>
    <h2></h2>
    <br />
    <h3>
      <samp>
        <b>Stack</b>
      </samp>
    </h3>
    <ul>
      <li><samp><b>Core</b>: Nix, NixOS, Nix Darwin</samp></li>
      <li><samp><b>Editor</b>: NixVim (59 plugins, Dracula theme)</samp></li>
      <li><samp><b>Terminal</b>: Ghostty + Fish + Starship + tmux</samp></li>
      <li><samp><b>AI Tools</b>: Claude Code, OpenCode, Gemini CLI, Amp, Crush, Goose CLI, KiloCode CLI, Mistral Vibe</samp></li>
      <li><samp><b>Typography</b>: Geist Mono + Nerd Fonts</samp></li>
      <li><samp><b>Management</b>: Backlog.md for human-AI collaboration</samp></li>
    </ul>
    <h2></h2>
    <br />
    <h3>
      <samp>
        <b>Features</b>
      </samp>
    </h3>
    <ul>
      <li><samp><b>59 NixVim plugins</b> configured declaratively</samp></li>
      <li><samp><b>6 LSP servers</b> for Go, TypeScript, Lua, Bash, JSON, Nix</samp></li>
      <li><samp><b>AI completion</b> with Supermaven (free tier available)</samp></li>
      <li><samp><b>Dracula theme</b> with custom Denim variant in development</samp></li>
      <li><samp><b>Cross-platform</b> support (macOS + Linux)</samp></li>
      <li><samp><b>Documented</b> with 100+ keybindings via which-key</samp></li>
    </ul>
  </details>
</div>

## Installing Nix

### macOS
Follow the official installation guide: [Install Nix on macOS](https://nix.dev/install-nix#install-nix)

### NixOS
Learn how to configure NixOS: [NixOS Configuration Tutorial](https://nix.dev/tutorials/nixos/nixos-configuration-on-vm)

## Nix Language Basics

The Nix language is designed for conveniently creating and composing derivations – precise descriptions of how contents of existing files are used to derive new files. It is a domain-specific, purely functional, lazily evaluated, dynamically typed programming language.

### Notable Uses of the Nix Language

**Nixpkgs**
The largest, most up-to-date software distribution in the world, and written in the Nix language.

**NixOS**
A Linux distribution that can be configured fully declaratively and is based on Nix and Nixpkgs.

Its underlying modular configuration system is written in the Nix language, and uses packages from Nixpkgs. The operating system environment and services it provides are configured with the Nix language.

### Key Concepts
- [Flakes](https://nix.dev/concepts/flakes) - Nix's package management system
- [Nix Reference Manual](https://nix.dev/reference/nix-manual) - Complete language documentation

### Package Search
```bash
# Search for packages
nix search nixpkgs <package-name>
```

## Quick Start

### macOS (Darwin)
```bash
# Format code
nix fmt .

# Update flake dependencies  
nix flake update

# Rebuild system
sudo darwin-rebuild switch --flake .#darwin
```

### Linux (NixOS)
```bash
# Configuration in progress
home-manager switch --flake .
```

## Environment

### Terminal Stack
- **Terminal**: Ghostty — Modern, GPU-accelerated terminal
- **Shell**: Fish — Smart interactive shell with completions
- **Prompt**: Starship — Fast, customizable prompt
- **Multiplexer**: tmux — Terminal session management

### Editor Stack
- **Editor**: NixVim — Neovim configured entirely in Nix
- **Completion**: blink-cmp + LSP + AI + snippets
- **Theme**: Dracula (main) + Denim (WIP custom theme)
- **Plugins**: 59 plugins across completion, UI, navigation, and development

### Development Tools
- **Version Control**: Git with lazygit integration
- **AI Coding**: Claude Code, OpenCode, Gemini CLI, and more
- **Project Management**: Backlog.md for task tracking
- **Typography**: Geist Mono + Nerd Fonts icons

## NixVim Configuration

### Core Features

**Completion System**:
- blink-cmp framework (0.5-4ms async completion)
- LSP integration (6 language servers)
- AI suggestions (Supermaven)
- Snippet support (luasnip)

**Key Bindings** (press `<leader>?` to explore):
- `<C-space>` — Open completion menu
- `<leader>ff` — Find files (Telescope)
- `<leader>cf` — Format code (conform)
- `<leader>gd` — Go to definition (Trouble)
- `<leader>gg` — Open LazyGit

### Plugin Categories (59 total)

**Completion**: blink-cmp, lspconfig, supermaven, luasnip
**UI**: airline, bufferline, noice, which-key, snacks, fidget
**Navigation**: telescope, harpoon, oil, tmux-navigator, flash
**Code Quality**: conform, trouble, neotest, dap
**Treesitter**: treesitter, context, twilight
**Text Editing**: comment, mini, render-markdown
**Utilities**: gitsigns, lazygit, persistence, sleuth, editorconfig

### Language Support

| Language | LSP Server | Features |
|----------|------------|----------|
| Go | gopls | Completion, diagnostics, refactoring |
| TypeScript | ts_ls | Type checking, imports |
| Lua | lua_ls | Neovim API awareness |
| Bash | bashls | Linting, diagnostics |
| JSON | jsonls | Schema validation |
| Nix | nil_ls | Formatting, completions |

## Installed Tools

**System Packages** (from llm-agents):
- claude-code, opencode, gemini-cli, amp, crush, goose-cli, kilocode-cli, mistral-vibe

**Home Packages** (from home-shared.nix):
- Terminal: tmux, starship, lazygit, gh
- CLI: ripgrep, fzf, fd, bat, eza, btop, jq
- Fonts: Geist Mono, Nerd Fonts symbols

## NixVim Plugin Documentation

All 59 plugins are documented at the official NixVim site:

### UI & Interface Plugins
- [airline](https://nix-community.github.io/nixvim/plugins/airline/) - Status line
- [bufferline](https://nix-community.github.io/nixvim/plugins/bufferline/) - Tab bar
- [noice](https://nix-community.github.io/nixvim/plugins/noice/) - Modern message UI
- [which-key](https://nix-community.github.io/nixvim/plugins/which-key/) - Keybinding helper
- [snacks](https://nix-community.github.io/nixvim/plugins/snacks/) - Utility collection
- [fidget](https://nix-community.github.io/nixvim/plugins/fidget/) - LSP progress indicator
- [startify](https://nix-community.github.io/nixvim/plugins/startify/) - Startup dashboard
- [toggleterm](https://nix-community.github.io/nixvim/plugins/toggleterm/) - Terminal toggling
- [render-markdown](https://nix-community.github.io/nixvim/plugins/render-markdown/) - Markdown display
- [glow](https://nix-community.github.io/nixvim/plugins/glow/) - Markdown preview
- [web-devicons](https://nix-community.github.io/nixvim/plugins/web-devicons/) - File icons
- [colorscheme](https://nix-community.github.io/nixvim/plugins/colorscheme/) - Theme configuration

### Navigation & File Management
- [telescope](https://nix-community.github.io/nixvim/plugins/telescope/) - Fuzzy finder
- [harpoon](https://nix-community.github.io/nixvim/plugins/harpoon/) - File bookmarks
- [oil](https://nix-community.github.io/nixvim/plugins/oil/) - File explorer
- [oil-git-status](https://nix-community.github.io/nixvim/plugins/oil-git-status/) - Git status for oil
- [leap](https://nix-community.github.io/nixvim/plugins/leap/) - Motion plugin
- [flash](https://nix-community.github.io/nixvim/plugins/flash/) - Enhanced motions
- [tmux-navigator](https://nix-community.github.io/nixvim/plugins/tmux-navigator/) - Pane navigation
- [navbuddy](https://nix-community.github.io/nixvim/plugins/navbuddy/) - Code structure browser
- [aerial](https://nix-community.github.io/nixvim/plugins/aerial/) - Code outline
- [arrow](https://nix-community.github.io/nixvim/plugins/arrow/) - Line bookmarks

### Code Editing & Completion
- [blink](https://nix-community.github.io/nixvim/plugins/blink/) - Completion framework
- [conform](https://nix-community.github.io/nixvim/plugins/conform/) - Code formatting
- [supermaven](https://nix-community.github.io/nixvim/plugins/supermaven/) - AI completion
- [mini](https://nix-community.github.io/nixvim/plugins/mini/) - Lightweight utilities
- [comment](https://nix-community.github.io/nixvim/plugins/comment/) - Comment toggling
- [ts-autotag](https://nix-community.github.io/nixvim/plugins/ts-autotag/) - Auto tag closing
- [lazydev](https://nix-community.github.io/nixvim/plugins/lazydev/) - Lua development
- [keymaps](https://nix-community.github.io/nixvim/plugins/keymaps/) - Keybinding configuration

### Language Support & LSP
- [lspconfig](https://nix-community.github.io/nixvim/plugins/lspconfig/) - LSP integration
- [treesitter](https://nix-community.github.io/nixvim/plugins/treesitter/) - Syntax engine
- [treesitter-context](https://nix-community.github.io/nixvim/plugins/treesitter-context/) - Sticky headers
- [navic](https://nix-community.github.io/nixvim/plugins/navic/) - Code location
- [nix](https://nix-community.github.io/nixvim/plugins/nix/) - Nix language support

### Code Quality & Debugging
- [trouble](https://nix-community.github.io/nixvim/plugins/trouble/) - Diagnostics panel
- [dap](https://nix-community.github.io/nixvim/plugins/dap/) - Debug adapter protocol
- [neotest](https://nix-community.github.io/nixvim/plugins/neotest/) - Test runner
- [todo-comments](https://nix-community.github.io/nixvim/plugins/todo-comments/) - TODO highlighting
- [wtf](https://nix-community.github.io/nixvim/plugins/wtf/) - Diagnostic debugging

### Git & Version Control
- [gitsigns](https://nix-community.github.io/nixvim/plugins/gitsigns/) - Git decorations
- [lazygit](https://nix-community.github.io/nixvim/plugins/lazygit/) - Git TUI
- [persistence](https://nix-community.github.io/nixvim/plugins/persistence/) - Session management

### Utilities & Tools
- [bufdelete](https://nix-community.github.io/nixvim/plugins/bufdelete/) - Buffer deletion
- [bullets](https://nix-community.github.io/nixvim/plugins/bullets/) - Bullet points
- [pbcopy](https://nix-community.github.io/nixvim/plugins/pbcopy/) - System clipboard
- [ccc](https://nix-community.github.io/nixvim/plugins/ccc/) - Color picker
- [cloak](https://nix-community.github.io/nixvim/plugins/cloak/) - Secret masking
- [colorizer](https://nix-community.github.io/nixvim/plugins/colorizer/) - Color highlighting
- [kulala](https://nix-community.github.io/nixvim/plugins/kulala/) - HTTP client
- [obsidian](https://nix-community.github.io/nixvim/plugins/obsidian/) - Note taking
- [opencode](https://nix-community.github.io/nixvim/plugins/opencode/) - AI assistant
- [sleuth](https://nix-community.github.io/nixvim/plugins/sleuth/) - Indent detection
- [editorconfig](https://nix-community.github.io/nixvim/plugins/editorconfig/) - Project settings
- [vim-dadbod](https://nix-community.github.io/nixvim/plugins/vim-dadbod/) - Database client
- [vim-dadbod-completion](https://nix-community.github.io/nixvim/plugins/vim-dadbod-completion/) - DB completion
- [vim-dadbod-ui](https://nix-community.github.io/nixvim/plugins/vim-dadbod-ui/) - DB UI

## Project Structure

```
blueprint/
├── modules/
│   ├── home/                    # User environment configs
│   │   ├── home-shared.nix      # Shared user packages & settings
│   │   ├── programs/
│   │   │   ├── nixvim/          # NixVim configuration (59 plugins)
│   │   │   │   └── config/      # Individual plugin configs
│   │   │   ├── fish.nix         # Fish shell setup
│   │   │   ├── ghostty.nix      # Terminal configuration
│   │   │   ├── tmux.nix         # tmux settings
│   │   │   └── starship.nix     # Prompt configuration
│   │   └── home-darwin.nix      # macOS-specific user config
│   ├── darwin/                  # macOS system configurations
│   └── nixos/                   # Linux system configurations
├── hosts/
│   ├── darwin/default.nix       # Darwin system config
│   └── nixos/                   # NixOS configurations
├── flake.nix                    # Flake definition & inputs
├── flake.lock                   # Dependency lock file
└── README.md                    # This documentation
```

## Getting Started

1. **First Launch**: Run `:SupermavenUseFree` in NixVim
2. **Verify LSP**: Check `:LspInfo` for server status
3. **Explore Keymaps**: Press `<leader>?` for interactive help
4. **Customize**: Edit configs in `modules/home/programs/nixvim/config/`
5. **Theme Preview**: Visit [arminbabaei.com/theme](https://arminbabaei.com/theme)

## References

### Nix Ecosystem
- [Nix Manual](https://nixos.org/manual/nix/stable/)
- [NixVim Documentation](https://nix-community.github.io/nixvim/)
- [Numtide Blueprint](https://github.com/numtide/blueprint)

### Key Projects
- [Ghostty Terminal](https://github.com/ghostty-org/ghostty)
- [blink-cmp](https://cmp.saghen.dev/)
- [Supermaven AI](https://github.com/supermaven-inc/supermaven-nvim)
- [Backlog.md](https://github.com/MrLesk/Backlog.md)

---

<div align="center">
  <samp>Built with Nix • Styled for the terminal</samp>
</div>