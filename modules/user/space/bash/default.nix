{ config, ... }:
{
  imports = [
    ./aliases.nix
    ./tools
  ];

  programs.bash = {
    enable = true;
    shellAliases = config.myAliases;
    # initExtra = myFunctions;
  };
}
