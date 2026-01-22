{
  imports = [
    ./hardware-configuration.nix
    ./system
  ];

  services.getty.autologinUser = "otavio";
  users.users.otavio = {
    isNormalUser = true;
    description = "otavio";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.11";
}
