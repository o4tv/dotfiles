{
  plugins.blink-cmp = {
    enable = true;
    setupLspCapabilities = true;
    settings = {
      keymap.preset = "enter";
      appearance.nerd_font_variant = "mono";
      completion = {
        documentation.auto_show = false;
        accept.auto_brackets.enabled = true;
      };
    };
  };
}
