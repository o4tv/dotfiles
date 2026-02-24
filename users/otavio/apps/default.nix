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
   ])
    ++ (with pkgs-stable; [
    ]);
}
