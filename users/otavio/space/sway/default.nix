{ pkgs, ... }:
{

  home.packages = with pkgs; [
    alacritty
    rofi
    wl-clipboard
  ];

  home.file.".config/sway/config".source = ./config;

  # inicia hyprland sem dm somente no tty
  # programs.bash.profileExtra = ''[ "$CANT_RUN" == "1" ] || [ -z "$WAYLAND_DISPLAY" ] && [ -z "$DISPLAY" ] && uwsm check may-start 2>/dev/null && exec uwsm start hyprland.desktop'';
}
