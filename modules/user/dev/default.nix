{
  imports = [ ];

  programs.direnv = {
    enable = true;
    # silent = true;
    config.hide_env_diff = true;
  };
}
