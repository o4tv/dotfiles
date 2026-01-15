{ lib, ... }:

with lib;
{
  options.myAliases = lib.mkOption {
    type = types.attrsOf types.str;
    default = {};
  };

  myAliases = {
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    nsf = "sudo nixos-rebuild switch --flake ~/.dotfiles/";
    hsf = "home-manager switch --flake ~/.dotfiles/";
    asf = "nsf && hsf";
    vat = "bat";
    y = "yy";
    c = "clear";
    q = "exit";
  };
}
