{ pkgs, ... }:
{
  home.packages = with pkgs; [ noto-fonts ];

  programs.starship = {
    enable = true;
    settings = {
      nix_shell.symbol = "❄️ ";
      directory.truncation_length = 8;
      character = {
        success_symbol = "[𖹬](green)";
        error_symbol = "[✗](bold red)";
      };
    };
    enableBashIntegration = true;
  };
}
## instalar noto-fonts
# [character]
# success_symbol = '[𖹬](green)'
# error_symbol = "[✗](bold red)"
