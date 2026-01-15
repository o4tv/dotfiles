{ pkgs, ... }:
{
  imports = [
    ./boot.nix
    ./network.nix
    ./desktop
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
  ];

  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    SUDO_EDITOR = "nvim";
  };

  # remove bloat
  programs.nano.enable = false;
}
