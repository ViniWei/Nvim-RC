return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "vim", "vimdoc", "query", "css", "scss" },
            auto_install = true,

            highlight = {
                enable = true
            },
            indent = {
                enable = false
            }
        })
    end
}
