{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    brave
    wget
    git
    uwsm
    fastfetch
    google-chrome
    javaPackages.compiler.temurin-bin.jre-25
    javaPackages.compiler.temurin-bin.jdk-25
  ];
}
