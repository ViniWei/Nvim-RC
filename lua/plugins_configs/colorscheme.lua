return {
    "loctvl842/monokai-pro.nvim",
    config = function ()
        require("monokai-pro").setup({
            override = function()
                return {
                    Normal = { bg = "#0e0e12" }
                }
            end
        })
        vim.cmd("colorscheme monokai-pro-spectrum")
    end
}
