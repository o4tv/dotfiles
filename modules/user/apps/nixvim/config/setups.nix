{ lib, ... }:
{
  plugins.toggleterm = {
    enable = true;
    settings = {
      open_mapping = "[[<c-/>]]";
      direction = "float";
      float_opts = {
        border = "curved";
        height = 30;
        width = 130;
      };
    };
  };

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

  plugins.gitsigns = {
    enable = true;
    settings = {
      on_attach.__raw = ''
          function(bufnr)
              local gitsigns = require('gitsigns')

              local function map(mode, lhs, rhs, opts)
                  opts = opts or {}
                  opts.buffer = bufnr
                  vim.keymap.set(mode, lhs, rhs, opts)
              end

              -- Navigation
              map('n', ']c', function()
                  if vim.wo.diff then
                      vim.cmd.normal({ ']c', bang = true })
                  else
                      gitsigns.nav_hunk('next')
                  end
              end, { desc = 'próximo hunk' })

              map('n', '[c', function()
                  if vim.wo.diff then
                      vim.cmd.normal({ '[c', bang = true })
                  else
                      gitsigns.nav_hunk('prev')
                  end
              end, { desc = 'hunk anterior' })

              -- Actions
              map('n', '<leader>gs', gitsigns.stage_hunk, { desc = 'Stage do hunk atual' })
              map('n', '<leader>gr', gitsigns.reset_hunk, { desc = 'Reset do hunk atual' })

              map('v', '<leader>gs', function()
                  gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
              end, { desc = 'Stage do trecho selecionado' })

              map('v', '<leader>gr', function()
                  gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
              end, { desc = 'Reset do trecho selecionado' })

              map('n', '<leader>gS', gitsigns.stage_buffer, { desc = 'Stage do buffer inteiro' })
              map('n', '<leader>gR', gitsigns.reset_buffer, { desc = 'Reset do buffer inteiro' })
              map('n', '<leader>gp', gitsigns.preview_hunk, { desc = 'Preview do hunk atual' })
              map('n', '<leader>gi', gitsigns.preview_hunk_inline, { desc = 'Preview inline do hunk atual' })

              map('n', '<leader>gb', function()
                  gitsigns.blame_line({ full = true })
              end, { desc = 'Blame completo da linha atual' })

              map('n', '<leader>gd', gitsigns.diffthis, { desc = 'Diff do arquivo atual' })

              map('n', '<leader>gD', function()
                  gitsigns.diffthis('~')
              end, { desc = 'Diff contra o commit anterior' })

              map('n', '<leader>gQ', function()
                  gitsigns.setqflist('all')
              end, { desc = 'Enviar todos os hunks para a quickfix list' })

              map('n', '<leader>gq', gitsigns.setqflist, { desc = 'Enviar hunks do buffer para a quickfix list' })

              -- Toggles
              map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = 'Ativar/desativar blame inline' })
              map('n', '<leader>td', gitsigns.toggle_word_diff, { desc = 'Ativar/desativar diff por palavra' })

              -- Text object
              map({ 'o', 'x' }, 'ih', gitsigns.select_hunk, { desc = 'Selecionar hunk como text object' })
          end
      '';
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

  plugins.lazygit = {
    enable = true;
    # settings = {
    #
    # };
  };
}
