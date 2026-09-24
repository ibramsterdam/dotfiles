return {
  {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
			settings = {
				save_on_toggle = true,
			},
		},
		keys = {
			{ '<Leader>ua', 'ga', desc = 'Show Character Under Cursor' }, -- remap
			{ 'ga', function() require('harpoon'):list():add() end, desc = 'Add Location' },
			{ '<C-n>', function() require('harpoon'):list():next() end, desc = 'Next Location' },
			{ '<C-p>', function() require('harpoon'):list():prev() end, desc = 'Previous Location' },
			{ '<space>1', function() require('harpoon'):list():select(1) end, desc = 'Harpoon to File 1' },
			{ '<space>2', function() require('harpoon'):list():select(2) end, desc = 'Harpoon to File 2' },
			{ '<space>3', function() require('harpoon'):list():select(3) end, desc = 'Harpoon to File 3' },
			{ '<space>4', function() require('harpoon'):list():select(4) end, desc = 'Harpoon to File 4' },
			{ '<space>5', function() require('harpoon'):list():select(5) end, desc = 'Harpoon to File 5' },
			{ '<space>6', function() require('harpoon'):list():select(6) end, desc = 'Harpoon to File 6' },
			{ '<space>l', function()
				local harpoon = require('harpoon')
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end, desc = 'List locations' },
		},
	},
}
