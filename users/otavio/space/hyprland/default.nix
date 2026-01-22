{ lib, pkgs, ... }:
{

  home.packages = with pkgs; [
    alacritty
    rofi
    hyprpaper
    hyprpolkitagent
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk
    wl-clipboard
    hyprshot
    hyprland
  ];

  services.hyprpaper.enable = true;

  home.file.".config/hypr/hyprland.conf".source = lib.mkForce ./hyprland.conf;

  home.file.".config/hypr/hyprpaper.conf".text = ''
    splash = false
    wallpaper {
        monitor = 
        path = ~/.wallpapers/tt.jpg
        fit_mode = cover
    }
  '';

  # inicia hyprland sem dm somente no tty
  programs.bash.profileExtra = ''[ "$CANT_RUN" == "1" ] || [ -z "$WAYLAND_DISPLAY" ] && [ -z "$DISPLAY" ] && uwsm check may-start 2>/dev/null && exec uwsm start hyprland.desktop'';
}
