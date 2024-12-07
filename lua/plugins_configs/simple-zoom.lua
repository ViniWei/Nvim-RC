return {
    "https://github.com/fasterius/simple-zoom.nvim",
    config = function ()
        vim.keymap.set('n', '<C-w>f', require('simple-zoom').toggle_zoom, { noremap = true })
    end
}
