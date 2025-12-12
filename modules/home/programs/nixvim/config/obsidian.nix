# Obsidian - Obsidian integration
# Docs: https://github.com/epwalsh/obsidian.nvim
# Integration with Obsidian note-taking system

{
  plugins.obsidian = {
    enable = true;
    settings = {
      legacy_commands = false; # Disable deprecated legacy commands
      workspaces = [
        {
          name = "personal";
          path = "~/obsidian/personal";
        }
        {
          name = "work";
          path = "~/obsidian/work";
        }
      ];
      daily_notes = {
        folder = "daily";
        date_format = "%Y-%m-%d";
      };
      completion = {
        nvim_cmp = false;
      };
      ui = {
        enable = true;
      };
      checkboxes = {
        " " = { char = "󰄱"; hl_group = "ObsidianTodo"; };
        "x" = { char = "󰄲"; hl_group = "ObsidianDone"; };
      };
    };
  };
}