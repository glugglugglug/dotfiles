local map = vim.keymap.set

vim.keymap.set("n", "<leader>ut", function()
  require("theme").toggle()
end, { desc = "Toggle colorscheme" })

-- Disable Ex mode
map("n", "Q", "<Nop>", { desc = "Disable Ex mode" })

-- Arrow key discipline
map("n", "<Left>", ":echoe 'Use h'<CR>")
map("n", "<Right>", ":echoe 'Use l'<CR>")
map("n", "<Up>", ":echoe 'Use k'<CR>")
map("n", "<Down>", ":echoe 'Use j'<CR>")

map("i", "<Left>", "<ESC>:echoe 'Use h'<CR>")
map("i", "<Right>", "<ESC>:echoe 'Use l'<CR>")
map("i", "<Up>", "<ESC>:echoe 'Use k'<CR>")
map("i", "<Down>", "<ESC>:echoe 'Use j'<CR>")


local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Redirect all core editing ops to system clipboard
map({ "n", "v" }, "y", '"+y', opts)
map({ "n", "v" }, "Y", '"+Y', opts)
map({ "n", "v" }, "d", '"+d', opts)
map({ "n", "v" }, "D", '"+D', opts)
map({ "n", "v" }, "c", '"+c', opts)
map({ "n", "v" }, "C", '"+C', opts)
map({ "n", "v" }, "p", '"+p', opts)
map({ "n", "v" }, "P", '"+P', opts)

-- keymaps
local keymap = vim.keymap
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

--telescope ?
vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>", { desc = "📁 File Browser (cwd)" })
vim.keymap.set("n", "<leader>fB", function()
  require("telescope").extensions.file_browser.file_browser({
    path = vim.fn.expand("%:p:h"),
    select_buffer = true,
  })
end, { desc = "📁 File Browser (current file dir)" })
