return {
    "loctvl842/monokai-pro.nvim",
    config = function ()
        require("monokai-pro").setup({
            styles = {
                comment = { italic = false },
                keyword = { italic = false },
                type = { italic = false },
                storageclass = { italic = false },
                structure = { italic = false },
                parameter = { italic = false },
                annotation = { italic = false },
                tag_attribute = { italic = false },
            },
            override = function()
                return {
                    Normal = { bg = "#0e0e12" },
                }
            end,
            overridePalette = function(filter)
                return {
                    dark1 = "#09090c",
                    background = "#0e0e12",
                }
            end
        })
        vim.cmd("colorscheme monokai-pro-spectrum")
    end
}
