return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function ()
    require("oil").setup()
    vim.keymap.set("n", "<C-e>", function () vim.cmd("Oil") end)
  end
}
