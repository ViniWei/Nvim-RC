return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    config = function ()
        require("luasnip.loaders.from_snipmate").load()
        local ls = require("luasnip")

        vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
    end
}
