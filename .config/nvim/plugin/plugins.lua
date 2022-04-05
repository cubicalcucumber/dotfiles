require "paq" {
  "savq/paq-nvim",
  "neovim/nvim-lspconfig",

  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "tpope/vim-commentary",
  "tpope/vim-endwise",
  "tpope/vim-repeat",
  "tpope/vim-surround",

  "skywind3000/asyncrun.vim",
  "vimwiki/vimwiki",
}

---------------
-- Telescope --
---------------

require("telescope").setup {
  defaults = {
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
  }
}


-------------
-- Vimwiki --
-------------

vim.g.vimwiki_list = {
  {
    path = "~/wiki/",
    path_html = "~/wiki-html",
  },
}


--------------
-- Asyncrun --
--------------

-- Open a quickfix window (if not already open) when using asyncrun.
vim.g.asyncrun_open = 10
