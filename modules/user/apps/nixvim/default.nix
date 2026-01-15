{
  myFunctions = ''v() { nvim "''${@:-.}"; }'';

  programs.nixvim = {
    enable = true;
    imports = [
      ./config
      ./backstage
    ];
  };
}
