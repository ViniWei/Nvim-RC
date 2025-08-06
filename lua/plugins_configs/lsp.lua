local function lua_ls_setup()
    vim.lsp.config("lua_ls", {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" }
                }
            }
        }
    })
end

local function ts_ls_setup()
    vim.lsp.config("ts_ls", {
        filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" },
        init_options = {
            plugins = {
                {
                    name = '@vue/typescript-plugin',
                    location = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules/@vue/language-server',
                    languages = { 'vue' },
                },
            },
        },
    })
end

return {
    {
        "neovim/nvim-lspconfig",
        config = function ()
           lua_ls_setup()
           ts_ls_setup()

           vim.lsp.enable({ "ts_ls", "jsonls", "pylsp", "lua_ls", "vue_ls" })
        end
    }
}
