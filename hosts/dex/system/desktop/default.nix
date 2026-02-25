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

  # disable mouse scroll
  environment.etc."libinput/local-overrides.quirks".text = ''
    [Disable Mouse Scroll]
    MatchUdevType=mouse
    AttrEventCode=-REL_WHEEL;-REL_HWHEEL;-REL_WHEEL_HI_RES;-REL_HWHEEL_HI_RES;
  '';
}
