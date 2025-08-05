return {
    dependencies = {
        "tpope/vim-rhubarb",
        "cedarbaum/fugitive-azure-devops.vim"
    },
    "tpope/vim-fugitive",
    config = function ()
       vim.keymap.set("n", "<leader>go", ":G<enter><C-w>o", { silent = true })
       vim.keymap.set("n", "<leader>gu", ":GBrowse<enter>")
    end
}
