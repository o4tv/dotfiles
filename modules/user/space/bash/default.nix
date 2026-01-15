{ config, ... }:

{
  imports = [
    ./aliases.nix
    ./funcitons.nix
    ./tools
  ];

  programs.bash = {
    enable = true;
    shellAliases = config.myAliases;
    initExtra = config.myFunctions;
  };
}
