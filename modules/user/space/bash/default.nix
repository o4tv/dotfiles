{ pkgs, ... }:
{
  imports = [
    ./aliases.nix
    ./starship.nix
  ];

  home.packages = with pkgs; [ bat ];

  programs.eza = {
    enable = true;
    enableBashIntegration = false;
  };
  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    options = [ "--cmd cd" ];
  };

  programs.bash.enable = true;
}
