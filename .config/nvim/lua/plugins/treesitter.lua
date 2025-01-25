return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "VeryLazy" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    build = ":TSUpdate",

    opts = {
      ensure_installed = { "c", "lua", "luadoc", "markdown", "markdown_inline", "ruby", "vimdoc" },
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "ruby" },
      },
      indent = { enable = true, disable = { "ruby" } },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },

      textobjects = {
        select = {
          enable = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
        move = {
          enable = true,
          lookahead = true,
          goto_next_start = {
            ["]]"] = "@function.outer",
            ["]c"] = "@class.outer",
            ["]b"] = "@block.inner",
            ["]p"] = "@parameter.inner",
          },
          goto_previous_start = {
            ["[["] = "@function.outer",
            ["[c"] = "@class.outer",
            ["[b"] = "@block.inner",
            ["[p"] = "@parameter.inner",
          },
        },
        swap = {
          enable = true,
          swap_next = { ["<leader>x"] = "@parameter.inner" },
          swap_previous = { ["<leader>z"] = "@parameter.inner" },
        },
      },
    },

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  }
}
