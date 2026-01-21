{
  imports = [
    ./lazygit.nix
    ./distrobox.nix
  ];

  programs.direnv = {
    enable = true;
    config.warn_timeout = "1m";
    config.hide_env_diff = true;
  };
}
