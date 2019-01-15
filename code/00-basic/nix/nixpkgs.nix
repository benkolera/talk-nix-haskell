import (builtins.fetchGit {
  # Descriptive name to make the store path easier to identify
  name = "nixos-18.09-2018-12-21";
  url = https://github.com/nixos/nixpkgs/;
  # `git ls-remote https://github.com/nixos/nixpkgs-channels nixos-unstable
  rev = "195f8ac5ac62c7d11fe43bb077b91c184df931a5";
}) {}
