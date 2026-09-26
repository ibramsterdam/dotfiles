return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      custom_highlights = function(c)
        return {
          FloatBorder = { fg = c.blue },
          EndOfBuffer = { fg = c.base, bg = c.base },
          NonText = { fg = c.base, bg = c.base },
          WinSeparator = { fg = c.surface1, bg = c.base },
        }
      end,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
      vim.cmd.hi("Comment gui=none")
    end,
  },
}
