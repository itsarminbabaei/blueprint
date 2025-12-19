# TS AutoTag - Auto-close HTML/JSX tags
# Docs: https://github.com/windwp/nvim-ts-autotag
# Automatically close and rename HTML/JSX tags using treesitter

{
  plugins.ts-autotag = {
    enable = true;
    settings = {
      opts = {
        enable_close = true;
        enable_rename = true;
        enable_close_on_slash = false;
      };
      aliases = {
        "astro" = "html";
        "jinja" = "html";
        "jinja2" = "html";
        "j2" = "html";
        "markdown" = "html";
        "rmd" = "html";
        "vue" = "html";
        "svelte" = "html";
        "php" = "html";
        "htmldjango" = "html";
        "htmlangular" = "html";
      };
    };
  };
}
