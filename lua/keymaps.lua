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

vim.keymap.set("n", "<leader>q", ":q<enter>", { silent = true })
vim.keymap.set("n", "<leader>!", ":q!<enter>", { silent = true })

vim.keymap.set("n", "<leader>f", ":tab split<enter>")

vim.keymap.set("n", "<C-x>", ":cnext<enter>")
vim.keymap.set("n", "<C-z>", ":cprevious<enter>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Netrw mappings --
vim.keymap.set("n", "<C-e>", ":Ex<enter>")

local function set_netrw_mappings()
    vim.keymap.set("n", "s", "<enter>", { remap = true, buffer = true })
    vim.keymap.set("n", "<C-e>", "-", { remap = true, buffer = true })
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = set_netrw_mappings,
})
