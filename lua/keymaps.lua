local function centralized_half_page_jumps()
    vim.keymap.set("n", "<C-u>", "<C-u>zz")
    vim.keymap.set("n", "<C-d>", "<C-d>zz")
end

local function window_navigation()
    vim.keymap.set("n", "<C-l>", "<C-w>l")
    vim.keymap.set("n", "<C-h>", "<C-w>h")
    vim.keymap.set("n", "<C-j>", "<C-w>j")
    vim.keymap.set("n", "<C-k>", "<C-w>k")

    vim.keymap.set("n", "<C-w>f", ":tab split<enter>")
end

local function move_text_vertically()
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
end

local function terminal()
    vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]]);
    vim.keymap.set("n", "<leader>t", ":te<CR>i");
    vim.keymap.set("n", "<leader>gl", ":te git log<CR>");
    vim.keymap.set("n", "<leader>go", ":te git ");
end

local function lsp_buf_funcions()
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
    vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format)
end

vim.keymap.set("n", "<leader>w", ":w<enter>")
vim.keymap.set("n", "<leader>n", ":noh<enter>:echo ''<esc>")

window_navigation()
move_text_vertically()
centralized_half_page_jumps()
terminal()
lsp_buf_funcions()
