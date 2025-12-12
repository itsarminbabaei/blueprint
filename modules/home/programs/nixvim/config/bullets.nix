# Bullets - Automatic bullet lists
# Docs: https://github.com/bullets-vim/bullets.vim
# Automatic markdown list formatting and numbering

{
  plugins.bullets = {
    enable = true;
    settings = {
      enable_in_empty_buffers = 0;
      pad_right = 1;
      markers = ["•" "◦" "▪" "▫"];
      checkboxes = {
        unchecked = " ";
        checked = "x";
      };
    };
  };
}