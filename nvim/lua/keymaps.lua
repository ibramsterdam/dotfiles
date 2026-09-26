local map = vim.keymap.set

map("n", "<leader><leader>x", "<cmd>source %<CR>")
map("n", "<leader>x", ":.lua<CR>")
map("v", "<leader>x", ":lua<CR>")

map("t", "<C-k>", "<c-\\><c-n>")

map("n", "<leader>e", ":Oil<CR>")

map("n", "<leader>yp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "Yank full file path" })

local function telescope(picker, opts)
  return function()
    require("telescope.builtin")[picker](opts)
  end
end

map("n", "<leader>sh", telescope("help_tags"), { desc = "Search help" })
map("n", "<leader>sk", telescope("keymaps"), { desc = "Search keymaps" })
map("n", "<leader>sf", telescope("find_files"), { desc = "Search files" })
map("n", "<leader>ss", telescope("builtin"), { desc = "Search pickers" })
map("n", "<leader>sw", telescope("grep_string"), { desc = "Search current word" })
map("n", "<leader>sd", telescope("diagnostics"), { desc = "Search diagnostics" })
map("n", "<leader>sr", telescope("resume"), { desc = "Search resume" })
map("n", "<leader>s.", telescope("oldfiles"), { desc = "Search recent files" })
map("n", "<leader><leader>", telescope("buffers"), { desc = "Find buffers" })
map(
  "n",
  "<leader>shf",
  telescope("find_files", { hidden = true, no_ignore = true, prompt_title = "Find Files <ALL>" }),
  {
    desc = "Search hidden files",
  }
)
map("n", "<leader>s/", telescope("live_grep", { grep_open_files = true, prompt_title = "Live Grep in Open Files" }), {
  desc = "Search in open files",
})
map("n", "<leader>sn", telescope("find_files", { cwd = vim.fn.stdpath("config") }), { desc = "Search nvim files" })
map("n", "<leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find(
    require("telescope.themes").get_dropdown({ winblend = 10, previewer = false })
  )
end, { desc = "Fuzzy search current buffer" })
map("n", "<leader>sg", function()
  require("config.multigrep")()
end, { desc = "Multi grep" })

local function harpoon()
  return require("harpoon")
end

map("n", "<leader>ua", "ga", { desc = "Show character under cursor" })
map("n", "ga", function()
  harpoon():list():add()
end, { desc = "Harpoon add" })
map("n", "<C-n>", function()
  harpoon():list():next()
end, { desc = "Harpoon next" })
map("n", "<C-p>", function()
  harpoon():list():prev()
end, { desc = "Harpoon previous" })
for i = 1, 6 do
  map("n", "<leader>" .. i, function()
    harpoon():list():select(i)
  end, { desc = "Harpoon file " .. i })
end
map("n", "<leader>l", function()
  harpoon().ui:toggle_quick_menu(harpoon():list())
end, { desc = "Harpoon list" })
