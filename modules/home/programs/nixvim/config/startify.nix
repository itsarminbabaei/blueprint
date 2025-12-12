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
          header = ["   MRU"];
        }
        {
          type = "dir";
          header = ["   MRU ".(builtins.getEnv "PWD")];
        }
        {
          type = "sessions";
          header = ["   Sessions"];
        }
        {
          type = "bookmarks";
          header = ["   Bookmarks"];
        }
        {
          type = "commands";
          header = ["   Commands"];
        }
      ];
      bookmarks = [
        { c = "~/projects"; f = 1; }
        { v = "~/dotfiles"; f = 1; }
        { z = "~/.zshrc"; f = 1; }
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
        "                 Welcome to NixVim"
      ];
      custom_footer = [
        ""
        "   " + (builtins.toString (builtins.length (builtins.attrNames (builtins.readDir "~/projects")))) + " projects | " + (builtins.toString (builtins.length (builtins.readDir "~/.config"))) + " configs"
      ];
    };
  };
}