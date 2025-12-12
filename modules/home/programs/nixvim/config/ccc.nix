# CCC - Color picker and manipulator
# Docs: https://github.com/uga-rosa/ccc.nvim
# Interactive color picker and color code manipulation

{
  plugins.ccc = {
    enable = true;
    settings = {
      highlighter = {
        auto_enable = true;
        lsp = true;
      };
    };
  };
}