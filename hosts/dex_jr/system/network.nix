let
  allowedPorts = [
    # 5173 # vite
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
}
