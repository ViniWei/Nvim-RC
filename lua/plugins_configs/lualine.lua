return {
    "nvim-lualine/lualine.nvim",
    config = function ()
        require('lualine').setup({
            options = {
                component_separators = "|",
                section_separators = "",
                theme = "auto",
            },
            sections = {
                lualine_c = { { 'filename', path = 1 } },
                lualine_x = { 'encoding', 'fileformat', 'filetype' }
            }
        })
    end
}
