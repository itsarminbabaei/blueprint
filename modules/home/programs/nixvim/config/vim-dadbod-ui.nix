# Vim Dadbod UI - Database UI
# Docs: https://github.com/kristijanhusak/vim-dadbod-ui
# UI for vim-dadbod with connection management and query execution

{
  plugins.vim-dadbod-ui = {
    enable = true;
    settings = {
      db_ui_use_nerd_fonts = 1;
      db_ui_show_database_icon = 1;
      db_ui_force_echo_notifications = 1;
      db_ui_win_position = "right";
      db_ui_winwidth = 40;
    };
  };
}