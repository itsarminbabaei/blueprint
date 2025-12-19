# OpenCode - AI assistant
# Docs: https://github.com/opencode-ai/opencode
# AI-powered code assistance and generation using xAI's Zen model

{
  plugins.opencode = {
    enable = true;
    settings = {
      model = "zen";
      temperature = 0.7;
      max_tokens = 2048;
      api_key = null; # Set via environment variable
    };
  };
}
