return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

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

        vim.keymap.set("n", "<leader>sf", builtin.find_files)
        vim.keymap.set("n", "<leader>st", builtin.live_grep)
        vim.keymap.set("n", "<leader>sh", builtin.help_tags)
        vim.keymap.set("n", "<leader>sc", builtin.commands)
        vim.keymap.set("n", "<leader>sB", builtin.buffers)
        vim.keymap.set("n", "<leader>sb", builtin.git_branches)
        vim.keymap.set("n", "<leader>ss", builtin.git_status)
    end
}
