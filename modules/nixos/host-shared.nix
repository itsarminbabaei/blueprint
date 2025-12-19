{ pkgs, inputs, ... }:
{

  programs.vim.enable = true;

  # you can check if host is darwin by using pkgs.stdenv.isDarwin
  environment.systemPackages = [
    pkgs.btop

    # AI tools (from llm-agents flake)
    inputs.llm-agents.packages.${pkgs.stdenv.system}.claude-code
    inputs.llm-agents.packages.${pkgs.stdenv.system}.opencode
    inputs.llm-agents.packages.${pkgs.stdenv.system}.gemini-cli
    inputs.llm-agents.packages.${pkgs.stdenv.system}.amp
    inputs.llm-agents.packages.${pkgs.stdenv.system}.crush
    inputs.llm-agents.packages.${pkgs.stdenv.system}.goose-cli
    inputs.llm-agents.packages.${pkgs.stdenv.system}.kilocode-cli
    inputs.llm-agents.packages.${pkgs.stdenv.system}.mistral-vibe
  ]
  ++ (pkgs.lib.optionals pkgs.stdenv.isDarwin [ pkgs.xbar ]);
}
