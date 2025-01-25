return {
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
}
