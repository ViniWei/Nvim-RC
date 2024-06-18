local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings -- 
    vim.keymap.set('n', '<C-e>', "<C-w>h", opts('Change focus to file'))

    vim.keymap.set('n', '<space>', function () api.node.open.preview() end, opts('Open file'))

    vim.keymap.set('n', '<enter>', function ()
       api.node.open.preview()
       api.tree.close()
    end, opts('Open file and close tree'))
end

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            git = {
                ignore = false
            },
            view = {
                side = "right",
            },
            update_focused_file = {
                enable = true
            },
            on_attach = my_on_attach,
        })

        -- Keymaps-- 
        local api = require("nvim-tree.api")
        vim.keymap.set("n", "<C-e>", function()
                api.tree.open()
        end, { noremap = true });
    end
}
