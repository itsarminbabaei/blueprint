# ToggleTerm - Terminal management
# Docs: https://github.com/akinsho/toggleterm.nvim
# Floating terminals, multiple terminals, better integration than built-in :term

{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      float_opts = {
        border = "double";
        winblend = 5; # Slight transparency to show it's floating
        width = 120;
        height = 30;
      };
      open_mapping = null; # Disable built-in mapping, use keymaps.nix instead
      size = 20;
    };
  };
}