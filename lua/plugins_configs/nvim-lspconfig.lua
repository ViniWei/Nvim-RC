return {
    "neovim/nvim-lspconfig",
    config = function ()
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end, { noremap = true })
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, { noremap = true })
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { noremap = true })
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, { noremap = true })
    end
}
