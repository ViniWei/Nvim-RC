vim.pack.add({
    {
        src = "https://github.com/nickjvandyke/opencode.nvim",
        version = vim.version.range('*')
    }
})

vim.keymap.set("n", "<leader>ot", function() require("opencode").toggle() end, { desc = "Toggle opencode" })
vim.keymap.set({ "n", "x" }, "<leader>oa", function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode…" })
vim.keymap.set({ "n", "x" }, "<leader>od", function() require("opencode").select() end, { desc = "Execute opencode action…" })
vim.keymap.set("x", "<leader>os", function() return require("opencode").operator("@this ") end, { desc = "Add range to opencode", expr = true })
