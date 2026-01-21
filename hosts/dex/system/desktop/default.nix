{
  imports = [
    #./plasma.nix
    ./hyprland.nix
  ];

  #services.displayManager.sddm.enable = true;
  #services.displayManager.ly.enable = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}
