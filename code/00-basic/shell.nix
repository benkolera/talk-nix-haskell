{nixpkgs ? import ./nix/nixpkgs.nix }:
let
  demo = (import ./. { inherit nixpkgs; });
  demoDev = nixpkgs.pkgs.haskell.lib.addBuildTool demo (nixpkgs.pkgs.haskellPackages.ghcid);
in
  demoDev.env
