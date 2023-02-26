-- center screen when using ctrl d and u
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- center screen when navigating search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- move selected lines up and down
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==")

-- move text in visual block
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- clear search highlights
vim.keymap.set("n", "<leader>sc", "<cmd>nohl<CR>")

vim.keymap.set("n", "x", "\"_x")

vim.keymap.set("n", "J", "mzJ`z")

-- <leader>y goes to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
