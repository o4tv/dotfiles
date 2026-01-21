{
  myAliases = {
    ls = "eza -l";
    lsa = "eza -la";
    lt = "eza -TL2";
    lta = "eza -aTL2";
    ltla = "eza -laTL2";
  };

  programs.eza = {
    enable = true;
    enableBashIntegration = false;
  };
}
