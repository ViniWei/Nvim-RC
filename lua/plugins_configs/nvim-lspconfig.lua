return {
    "neovim/nvim-lspconfig",
    config = function ()
        vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<leader>k", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true})
        vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true})
    end
}
