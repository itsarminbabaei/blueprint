{
  description = "Sharing home-manager modules between nixos and darwin";

  # Add all your dependencies here
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";

    blueprint.url = "github:numtide/blueprint";
    blueprint.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    llm-agents.url = "github:numtide/llm-agents.nix";
    llm-agents.inputs.nixpkgs.follows = "nixpkgs";
  };

  # Load the blueprint
  outputs =
    inputs:
    let
      blueprintOutputs = inputs.blueprint { inherit inputs; };
    in
    blueprintOutputs
    // {
      # Add NixVim documentation server
      apps = blueprintOutputs.apps or { } // {
        aarch64-darwin.nixvim-docs = {
          type = "app";
          program = "${inputs.nixvim.packages.aarch64-darwin.serve-docs}/bin/serve-docs";
        };
      };

      # TODO: Add NixVim config checks when API is clarified
    };
}
