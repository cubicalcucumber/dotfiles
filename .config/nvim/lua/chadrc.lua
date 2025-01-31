return {
  base46 = { theme = "catppuccin", },
    hl_add = {
      TabLine     = { bg = "one_bg", fg = "light_grey" },
      TabLineSel  = { fg = { "white", "light_grey", 30}, },
      TabLineFill = { bg = "one_bg" },
    },

  ui = {
    statusline = {
        enabled = true,
        theme = "vscode_colored",
    },

    telescope = { style = "bordered" },
    tabufline = { enabled = false },
  },

  term = {
    float = {
      row = 0.25,
      col = 0.25,
      width = 0.5,
      height = 0.5,
    },
  },
}
