{ pkgs, ... }:
{

  home.packages = with pkgs; [
    alacritty
    rofi
    wl-clipboard
  ];

  home.file.".config/sway/config".source = ./config;

  # inicia sway sem dm somente no tty
  programs.bash.profileExtra = ''[ -z "$WAYLAND_DISPLAY" ] && [ -z "$DISPLAY" ] && exec sway'';
}
