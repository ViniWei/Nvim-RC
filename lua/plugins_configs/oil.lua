return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function ()
     require("oil").setup({
         use_default_keymaps = false,
         keymaps = {
             ["s"] = "actions.select",
             ["<C-s>"] = false
         },
     })
     vim.keymap.set("n", "<C-e>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end
}
