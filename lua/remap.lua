vim.g.mapleader = " "

vim.keymap.set("n", "<leader>gb", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", ":noh<CR>")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- System remap --
vim.keymap.set("n", "<C-y>", "\"+y")
vim.keymap.set("n", "<C-p>", "\"+p")
vim.keymap.set("x", "<C-y>", "\"+y")
vim.keymap.set("x", "<C-p>", "\"+p")
