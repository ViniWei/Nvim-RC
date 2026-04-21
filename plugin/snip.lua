vim.pack.add({"https://github.com/L3MON4D3/LuaSnip"})

require("luasnip.loaders.from_snipmate").load()
local ls = require("luasnip")

ls.config.set_config({
    updateevents = "TextChanged,TextChangedI"
})

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
