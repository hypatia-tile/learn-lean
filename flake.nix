{
  description = "Lean 4 development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            elan # Lean version manager
            git
            gnumake
            clang
            pkg-config
          ];

          shellHook = ''
            echo "Lean dev environment"
            echo "Run: lake init <project-name>"
          '';
        };
      }
    );
}
