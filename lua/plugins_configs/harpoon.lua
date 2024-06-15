return {
    "ThePrimeagen/harpoon",
    config = function ()
        require("harpoon").setup({})

        vim.keymap.set('n', '<leader>q', function() require('harpoon.ui').toggle_quick_menu() end, {noremap = true})
        vim.keymap.set('n', '<leader>aq', function() require("harpoon.mark").add_file() end, {noremap = true})

        vim.keymap.set('n', '<leader>1', function() require("harpoon.ui").nav_file(1) end, {noremap = true})
        vim.keymap.set('n', '<leader>2', function() require("harpoon.ui").nav_file(2) end, {noremap = true})
        vim.keymap.set('n', '<leader>3', function() require("harpoon.ui").nav_file(3) end, {noremap = true})
        vim.keymap.set('n', '<leader>4', function() require("harpoon.ui").nav_file(4) end, {noremap = true})
    end
}
