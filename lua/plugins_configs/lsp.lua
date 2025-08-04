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

return {
    {
        "neovim/nvim-lspconfig",
        config = function ()
           lua_ls_setup()
           vim.lsp.enable({ "ts_ls", "jsonls", "pylsp", "lua_ls" })
        end
    }
}
