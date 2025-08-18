return {
    "lewis6991/gitsigns.nvim",
    config = function ()
        local gitsigns = require("gitsigns")
        gitsigns.setup({
            diff_opts = {
                internal = false
            },
            current_line_blame_opts = {
                delay = 0,
            },
        })

        vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, { silent = true })
        vim.keymap.set('n', '<leader>gt', gitsigns.toggle_current_line_blame)
    end
}
