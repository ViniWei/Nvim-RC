return {
    dependencies = {
        "tpope/vim-rhubarb"
    },
    "tpope/vim-fugitive",
    config = function ()
       vim.keymap.set("n", "<leader>go", ":G<enter>")
       vim.keymap.set("n", "<leader>gu", ":GBrowse<enter>")
    end
}
