let
  myAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    nsf = "sudo nixos-rebuild switch --flake ~/.dotfiles/";
    hsf = "home-manager switch --flake ~/.dotfiles/";
    asf = "nsf && hsf";
    vat = "bat";
    c = "clear";
    q = "exit";
    ls = "eza -l";
    lsa = "eza -la";
    lt = "eza -TL2";
    lta = "eza -aTL2";
    ltla = "eza -laTL2";
  };
  myFunctions = # coloque esse "''$ para nao dar erro
    ''
      v() { nvim "''${@:-.}"; }
      flaket() {
          # Verifica se o argumento foi passado
          if [ -z "$1" ]; then
              echo "Erro: Por favor, especifique o nome do template."
              echo "Uso: flaket <nome-do-template>"
              return 1
          fi

          # Executa o comando inserindo o argumento $1 no final
          nix flake init -t "path:/home/otavio/dev/templates#$1"
      }
    '';
in
{
  programs.bash = {
    shellAliases = myAliases;
    initExtra = myFunctions;
  };
}
