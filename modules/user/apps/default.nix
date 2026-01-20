{ pkgs, pkgs-stable, ... }:
{
  imports = [
    ./nixvim
    ./alacritty
    ./yazi
  ];

  home.packages =
    (with pkgs; [
      kdePackages.dolphin
      kdePackages.ark
      appimage-run
   ])
    ++ (with pkgs-stable; [
    ]);
}
