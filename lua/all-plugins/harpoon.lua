return {
    "ThePrimeagen/harpoon",
    config = function ()
        vim.keymap.set("n", "<leader>q", ":lua require('harpoon.cmd-ui').toggle_quick_menu()<enter>")
        vim.keymap.set("n", "<leader>aq", ":lua require('harpoon.mark').add_file()<enter>")
    end
}
