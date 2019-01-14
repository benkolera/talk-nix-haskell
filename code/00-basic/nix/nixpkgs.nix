import (builtins.fetchGit {
  # Descriptive name to make the store path easier to identify
  name = "nixos-18.09-2019-01-15";
  url = https://github.com/nixos/nixpkgs/;
  # `git ls-remote https://github.com/nixos/nixpkgs-channels nixpkgs-18.09`
  rev = "001b34abcb4d7f5cade707f7fd74fa27cbabb80b";
}) {}
