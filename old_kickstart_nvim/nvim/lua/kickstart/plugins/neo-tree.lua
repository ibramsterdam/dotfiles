-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree filesystem reveal right",
	keys = {
		{ "<leader>e", ":Neotree filesystem reveal right<CR>", { desc = "NeoTree reveal" } },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["<leader>e"] = "close_window",
				},
			},
		},
	},
}
