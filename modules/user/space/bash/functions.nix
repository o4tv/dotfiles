{ lib, ... }:

with lib;
{
  options.myFunctions = mkOption {
    type = types.lines;
    default = { };
  };

  config.myFunctions = ''
    flaket() {
        if [ -z "$1" ]; then
            echo "Erro: Por favor, especifique o nome do template."
            echo "Uso: flaket <nome-do-template>"
            return 1
        fi

        nix flake init -t "path:/home/otavio/dev/templates#$1"
    }
  '';
}
