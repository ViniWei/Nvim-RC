return {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        local telescope = require('telescope')
        telescope.setup({
            defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                entry_prefix = " ",
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                    },
                    width = 0.90,
                    height = 0.80,
                },
            }
        })

        vim.keymap.set("n", "<leader>sf", ":Telescope find_files<enter>")
        vim.keymap.set("n", "<leader>sb", ":Telescope git_branches<enter>")
        vim.keymap.set("n", "<leader>st", ":Telescope live_grep<enter>")
        vim.keymap.set("n", "<leader>sh", ":Telescope help_tags<enter>")
        vim.keymap.set("n", "<leader>sc", ":Telescope commands<enter>")
        vim.keymap.set("n", "<leader>sB", ":Telescope buffers<enter>")
    end
}
