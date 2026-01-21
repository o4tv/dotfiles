{
  imports = [
    ./hardware-configuration.nix
    ./system
  ];

  services.getty.autologinUser = "serve";
  users.users.serve = {
    isNormalUser = true;
    description = "serve";
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
