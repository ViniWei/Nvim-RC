return {
    "lewis6991/gitsigns.nvim",
    config = function ()
       require("gitsigns").setup({
           diff_opts = {
               internal = false
           }
       })
    end
}
