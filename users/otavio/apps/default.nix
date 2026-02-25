{ pkgs, pkgs-stable, ... }:
{
  imports = [
    ./nixvim
    ./alacritty
    ./yazi
    ./spicetify
  ];

  home.packages =
    (with pkgs; [
      kdePackages.dolphin
      kdePackages.ark
      appimage-run
      prismlauncher
      google-chrome
   ])
    ++ (with pkgs-stable; [
    ]);
}
