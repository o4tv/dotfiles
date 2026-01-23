{ config, ... }:
let
  options = [];
in
{
  imports = [
    ./aliases.nix
    ./functions.nix
    ./tools
  ];

  programs.bash = {
    enable = true;
    shellAliases = config.myAliases;
    initExtra = config.myFunctions;
  };
}
