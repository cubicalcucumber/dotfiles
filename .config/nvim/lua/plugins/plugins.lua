return {
  --------------------
  -- User Interface --
  --------------------

  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function() vim.cmd.colorscheme "catppuccin" end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    -- enabled = false,
    config = function()
      require "ibl".setup {
        indent = { char = "|" },
        scope = { enabled = false },
      }
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = false,
        component_separators = "|",
        section_separators = "",
      },
    },
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

  {
    "vimwiki/vimwiki",
    event = "VeryLazy",
  },
}
