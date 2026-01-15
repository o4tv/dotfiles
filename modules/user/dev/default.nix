{
  programs.lazygit = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.direnv = {
    enable = true;
    config.hide_env_diff = true;
  };
}
