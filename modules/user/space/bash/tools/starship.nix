{ pkgs, ... }:
{
  home.packages = with pkgs; [ noto-fonts ];

  programs.starship = {
    enable = true;
    settings = {
      nix_shell.symbol = "❄️";
      directory = {
        style = "bold dimmed blue";
        truncation_length = 8;
      };
      character = {
        success_symbol = "[𖹬](purple)";
        error_symbol = "[✗](bold red)";
      };
      container.disabled = true;
      hostname = {
        style = "bold dimmed red";
        disabled = false;
        ssh_only = false;
      };
      custom.distrobox = {
        command = ''printf "%s" "$CONTAINER_ID"'';
        when = ''test -n "$CONTAINER_ID"'';
        symbol = "⬢";
        format = "[$symbol ($output)]($style) on ";
        style = "bold dimmed blue";
      };
      format = "$custom$all";
    };
    enableBashIntegration = true;
  };
}
## instalar noto-fonts
# [character]
# success_symbol = '[𖹬](green)'
# error_symbol = "[✗](bold red)"
