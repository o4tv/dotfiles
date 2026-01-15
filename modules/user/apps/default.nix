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
    ])
    ++ (with pkgs-stable; [
    ]);
}
