{ config, ... }:

let
  myFunctions = # coloque esse "''$ para nao dar erro
    ''
      v() { nvim "''${@:-.}"; }

      flaket() {
          if [ -z "$1" ]; then
              echo "Erro: Por favor, especifique o nome do template."
              echo "Uso: flaket <nome-do-template>"
              return 1
          fi

          nix flake init -t "path:/home/otavio/dev/templates#$1"
      }
    '';
in
{
  imports = [
    ./aliases.nix
    ./tools
  ];

  programs.bash = {
    enable = true;
    shellAliases = config.myAliases;
    initExtra = myFunctions;
  };
}
