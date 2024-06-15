return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules"
                },
                mappings = {
                    i = {
                        ["<C-d>"] = "move_selection_next",
                        ["<C-u>"] = "move_selection_previous",
                    }
                }
            }
        })

        vim.keymap.set("n", "<C-s>", ":Telescope find_files<enter>")
    end
}
