return {
    dependencies = {
        "tpope/vim-rhubarb",
        "cedarbaum/fugitive-azure-devops.vim"
    },
    "tpope/vim-fugitive",
    config = function ()
       vim.keymap.set("n", "<leader>go", ":G<enter>")
       vim.keymap.set("n", "<leader>gu", ":GBrowse<enter>")
    end
}
