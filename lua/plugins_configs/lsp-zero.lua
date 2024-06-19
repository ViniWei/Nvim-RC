return {
    {
        dependencies = { "williamboman/mason.nvim" },
        "williamboman/mason-lspconfig.nvim"
    },
    {"neovim/nvim-lspconfig"},
    {
        "hrsh7th/cmp-nvim-lsp",
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' }
                },
                mapping = cmp.mapping.preset.insert({
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-d>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior, count = 1 }),
                    ['<C-u>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior, count = 1 })
                }),
            })
        end
    },
    {"hrsh7th/nvim-cmp"},
    {"L3MON4D3/LuaSnip"},

    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function ()
            local lsp_zero = require("lsp-zero")

            -- LSP keybinds -- 
            lsp_zero.on_attach(function(client, bufnr)
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { noremap = true, silent = true })
                vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end, { noremap = true })
                vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, { noremap = true })
                vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { noremap = true })
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, { noremap = true })
            end)
            --

            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tsserver" },
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup({})
                    end,
                },
            })

        end
    },
}
