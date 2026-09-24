-- Lua Dev 
vim.keymap.set("n", "<space><space>x", "<cmd>source % <CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Terminal
vim.keymap.set("t", "<C-k>", "<c-\\><c-n>")

-- Oil
vim.keymap.set("n", "<space>e", ":Oil<CR>")

vim.keymap.set("n", "<leader>yp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "Yank full file path" })

