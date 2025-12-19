{
  pkgs,
  osConfig,
  inputs,
  ...
}:
{
  # Disable version mismatch warning for unstable branches
  home.enableNixpkgsReleaseCheck = false;

  # only available on linux, disabled on macos
  services.ssh-agent.enable = pkgs.stdenv.isLinux;

  # Enable fontconfig for Nerd Fonts
  fonts.fontconfig.enable = true;

  # Nixvim configuration
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./programs/ghostty.nix
    ./programs/starship.nix
    ./programs/fish.nix
    ./programs/git.nix
    ./programs/tmux.nix
    ./programs/zellij.nix
  ];
  programs.nixvim = {
    enable = true;
    imports = [ ./programs/nixvim/config/default.nix ];

    plugins.spectre.enable = false; # Disable Spectre due to ARM64 build issues

    lsp.servers = {
      gopls.enable = true;
      ts_ls.enable = true;
      lua_ls.enable = true;
      bashls.enable = true;
      jsonls.enable = true;
      nil_ls.enable = true;
    };
  };

  home.packages = [
    pkgs.home-manager
    pkgs.ripgrep

    # Terminal/shell tools
    pkgs.tmux
    pkgs.zellij
    pkgs.starship
    pkgs.lazygit
    pkgs.lazydocker
    pkgs.gh

    # Development tools
    pkgs.rustup
    pkgs.bun
    pkgs.pnpm
    pkgs.nodePackages.mermaid-cli

    # Formatters & Tools
    pkgs.biome
    pkgs.stylua
    pkgs.shfmt
    pkgs.go
    pkgs.nodePackages.typescript-language-server
    pkgs.gotools

    # Image & document tools
    pkgs.imagemagick
    pkgs.ghostscript
    pkgs.texlive.combined.scheme-basic

    # CLI utilities
    pkgs.fzf
    pkgs.fd
    pkgs.bat
    pkgs.eza
    pkgs.btop
    pkgs.jq
    pkgs.jnv
    pkgs.zoxide
    pkgs.yazi
    pkgs.trash-cli
    pkgs.curl
    pkgs.wget
    pkgs.httpie
    pkgs.httpstat
    pkgs.npkill

    # Cloud & Infrastructure
    pkgs.awscli2
    pkgs.amazon-q-cli
    pkgs.google-cloud-sdk
    pkgs.openssh
    pkgs.sshpass
    pkgs.autossh

    # Fonts
    pkgs.nerd-fonts.geist-mono
    pkgs.nerd-fonts.symbols-only

  ]
  ++ (
    # you can access the host configuration using osConfig.
    pkgs.lib.optionals (osConfig.programs.vim.enable && pkgs.stdenv.isDarwin) [ pkgs.skhd ]
  );

  home.stateVersion = "24.11"; # initial home-manager state
}
