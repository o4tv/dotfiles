{ lib, ... }:

with lib;
{
  options.myAliases = mkOption {
    type = types.attrsOf types.str;
    default = {};
  };

  config.myAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    nsf = "sudo nixos-rebuild switch --flake ~/.dotfiles/";
    hsf = "home-manager switch --flake ~/.dotfiles/";
    asf = "nsf && hsf";
    y = "yy";
    c = "clear";
    q = "exit";
  };
}
