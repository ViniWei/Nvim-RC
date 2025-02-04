return {
    "folke/zen-mode.nvim",
    config = function ()
        vim.keymap.set("n", "<C-w>f", require("zen-mode").toggle);
    end,
}
