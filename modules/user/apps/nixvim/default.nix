{
  programs.nixvim = {
    enable = true;
    imports = [
      ./config
      ./backstage
    ];
  };
}
