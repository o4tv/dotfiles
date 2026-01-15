{ lib, pkgs, ... }:
{
  plugins.conform-nvim = {
    enable = true;
    # lazyLoad.enable = true;
    settings = {
      formatters_by_ft = {
        # lua = [ "stylua" ];
        javascript = [ "prettier" ];
        nix = [ "nixfmt" ];
      };
      formatters = {
        # stylua = {
        #     command = lib.getExe pkgs.stylua;
        # };
        prettier.command = lib.getExe pkgs.prettier;
        nixfmt.command = lib.getExe pkgs.nixfmt;
      };
    };
  };
}
