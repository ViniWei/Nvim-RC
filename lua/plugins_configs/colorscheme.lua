return {
  "vague2k/vague.nvim",
  config = function()
    require("vague").setup({
      transparent = true,
      style = {
        comments = "none",
        strings = "none",
      },
    })
    vim.cmd("colorscheme vague")
  end
}
