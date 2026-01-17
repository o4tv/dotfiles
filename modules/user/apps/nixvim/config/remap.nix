{
  keymaps = [
    # {
    #     action = "<cmd>make<CR>";
    #     key = "<C-m>";
    #     options = {
    #         silent = true;
    #     };
    # }
    {
      key = "Ç";
      action = ":";
    }
    {
      key = "q";
      action = "<cmd>q<CR>";
    }
    {
      key = "Q";
      action = "<cmd>qa<CR>";
    }
    {
      key = "<leader>w";
      action = "<cmd>w<CR>";
    }
    {
      key = "<M-S-c>";
      action = "\"+y";
    }
    {
      key = "<M-S-x>";
      action = "\"+d";
    }
    {
      key = "<C-h>";
      action = "<C-w>h";
    }
    {
      key = "<C-j>";
      action = "<C-w>j";
    }
    {
      key = "<C-k>";
      action = "<C-w>k";
    }
    {
      key = "<C-l>";
      action = "<C-w>l";
    }
    {
      key = "<C-Left>";
      action = "<C-w><";
    }
    {
      key = "<C-Down>";
      action = "<C-w>-";
    }
    {
      key = "<C-Up>";
      action = "<C-w>+";
    }
    {
      key = "<C-Right>";
      action = "<C-w>>";
    }
    {
      key = "<leader><leader>";
      action.__raw = "require('telescope.builtin').find_files";
    }
    {
      key = "<leader>ff";
      action.__raw = "require('telescope.builtin').find_files";
    }
    {
      key = "<leader>fg";
      action.__raw = "require('telescope.builtin').live_grep";
    }
    {
      key = "<leader>fh";
      action.__raw = "require('telescope.builtin').help_tags";
    }
    {
      key = "<leader>fs";
      action = "gg<S-v>G";
    }
    {
      key = "<C-b>";
      action.__raw = ''
        function()
            local api = require('nvim-tree.api')
            if vim.bo.filetype == 'NvimTree' then
                api.tree.close()
            else
                api.tree.focus()
            end
        end
      '';
    }
    {
      key = "<leader>cf";
      action.__raw = "require('conform').format";
    }
    {
      key = "<leader>lg";
      action = "<cmd>LazyGit<CR>";
    }
    {
      key = "<c-/>";
      action = "<cmd>ToggleTerm<CR>";
    }
  ];
}
