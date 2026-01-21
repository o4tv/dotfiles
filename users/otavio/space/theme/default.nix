{ pkgs, ... }:
{
  # TODO
  home.packages = with pkgs; [
    kdePackages.breeze-gtk
    kdePackages.breeze-icons
    kdePackages.breeze.qt5
    kdePackages.breeze
    catppuccin-papirus-folders # Icon theme, e.g. for pcmanfm-qt
    papirus-folders
    nwg-look
  ];

  home.pointerCursor = {
    gtk.enable = true;
    name = "Catppuccin-Macchiato-Dark-Cursors";
    package = pkgs.catppuccin-cursors.macchiatoDark;
    size = 16;
  };

}
