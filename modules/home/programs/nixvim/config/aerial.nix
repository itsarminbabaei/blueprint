# Aerial - Code outline
# Docs: https://github.com/stevearc/aerial.nvim
# LSP-powered code outline/symbols panel

{
  plugins.aerial = {
    enable = true;
    settings = {
      backends = [
        "treesitter"
        "lsp"
        "markdown"
        "man"
      ];
      layout = {
        max_width = 0.3;
        width = null;
        min_width = 20;
        default_direction = "prefer_right";
        placement = "edge";
      };
      attach_mode = "global";
      nerd_font = "auto";
      filter_kind = [
        "Class"
        "Constructor"
        "Enum"
        "Function"
        "Interface"
        "Module"
        "Method"
        "Struct"
      ];
    };
  };
}