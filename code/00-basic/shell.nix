{nixpkgs ? import ./nix/nixpkgs.nix }:
let
  demo = (import ./. { inherit nixpkgs; });
in
  nixpkgs.pkgs.haskell.lib.addBuildTool demo (nixpkgs.pkgs.haskellPackages.ghcid)
