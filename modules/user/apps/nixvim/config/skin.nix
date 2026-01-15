{
  colorschemes.tokyonight.enable = true;

  plugins.web-devicons.enable = true;
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
      };
      sections = {
        lualine_x = [
          "buffers"
          "encoding"
          "fileformat"
          "filetype"
        ];
      };
    };
  };
}
