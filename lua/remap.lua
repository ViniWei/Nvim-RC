vim.g.mapleader = " "

vim.keymap.set("n", "<leader>gb", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", ":noh<CR>")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<C-p>", "\"+p")
vim.keymap.set("n", "<C-y>", "\"+y")
vim.keymap.set("v", "<C-p>", "\"+p")
vim.keymap.set("v", "<C-y>", "\"+y")

vim.keymap.set("i", "\"", "\"\"<LEFT>")
vim.keymap.set("i", "(", "()<LEFT>")
vim.keymap.set("i", "{", "{}<LEFT>")
vim.keymap.set("i", "[", "[]<LEFT>")
vim.keymap.set("i", "'", "''<LEFT>")
vim.keymap.set("i", "<", "<><LEFT>")
