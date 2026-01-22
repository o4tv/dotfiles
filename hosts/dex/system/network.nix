let
  allowedPorts = [
    5173 # vite
  ];
in
{
  networking.hostName = "dex";

  networking.wireless.enable = true;
  networking.wireless.networks."brisa-3388444" = {
    # Use 'wpa_passphrase SSID password' to generate this value
    pskRaw = "ea18dc8f85a8a44e648e9b98358ce0f8d6a0b1206cda0465a03bf85e66535840";
  };

  networking.firewall = {
    enable = false;
    allowedTCPPorts = allowedPorts;
    allowedUDPPorts = allowedPorts;
  };

}
# network={
# 	ssid="brisa-3388444"
# 	#psk="irl71m7m"
# 	psk=ea18dc8f85a8a44e648e9b98358ce0f8d6a0b1206cda0465a03bf85e66535840
# }
