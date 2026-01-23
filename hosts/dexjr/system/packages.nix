{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    firefox
    wget
    git
    uwsm
    fastfetch
    # google-chrome
  ];
}
