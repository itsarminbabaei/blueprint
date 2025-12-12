# Kulala - HTTP client
# Docs: https://github.com/mistweaverco/kulala.nvim
# REST API testing and development with HTTP requests

{
  plugins.kulala = {
    enable = false; # Disabled due to persistent tree-sitter compilation errors in Nix
    settings = {
      # Default environment variables
      default_env = "dev";

      # HTTP client settings
      http_client = {
        timeout = 30;
      };

      # UI settings
      ui = {
        show_headers = true;
        show_variables = true;
        show_request_summary = true;
      };

      # Disable tree-sitter to avoid compilation issues in Nix
      treesitter = {
        enable = false;
      };

      # Keybindings (can be customized)
      mappings = {
        run_all = "<C-k>";
        run_current = "<C-k>";
        show_stats = "<C-s>";
        toggle_headers = "<C-h>";
        toggle_body = "<C-b>";
      };
    };
  };
}