{
  imports = [
    ./lazygit.nix
  ];

  programs.direnv = {
    enable = true;
    config.hide_env_diff = true;
  };
}
