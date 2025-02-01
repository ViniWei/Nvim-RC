local function lua_ls_setup()
    require("lspconfig").lua_ls.setup {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" }
                }
            }
        }
    }
end

return {
    {
        dependencies = { "williamboman/mason.nvim", "saghen/blink.cmp" },
        "williamboman/mason-lspconfig.nvim",
        config = function()
            local mason_lspconfig = require("mason-lspconfig")
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            mason_lspconfig.setup({
                ensure_installed = { "lua_ls", "jsonls", "ts_ls" }
            })

            mason_lspconfig.setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({ capabilities = capabilities })
                end,
                ["lua_ls"] = function()
                   lua_ls_setup()
                end
            })
        end
    },
    {
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        "neovim/nvim-lspconfig",
    }
}
