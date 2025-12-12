# Tailwind Tools - Tailwind CSS utilities
# Docs: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/tailwind.lua
# Enhanced Tailwind CSS development with sorting, concealing, and utilities

{
  plugins.tailwind-tools = {
    enable = true;
    settings = {
      document_color = {
        enabled = true;
        kind = "inline";
        inline_symbol = "󰝤 ";
        debounce = 200;
      };
      conceal = {
        enabled = true;
        min_length = null;
        symbol = "󱏿";
        highlight = {
          fg = "#38BDF8";
        };
      };
      custom_filetypes = [];
    };
  };
}