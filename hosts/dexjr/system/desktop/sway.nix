{ pkgs, ... }:
{
  programs.sway = {
    enable = true;
    xwayland.enable = true;
    extraPackages = with pkgs; [
      alacritty
    ];
  };
}
