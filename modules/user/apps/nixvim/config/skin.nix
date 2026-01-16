{
  colorschemes.tokyonight.enable = true;

  plugins.web-devicons.enable = true;

  plugins.transparent = {
    enable = true;
    settings.extra_groups = [
      "BufferLineTabClose"
      "BufferLineBufferSelected"
      "BufferLineFill"
      "BufferLineBackground"
      "BufferLineSeparator"
      "BufferLineIndicatorSelected"
    ];
  };

  plugins.lualine = {
    enable = true;
    settings = {
      options.globalstatus = true;
      sections.lualine_x = [
        "buffers"
        "encoding"
        "fileformat"
        "filetype"
      ];
    };
  };
}
