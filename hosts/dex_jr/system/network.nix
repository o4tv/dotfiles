let
  allowedPorts = [
    22
  ];
in
{
  networking.hostName = "dex";

  networking.networkmanager.enable = true;

  networking.firewall = {
    enable = true;
    allowedTCPPorts = allowedPorts;
    allowedUDPPorts = allowedPorts;
  };

  services.openssh = {
  enable = true;
  # permitRootLogin = "prohibit-password"; # Ou "no", "without-password", etc.
  passwordAuthentication = true;
  allowUsers = [ "otavio" ];
};

}
