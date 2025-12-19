# Startify - Fancy start screen
# Docs: https://github.com/mhinz/vim-startify
# Beautiful startup screen with sessions, MRU files, and bookmarks

{
  plugins.startify = {
    enable = true;
    settings = {
      lists = [
        {
          type = "files";
          header = [ "   MRU" ];
        }
        {
          type = "dir";
          header = [ "   MRU ${builtins.getEnv "PWD"}" ];
        }
        {
          type = "sessions";
          header = [ "   Sessions" ];
        }
        {
          type = "bookmarks";
          header = [ "   Bookmarks" ];
        }
        {
          type = "commands";
          header = [ "   Commands" ];
        }
      ];
      bookmarks = [
        {
          c = "~/projects";
          f = 1;
        }
        {
          v = "~/dotfiles";
          f = 1;
        }
        {
          z = "~/.zshrc";
          f = 1;
        }
      ];
      change_to_vcs_root = true;
      session_autoload = true;
      session_persistence = true;
      custom_header = [
        "   ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
        "   ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
        "   ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
        "   ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
        "   ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
        "   ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
        ""
      ];
      custom_footer.__raw = ''
        function()
          local projects = vim.fn.len(vim.fn.readdir(vim.fn.expand("~/projects")))
          local configs = vim.fn.len(vim.fn.readdir(vim.fn.expand("~/.config")))
          return {
            "",
            "   Projects: " .. projects .. " | Configs: " .. configs
          }
        end
      '';
    };
  };
}
