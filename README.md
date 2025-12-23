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
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>Installation</b>
       </samp>
     </h3>
     <h4>
       <samp>
         <b>macOS</b>
       </samp>
     </h4>
     <p align="left">
       <samp>
         Follow the official installation guide: <a href="https://nix.dev/install-nix#install-nix">Install Nix on macOS</a>
       </samp>
     </p>
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>NixOS Installation</b>
       </samp>
     </h3>
      <p align="left">
        <samp>
          Learn how to configure NixOS: <a href="https://nix.dev/tutorials/nixos/nixos-configuration-on-vm">NixOS Configuration Tutorial</a>
        </samp>
      </p>
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>Nix Language Basics</b>
       </samp>
     </h3>
     <p align="left">
       <samp>
         The Nix language is designed for conveniently creating and composing derivations – precise descriptions of how contents of existing files are used to derive new files. It is a domain-specific, purely functional, lazily evaluated, dynamically typed programming language.
       </samp>
     </p>
     <h4>
       <samp>
         <b>Notable Uses of the Nix Language</b>
       </samp>
     </h4>
     <p align="left">
       <samp>
         <b>Nixpkgs</b><br />
         The largest, most up-to-date software distribution in the world, and written in the Nix language.
         <br /><br />
         <b>NixOS</b><br />
         A Linux distribution that can be configured fully declaratively and is based on Nix and Nixpkgs.<br />
         Its underlying modular configuration system is written in the Nix language, and uses packages from Nixpkgs. The operating system environment and services it provides are configured with the Nix language.
       </samp>
     </p>
     <h4>
       <samp>
         <b>Key Concepts</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nix.dev/concepts/flakes">Flakes</a> - Nix's package management system</samp></li>
       <li><samp><a href="https://nix.dev/reference/nix-manual">Nix Reference Manual</a> - Complete language documentation</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Package Search</b>
       </samp>
     </h4>
     <pre><code># Search for packages
nix search nixpkgs &lt;package-name&gt;</code></pre>
    <h2></h2>
    <br />
    <h3>
      <samp>
        <b>Quick Start</b>
       </samp>
     </h3>
     <h4>
       <samp>
         <b>macOS (Darwin)</b>
       </samp>
     </h4>
<pre><code>
# Format code
nix fmt .
</code></pre>
<pre><code>
# Update flake dependencies
nix flake update
</code></pre>  
<pre><code>
# Rebuild system
sudo darwin-rebuild switch --flake .#darwin
</code></pre>
<pre><code>
# Configuration in progress
home-manager switch --flake .
</code></pre>
  <h2></h2>
     <br />
     <h3>
       <samp>
         <b>Environment</b>
       </samp>
     </h3>
     <h4>
       <samp>
         <b>Terminal Stack</b>
       </samp>
     </h4>
     <ul>
       <li><samp><b>Terminal</b>: Ghostty — Modern, GPU-accelerated terminal</samp></li>
       <li><samp><b>Shell</b>: Fish — Smart interactive shell with completions</samp></li>
       <li><samp><b>Prompt</b>: Starship — Fast, customizable prompt</samp></li>
       <li><samp><b>Multiplexer</b>: tmux — Terminal session management</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Editor Stack</b>
       </samp>
     </h4>
     <ul>
       <li><samp><b>Editor</b>: NixVim — Neovim configured entirely in Nix</samp></li>
       <li><samp><b>Completion</b>: blink-cmp + LSP + AI + snippets</samp></li>
       <li><samp><b>Theme</b>: Dracula (main) + Denim (WIP custom theme)</samp></li>
       <li><samp><b>Plugins</b>: 59 plugins across completion, UI, navigation, and development</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Development Tools</b>
       </samp>
     </h4>
     <ul>
       <li><samp><b>Version Control</b>: Git with lazygit integration</samp></li>
       <li><samp><b>AI Coding</b>: Claude Code, OpenCode, Gemini CLI, and more</samp></li>
       <li><samp><b>Project Management</b>: Backlog.md for task tracking</samp></li>
       <li><samp><b>Typography</b>: Geist Mono + Nerd Fonts icons</samp></li>
     </ul>
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>NixVim Configuration</b>
       </samp>
     </h3>
     <h4>
       <samp>
         <b>Core Features</b>
       </samp>
     </h4>
     <p align="left">
       <samp>
         <b>Completion System</b>:<br />
         - blink-cmp framework (0.5-4ms async completion)<br />
         - LSP integration (6 language servers)<br />
         - AI suggestions (Supermaven)<br />
         - Snippet support (luasnip)
       </samp>
     </p>
     <p align="left">
       <samp>
         <b>Key Bindings</b> (press <code>&lt;leader&gt;?</code> to explore):<br />
         - <code>&lt;C-space&gt;</code> — Open completion menu<br />
         - <code>&lt;leader&gt;ff</code> — Find files (Telescope)<br />
         - <code>&lt;leader&gt;cf</code> — Format code (conform)<br />
         - <code>&lt;leader&gt;gd</code> — Go to definition (Trouble)<br />
         - <code>&lt;leader&gt;gg</code> — Open LazyGit
       </samp>
     </p>
     <h4>
       <samp>
         <b>Plugin Categories (59 total)</b>
       </samp>
     </h4>
     <p align="left">
       <samp>
         <b>Completion</b>: blink-cmp, lspconfig, supermaven, luasnip<br />
         <b>UI</b>: airline, bufferline, noice, which-key, snacks, fidget<br />
         <b>Navigation</b>: telescope, harpoon, oil, tmux-navigator, flash<br />
         <b>Code Quality</b>: conform, trouble, neotest, dap<br />
         <b>Treesitter</b>: treesitter, context, twilight<br />
         <b>Text Editing</b>: comment, mini, render-markdown<br />
         <b>Utilities</b>: gitsigns, lazygit, persistence, sleuth, editorconfig
       </samp>
     </p>
     <h4>
       <samp>
         <b>Language Support</b>
       </samp>
     </h4>
     <table>
       <thead>
         <tr>
           <th><samp>Language</samp></th>
           <th><samp>LSP Server</samp></th>
           <th><samp>Features</samp></th>
         </tr>
       </thead>
       <tbody>
         <tr>
           <td><samp>Go</samp></td>
           <td><samp>gopls</samp></td>
           <td><samp>Completion, diagnostics, refactoring</samp></td>
         </tr>
         <tr>
           <td><samp>TypeScript</samp></td>
           <td><samp>ts_ls</samp></td>
           <td><samp>Type checking, imports</samp></td>
         </tr>
         <tr>
           <td><samp>Lua</samp></td>
           <td><samp>lua_ls</samp></td>
           <td><samp>Neovim API awareness</samp></td>
         </tr>
         <tr>
           <td><samp>Bash</samp></td>
           <td><samp>bashls</samp></td>
           <td><samp>Linting, diagnostics</samp></td>
         </tr>
         <tr>
           <td><samp>JSON</samp></td>
           <td><samp>jsonls</samp></td>
           <td><samp>Schema validation</samp></td>
         </tr>
         <tr>
           <td><samp>Nix</samp></td>
           <td><samp>nil_ls</samp></td>
           <td><samp>Formatting, completions</samp></td>
         </tr>
       </tbody>
     </table>
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>Installed Tools</b>
       </samp>
     </h3>
     <p align="left">
       <samp>
         <b>System Packages</b> (from llm-agents):<br />
         - claude-code, opencode, gemini-cli, amp, crush, goose-cli, kilocode-cli, mistral-vibe
       </samp>
     </p>
     <p align="left">
       <samp>
         <b>Home Packages</b> (from home-shared.nix):<br />
         - Terminal: tmux, starship, lazygit, gh<br />
         - CLI: ripgrep, fzf, fd, bat, eza, btop, jq<br />
         - Fonts: Geist Mono, Nerd Fonts symbols
       </samp>
     </p>
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>NixVim Plugin Documentation</b>
       </samp>
     </h3>
     <p align="left">
       <samp>
         All 59 plugins are documented at the official <a href="https://nix-community.github.io/nixvim/">NixVim site</a>:
       </samp>
     </p>
     <h4>
       <samp>
         <b>UI & Interface Plugins</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/airline/">airline</a> - Status line</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/bufferline/">bufferline</a> - Tab bar</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/noice/">noice</a> - Modern message UI</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/which-key/">which-key</a> - Keybinding helper</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/snacks/">snacks</a> - Utility collection</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/fidget/">fidget</a> - LSP progress indicator</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/startify/">startify</a> - Startup dashboard</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/toggleterm/">toggleterm</a> - Terminal toggling</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/render-markdown/">render-markdown</a> - Markdown display</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/glow/">glow</a> - Markdown preview</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/web-devicons/">web-devicons</a> - File icons</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/colorscheme/">colorscheme</a> - Theme configuration</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Navigation & File Management</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/telescope/">telescope</a> - Fuzzy finder</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/harpoon/">harpoon</a> - File bookmarks</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/oil/">oil</a> - File explorer</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/oil-git-status/">oil-git-status</a> - Git status for oil</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/leap/">leap</a> - Motion plugin</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/flash/">flash</a> - Enhanced motions</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/tmux-navigator/">tmux-navigator</a> - Pane navigation</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/navbuddy/">navbuddy</a> - Code structure browser</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/aerial/">aerial</a> - Code outline</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/arrow/">arrow</a> - Line bookmarks</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Code Editing & Completion</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/blink/">blink</a> - Completion framework</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/conform/">conform</a> - Code formatting</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/supermaven/">supermaven</a> - AI completion</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/mini/">mini</a> - Lightweight utilities</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/comment/">comment</a> - Comment toggling</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/ts-autotag/">ts-autotag</a> - Auto tag closing</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/lazydev/">lazydev</a> - Lua development</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/keymaps/">keymaps</a> - Keybinding configuration</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Language Support & LSP</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/lspconfig/">lspconfig</a> - LSP integration</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/treesitter/">treesitter</a> - Syntax engine</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/treesitter-context/">treesitter-context</a> - Sticky headers</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/navic/">navic</a> - Code location</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/nix/">nix</a> - Nix language support</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Code Quality & Debugging</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/trouble/">trouble</a> - Diagnostics panel</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/dap/">dap</a> - Debug adapter protocol</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/neotest/">neotest</a> - Test runner</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/todo-comments/">todo-comments</a> - TODO highlighting</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/wtf/">wtf</a> - Diagnostic debugging</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Git & Version Control</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/gitsigns/">gitsigns</a> - Git decorations</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/lazygit/">lazygit</a> - Git TUI</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/persistence/">persistence</a> - Session management</samp></li>
     </ul>
     <h4>
       <samp>
         <b>Utilities & Tools</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/bufdelete/">bufdelete</a> - Buffer deletion</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/bullets/">bullets</a> - Bullet points</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/pbcopy/">pbcopy</a> - System clipboard</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/ccc/">ccc</a> - Color picker</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/cloak/">cloak</a> - Secret masking</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/colorizer/">colorizer</a> - Color highlighting</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/kulala/">kulala</a> - HTTP client</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/obsidian/">obsidian</a> - Note taking</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/opencode/">opencode</a> - AI assistant</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/sleuth/">sleuth</a> - Indent detection</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/editorconfig/">editorconfig</a> - Project settings</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/vim-dadbod/">vim-dadbod</a> - Database client</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/vim-dadbod-completion/">vim-dadbod-completion</a> - DB completion</samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/plugins/vim-dadbod-ui/">vim-dadbod-ui</a> - DB UI</samp></li>
     </ul>
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>Project Structure</b>
       </samp>
     </h3>
     <pre><code>blueprint/
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
└── README.md                    # This documentation</code></pre>
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>Getting Started</b>
       </samp>
     </h3>
     <ol>
       <li><samp><b>First Launch</b>: Run <code>:SupermavenUseFree</code> in NixVim</samp></li>
       <li><samp><b>Verify LSP</b>: Check <code>:LspInfo</code> for server status</samp></li>
       <li><samp><b>Explore Keymaps</b>: Press <code>&lt;leader&gt;?</code> for interactive help</samp></li>
       <li><samp><b>Customize</b>: Edit configs in <code>modules/home/programs/nixvim/config/</code></samp></li>
       <li><samp><b>Theme Preview</b>: Visit <a href="https://arminbabaei.com/theme">arminbabaei.com/theme</a></samp></li>
     </ol>
     <h2></h2>
     <br />
     <h3>
       <samp>
         <b>References</b>
       </samp>
     </h3>
     <h4>
       <samp>
         <b>Nix Ecosystem</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://nixos.org/manual/nix/stable/">Nix Manual</a></samp></li>
       <li><samp><a href="https://nix-community.github.io/nixvim/">NixVim Documentation</a></samp></li>
       <li><samp><a href="https://github.com/numtide/blueprint">Numtide Blueprint</a></samp></li>
     </ul>
     <h4>
       <samp>
         <b>Key Projects</b>
       </samp>
     </h4>
     <ul>
       <li><samp><a href="https://github.com/ghostty-org/ghostty">Ghostty Terminal</a></samp></li>
       <li><samp><a href="https://cmp.saghen.dev/">blink-cmp</a></samp></li>
       <li><samp><a href="https://github.com/supermaven-inc/supermaven-nvim">Supermaven AI</a></samp></li>
       <li><samp><a href="https://github.com/MrLesk/Backlog.md">Backlog.md</a></samp></li>
     </ul>
     <hr />
     <div align="center">
       <samp>Built with Nix • Styled for the terminal</samp>
     </div>
   </details>
 </div>
