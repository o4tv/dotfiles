{ lib, pkgs, ... }:
{
  # dependencias
  home.packages = with pkgs; [
    vue-language-server
  ];

  plugins.lsp = {
    enable = true;
    servers = {
      nil_ls.enable = true;
      lua_ls.enable = true;
      bashls.enable = true;
      pyright.enable = true;
      html.enable = true;
      vue_ls.enable = true;
    };
  };

  plugins.lsp.servers.ts_ls = {
    enable = true;
    filetypes = [ "vue" ];
    extraOptions = {
      init_options = {
        plugins = [
          {
            name = "@vue/typescript-plugin";
            location = "${lib.getBin pkgs.vue-language-server}/lib/language-tools/packages/language-server";
            languages = [ "vue" ];
          }
        ];
      };
    };
  };

  plugins.fidget.enable = true;
}
