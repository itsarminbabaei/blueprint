# Navic - LSP breadcrumb navigation
# Docs: https://github.com/SmiteshP/nvim-navic
# Winbar breadcrumbs showing LSP document symbols

{
  plugins.navic = {
    enable = true;
    settings = {
      separator = " › ";
      highlight = true;
      depth_limit = 5;
      safe_output = true;
      click = true;
    };
  };
}