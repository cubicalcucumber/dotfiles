-- Install `lazy.nvim` if not already done
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazy_path }
end
vim.opt.rtp:prepend(lazy_path)

require("lazy").setup {
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
