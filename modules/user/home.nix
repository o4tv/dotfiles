{
  imports = [
    ./apps
    ./dev
    ./space
  ];

  home.username = "otavio";
  home.homeDirectory = "/home/otavio";
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

}
