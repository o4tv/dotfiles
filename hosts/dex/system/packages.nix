{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    brave
    wget
    git
    uwsm
    fastfetch
    google-chrome
  ];
}
