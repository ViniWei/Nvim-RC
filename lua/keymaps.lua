vim.keymap.set("n", "<leader>w", ":w<enter>")

vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

vim.keymap.set("n", "<leader>n", ":noh<enter>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-r>l", [[<cmd>vertical resize +15<cr>]])
vim.keymap.set("n", "<C-r>h", [[<cmd>vertical resize -15<cr>]])
vim.keymap.set("n", "<C-r>k", [[<cmd>horizontal resize +6<cr>]])
vim.keymap.set("n", "<C-r>j", [[<cmd>horizontal resize -6<cr>]])

vim.keymap.set("n", "<leader>q", ":q<enter>", { silent = true })
vim.keymap.set("n", "<leader>!", ":q!<enter>", { silent = true })

vim.keymap.set("n", "<leader>f", ":tab split<enter>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
