vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.opt.signcolumn = "no"
vim.opt.updatetime = 300
vim.opt.timeoutlen = 350
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.breakindent = true
vim.opt.list = true
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" }

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.filetype.add({
   extension = {
   yml = "yaml",
   },
})


vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("TermOpen", {
	desc = "Open Terminal",
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
	end,
})


require("config.lazy")
require("keymaps")
