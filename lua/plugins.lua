local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        "greflm13/monokai_vibrant",
        config = function()
             vim.cmd.colorscheme("monokai_vibrant")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function() 
           require("nvim-treesitter.configs").setup({
                ensure_installed = {"c", "lua", "vim", "vimdoc", "query" },

                auto_install = true,

                highlight = {
                    enable = true
                }
           })
        end
    }
}

require("lazy").setup(plugins)
