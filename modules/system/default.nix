{ pkgs, ... }:
{
  imports = [
    ./boot.nix
    ./network.nix
    ./desktop
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
  ];

}
