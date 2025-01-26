return {
    {
        "rebelot/kanagawa.nvim",
        config = function ()
            require("kanagawa").setup({
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
                transparent = true,
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none"
                            }
                        }
                    }
                }
            })


            vim.cmd("colorscheme kanagawa")
        end
    }
}

