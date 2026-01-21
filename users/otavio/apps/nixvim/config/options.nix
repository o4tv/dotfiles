{
  viAlias = true;
  opts = {
    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    expandtab = true;
    autoindent = true;
    smartindent = true;
    smarttab = true;
    list = true;
    wrap = false;
    number = true;
    relativenumber = true;
    cursorline = true;
    signcolumn = "yes";
    scrolloff = 8;
    showcmd = true;
    swapfile = false;
    backup = false;
    undofile = true;
    hlsearch = true;
    incsearch = true;
    ignorecase = true;
    smartcase = true;
    termguicolors = true;
    showmode = true;
  };

  globals = {
    mapleader = " ";
    loaded_netrw = 1;
    loaded_netrwPlugin = 1;
  };

  diagnostic.settings = {
    virtual_text = {
      spacing = 4;
      source = "ir_many";
      prefix = "●";
    };
    severity_sort = true;
    signs = true;
  };
  files = {
    "ftplugin/nix.lua".opts = {
      shiftwidth = 2;
      tabstop = 2;
    };
    "ftplugin/javascript.lua".opts = {
      shiftwidth = 2;
      tabstop = 2;
    };
    "ftplugin/typescript.lua".opts = {
      shiftwidth = 2;
      tabstop = 2;
    };
    "ftplugin/html.lua".opts = {
      shiftwidth = 2;
      tabstop = 2;
    };
  };

}
