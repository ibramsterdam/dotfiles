return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		opts = {
			custom_highlights = function(c)
				-- restore the blue float border from before catppuccin's float redesign
				return {
					FloatBorder = { fg = c.blue },
					-- match Normal's background so the tilde lines and split
					-- borders don't fall back to the terminal's own default bg
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
