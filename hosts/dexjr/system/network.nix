let
  allowedPorts = [
    22
  ];
in
{
  networking.hostName = "dexjr";

  networking.networkmanager.enable = true;

  networking.firewall = {
    enable = false;
    allowedTCPPorts = allowedPorts;
    allowedUDPPorts = allowedPorts;
  };

  services.openssh = {
    enable = true;
    settings = {
      # permitRootLogin = "prohibit-password"; # Ou "no", "without-password", etc.
      PasswordAuthentication = true;
    };
  };

}
