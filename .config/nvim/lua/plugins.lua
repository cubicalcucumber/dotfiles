-- Install `lazy.nvim` if not already done
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazy_path }
end
vim.opt.rtp:prepend(lazy_path)

require("lazy").setup {

  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function() vim.cmd.colorscheme "catppuccin" end,
  },

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

  {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {}
  },

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

  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    branch = "0.1.x",

    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },

    config = function()
      require("telescope").load_extension "fzf"
      require("telescope").setup {
        defaults = { borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }, },
      }
    end,

    keys = {
      -- Finding files
      {
        desc = "[F]ind in [F]iles", "<leader>ff",
        function() require("telescope.builtin").find_files() end,
      },
      {
        desc = "[F]ind in [R]ecent files", "<leader>fr",
        function() require("telescope.builtin").oldfiles() end,
      },
      {
        desc = "[F]ind [B]uffers", "<leader>fb",
        function() require("telescope.builtin").buffers() end,
      },
      {
        desc = "[F]ind [N]eovim configs", "<leader>fn",
        function() require("telescope.builtin").find_files { cwd = vim.fn.stdpath("config") } end,
      },

      -- Grepping file content
      {
        desc = "[/] Find in current buffer", "<leader>/",
        function() require("telescope.builtin").current_buffer_fuzzy_find() end,
      },
      {
        desc = "[F]ind in [O]pen files", "<leader>fo",
        function()
          require("telescope.builtin").live_grep {
            grep_open_files = true,
            prompt_title = "Grep in open files",
          }
        end,
      },
      {
        desc = "[F]ind using [G]rep", "<leader>fg",
        function() require("telescope.builtin").live_grep() end,
      },

      -- Various other stuff
      {
        desc = "[F]ind in [H]elp", "<leader>fh",
        function() require("telescope.builtin").help_tags() end,
      },
      {
        desc = "[F]ind in [K]eymaps", "<leader>fk",
        function() require("telescope.builtin").keymaps() end,
      },
    },
  },

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
  },
}

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
