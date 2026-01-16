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

  programs.bash.profileExtra = "if uwsm check may-start; then\n    exec uwsm start hyprland.desktop\nfi";
}
