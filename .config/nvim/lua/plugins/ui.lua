return {
  { "nvchad/volt", lazy = true },
  { "nvim-lua/plenary.nvim", lazy = true },
  { "nvim-tree/nvim-web-devicons", lazy = true },

  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end
  },

  {
    "nvchad/base46",
    lazy = true,

    build = function()
      require("base46").load_all_highlights()
    end,

    keys = {
      {
        desc = "Pick theme", "<leader>th",
        function() require("nvchad.themes").open { border = true} end
      },
    },
  },
}
