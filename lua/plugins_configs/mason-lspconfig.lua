return {
    "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        config = function()
            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup({
                ensure_installed = { "lua_ls" }
            })

            mason_lspconfig.setup_handlers({
                function (server_name)
                    require("lspconfig")[server_name].setup({})
                end,
                ["lua_ls"] = function ()
                    require('lspconfig').lua_ls.setup({
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = {'vim'},
                                },
                            },
                        },
                    })
                end
            })
    end
}
