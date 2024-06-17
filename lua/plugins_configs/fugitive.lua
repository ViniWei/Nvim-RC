return {
    "tpope/vim-fugitive",
    config = function ()
       vim.keymap.set("n", "<C-g>", ":G<enter>")
    end
}
