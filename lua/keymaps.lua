vim.keymap.set("n", "<leader>w", ":w<enter>")
vim.keymap.set("n", "<leader>n", ":noh<enter>:echo ''<esc>", { silent = true })

-- centralized half page jumps
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- terminal and git
vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]]);
vim.keymap.set("n", "<leader>t", ":te<CR>i");
vim.keymap.set("n", "<leader>gl", ":te git log<CR>i");
vim.keymap.set("n", "<leader>gs", ":te git status<CR>i");
vim.keymap.set("n", "<leader>go", ":te git ");

-- lsp buf functions
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format)
