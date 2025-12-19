# Colorizer - Color code highlighting
# Docs: https://github.com/norcalli/nvim-colorizer.lua
# Highlights CSS/hex color codes with actual colors

{
  plugins.colorizer = {
    enable = true;
    settings = {
      user_default_options = {
        RGB = true;
        RRGGBB = true;
        names = true;
        RRGGBBAA = true;
        AARRGGBB = true;
        rgb_fn = true;
        hsl_fn = true;
        css = true;
        css_fn = true;
        mode = "background";
        tailwind = true;
        sass = {
          enable = true;
          parsers = [ "css" ];
        };
        virtualtext = "■";
      };
      filetypes = {
        "*".enable = true;
        css.enable = true;
        html.enable = true;
        javascript.enable = true;
        typescript.enable = true;
        nix.enable = true;
      };
    };
  };
}
