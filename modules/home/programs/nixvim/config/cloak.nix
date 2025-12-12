# Cloak - Hide sensitive information
# Docs: https://github.com/laytan/cloak.nvim
# Conceal sensitive information like API keys in buffers

{
  plugins.cloak = {
    enable = true;
    settings = {
      enabled = true;
      cloak_character = "*";
      highlight_group = "Comment";
      cloak_length = null;
      try_all_patterns = true;
      patterns = [
        {
          file_pattern = ".env*";
          cloak_pattern = "=.+";
          replace = null;
        }
        {
          file_pattern = "*.md";
          cloak_pattern = "password:.+";
          replace = null;
        }
        {
          file_pattern = "*";
          cloak_pattern = "password\\s*=\\s*.+";
          replace = null;
        }
        {
          file_pattern = "*";
          cloak_pattern = "token\\s*=\\s*.+";
          replace = null;
        }
        {
          file_pattern = "*";
          cloak_pattern = "api_key\\s*=\\s*.+";
          replace = null;
        }
      ];
    };
  };
}