return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local telescope = require('telescope')
        telescope.setup({
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

        vim.keymap.set("n", "<C-b>", ":Telescope git_branches<enter>")
        vim.keymap.set("n", "<leader>st", ":Telescope live_grep<enter>")
    end
}
