return {
  --------------------
  -- User Interface --
  --------------------

  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "ibl".setup {
        indent = { char = "|" },
        scope = { enabled = false },
      }
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },


  ----------------
  -- Ergonomics --
  ----------------

  {
    "echasnovski/mini.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("mini.ai").setup {}
      require("mini.surround").setup {}
    end,
  },

  {
    "tpope/vim-endwise",
    event = { "BufReadPre", "BufNewFile" },
  },

  {
    "skywind3000/asyncrun.vim",
    event = "VeryLazy",
  },
}
