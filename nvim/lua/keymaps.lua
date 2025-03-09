-- Lua Dev 
vim.keymap.set("n", "<space><space>x", "<cmd>source % <CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Terminal
vim.keymap.set("t", "<C-o>", "<c-\\><c-n>")

local job_id = 0

vim.keymap.set("n", "<space>st", function()
  vim.cmd.new()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)

  job_id = vim.bo.channel
end)

-- Submit command example
vim.keymap.set("n", "<space>example", function()
  vim.fn.chansend(job_id, { "ls\r\n"})

  job_id = vim.bo.channel()
end)




