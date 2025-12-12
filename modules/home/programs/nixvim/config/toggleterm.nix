# ToggleTerm - Terminal management
# Docs: https://github.com/akinsho/toggleterm.nvim
# Floating terminals, multiple terminals, better integration than built-in :term

{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "horizontal"; # Terminal appears at bottom, under buffers
      open_mapping = null; # Disable built-in mapping, use keymaps.nix instead
      size = 15; # Reasonable height for horizontal terminal
    };
  };
}