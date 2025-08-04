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

            mason_lspconfig.setup({
                ensure_installed = { "lua_ls", "jsonls", "ts_ls" },
                automatic_enable = {
                    exclude = {
                        "lua_ls"
                    };
                },
            })
        end
    },
    {
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        "neovim/nvim-lspconfig",
        config = function ()
           lua_ls_setup()
        end
    }
}
