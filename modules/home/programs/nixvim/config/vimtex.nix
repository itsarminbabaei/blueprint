# VimTeX - LaTeX editing
# Docs: https://github.com/lervag/vimtex
# Comprehensive LaTeX editing environment with compilation, navigation, and more

{
  plugins.vimtex = {
    enable = true;
    settings = {
      view_method = "skim";
      compiler_method = "latexmk";
      compiler_latexmk = {
        build_dir = "";
        callback = 1;
        continuous = 1;
        executable = "latexmk";
        options = [
          "-pdf"
          "-shell-escape"
          "-verbose"
          "-file-line-error"
          "-synctex=1"
          "-interaction=nonstopmode"
        ];
      };
      syntax_enabled = 1;
      syntax_conceal = {
        accents = 1;
        cites = 1;
        greek = 1;
        math_bounds = 1;
        math_delimiters = 1;
        math_fracs = 1;
        math_super_sub = 1;
        math_symbols = 1;
        sections = 1;
      };
      fold_enabled = 1;
      fold_types = {
        cmd_addplot = 1;
        cmd_multi = 1;
        cmd_single = 1;
        cmd_single_opt = 1;
        env_options = 1;
        envs = 1;
        items = 1;
        markers = 1;
        preamble = 1;
        sections = 1;
      };
    };
  };
}
