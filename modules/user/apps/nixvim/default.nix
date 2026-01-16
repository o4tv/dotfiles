{ pkgs, ... }:
{
  myFunctions = ''v() { nvim "''${@:-.}"; }'';

  home.packages = with pkgs; [
    ripgrep
  ];

  programs.nixvim = {
    enable = true;
    imports = [
      ./config
      ./backstage
    ];
  };
}
