{ pkgs, ... }:
{
  myFunctions = ''v() { nvim "''${@:-.}"; }'';

  home.packages = with pkgs; [
    # treesitter
    tree-sitter
    gcc
    # telescope
    ripgrep
    fd
    # lsp
    vue-language-server
  ];

  programs.nixvim = {
    enable = true;
    imports = [
      ./config
      ./backstage
    ];
  };
}
