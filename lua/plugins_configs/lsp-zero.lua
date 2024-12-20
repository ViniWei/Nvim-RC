local function keymaps_lsp(lsp_zero)
    lsp_zero.on_attach(function(client, bufnr)
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end, { noremap = true })
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, { noremap = true })
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { noremap = true })
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, { noremap = true })

        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, { noremap = true })
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, { noremap = true })
    end)
end

local function mason_lspconfiguration(mason_lspconfig)
    mason_lspconfig.setup({
        ensure_installed = { "lua_ls", "ts_ls", "volar", "cssls" },
        handlers = {
            function(server_name)
                require("lspconfig")[server_name].setup({})
            end,
            ["lua_ls"] = function ()
                local lspconfig = require("lspconfig")
                lspconfig.lua_ls.setup {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" }
                            }
                        }
                    }
                }
            end,
            ts_ls = function()
                local vue_typescript_plugin = require('mason-registry')
                .get_package('vue-language-server')
                :get_install_path()
                .. '/node_modules/@vue/language-server'
                .. '/node_modules/@vue/typescript-plugin'

                require('lspconfig').ts_ls.setup({
                    init_options = {
                        plugins = {
                            {
                                name = "@vue/typescript-plugin",
                                location = vue_typescript_plugin,
                                languages = {'javascript', 'typescript', 'vue'}
                            },
                        }
                    },
                    filetypes = {
                        'javascript',
                        'javascriptreact',
                        'javascript.jsx',
                        'typescript',
                        'typescriptreact',
                        'typescript.tsx',
                        'vue',
                    },
                })

            end,
        },
    })
end

return {
    {
        dependencies = { "williamboman/mason.nvim" },
        "williamboman/mason-lspconfig.nvim"
    },
    {
        "neovim/nvim-lspconfig"
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' }
                },
                -- Keymaps cmp --
                mapping = cmp.mapping.preset.insert({
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                --
                performance = {
                    max_view_entries = 12
                }
            })
        end
    },
    {
        "hrsh7th/nvim-cmp"
    },
    {
        "L3MON4D3/LuaSnip"
    },
    {
        "j-hui/fidget.nvim",
        config = function ()
            require("fidget").setup()
        end
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function ()
            local lsp_zero = require("lsp-zero")
            local mason_lspconfig = require("mason-lspconfig")

            lsp_zero.extend_lspconfig()

            keymaps_lsp(lsp_zero)
            mason_lspconfiguration(mason_lspconfig)
        end
    },
}
