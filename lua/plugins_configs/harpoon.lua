return {
    "ThePrimeagen/harpoon",
    config = function ()
        require("harpoon").setup({})

        vim.keymap.set('n', '<leader>jo', function() require('harpoon.ui').toggle_quick_menu() end, {noremap = true})
        vim.keymap.set('n', '<leader>ji', function() require("harpoon.mark").add_file() end, {noremap = true})

        vim.keymap.set('n', '<leader>ja', function() require("harpoon.ui").nav_file(1) end, {noremap = true})
        vim.keymap.set('n', '<leader>js', function() require("harpoon.ui").nav_file(2) end, {noremap = true})
        vim.keymap.set('n', '<leader>jd', function() require("harpoon.ui").nav_file(3) end, {noremap = true})
        vim.keymap.set('n', '<leader>jf', function() require("harpoon.ui").nav_file(4) end, {noremap = true})
        vim.keymap.set('n', '<leader>jg', function() require("harpoon.ui").nav_file(5) end, {noremap = true})
    end
}
