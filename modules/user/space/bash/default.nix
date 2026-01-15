{ pkgs, config, ... }:
{
  imports = [
    ./aliases.nix
    ./tools
  ];

  home.packages = with pkgs; [ bat ];

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    options = [ "--cmd cd" ];
  };

  programs.bash = {
    enable = true;
    shellAliases = config.myAliases;
    # initExtra = myFunctions;
  };
}
