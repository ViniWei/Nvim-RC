return {
  -- {
  --   "vague2k/vague.nvim",
  --   config = function()
  --     require("vague").setup({
  --       transparent = true,
  --       style = {
  --         comments = "none",
  --         strings = "none",
  --       },
  --     })
  --     vim.cmd("colorscheme vague")
  --   end
  -- },
  {
    "rebelot/kanagawa.nvim",
    config = function ()
      require('kanagawa').setup({
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none"
              }
            }
          }
        }
      })
      vim.cmd("colorscheme kanagawa")
    end
  }
}
