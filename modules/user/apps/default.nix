{ pkgs, pkgs-stable, ... }:
{
  imports = [
    ./nixvim
    ./alacritty
  ];

  home.packages =
    (with pkgs; [
      kdePackages.dolphin
    ])
    ++ (with pkgs-stable; [
    ]);
}
