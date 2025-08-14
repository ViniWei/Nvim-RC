local lua_ls_config = {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
}

local ts_ls_config = {
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
}


return {
    {
        "neovim/nvim-lspconfig",
        config = function ()
           vim.lsp.config("lua_ls", lua_ls_config)
           vim.lsp.config("ts_ls", ts_ls_config)

           vim.lsp.enable({ "ts_ls", "jsonls", "pylsp", "lua_ls", "vue_ls" })
        end
    }
}
