# ToggleTerm - Terminal management
# Docs: https://github.com/akinsho/toggleterm.nvim
# Floating terminals, multiple terminals, better integration than built-in :term

{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      float_opts = {
        border = "curved";
        winblend = 3;
      };
      open_mapping = null; # Disable built-in mapping, use keymaps.nix instead
      size = 20;
    };
  };
}