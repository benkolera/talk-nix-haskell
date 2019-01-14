{ nixpkgs ? import <nixpkgs> {}}:
nixpkgs.pkgs.haskellPackages.callPackage (import ./demo.nix) {}
