{ lib, ... }:
{
  plugins.nvim-tree = {
    enable = true;
    settings = {
      on_attach = lib.nixvim.mkRaw ''
        function(bufnr)
            local api = require('nvim-tree.api')

            local function opts(desc)
                return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
            vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
            -- vim.keymap.set('n', '<Esc>', api.tree.toggle,                       opts('Toggle'))
        end
      '';
      view = {
        width = 25;
      };
      renderer = {
        group_empty = true;
      };
      filters = {
        dotfiles = true;
      };
      sync_root_with_cwd = true;
      respect_buf_cwd = true;
      update_focused_file = {
        enable = true;
        update_root = true;
      };
    };
  };

  plugins.barbar = {
    enable = true;
    settings = {
      sidebar_filetypes.NvimTree = true;
    };
    keymaps = {
      close.key = "<M-q>";
      next.key = "<M-h>";
      previous.key = "<M-l>";
      pick.key = "<C-p>";
      pickDelete.key = "<M-d>";
      goTo1.key = "<A-1>";
      goTo2.key = "<A-2>";
      goTo3.key = "<A-3>";
      goTo4.key = "<A-4>";
      goTo5.key = "<A-5>";
      goTo6.key = "<A-6>";
      goTo7.key = "<A-7>";
      goTo8.key = "<A-8>";
      goTo9.key = "<A-9>";
    };
  };

  plugins.telescope = {
    enable = true;
    settings = {
      defaults.layout_config = {
        mirror = true;
        horizontal.preview_width = 0.6;
      };
    };
  };

  plugins.direnv.enable = true;
}
