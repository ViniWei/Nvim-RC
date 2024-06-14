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
        "loctvl842/monokai-pro.nvim",
        config = function ()
            require("monokai-pro").setup({
                override = function()
                    return {
                        Normal = { bg = "#0e0e12" }
                    }
                end
            })
            vim.cmd("colorscheme monokai-pro-spectrum")
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
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "mason.nvim" },
        config = function()
            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup()
            mason_lspconfig.setup_handlers({
                function (server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
            vim.api.nvim_set_keymap("n", "<leader>k", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true})
            vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true})
        end
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' }
                },
                mapping = cmp.mapping.preset.insert({
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-d>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior, count = 1 }),
                    ['<C-u>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior, count = 1 })
                }),
            })
        end
    },
    {
        "sar/cmp-lsp.nvim",
        dependencies = { "nvim-lspconfig" },
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require('lspconfig').lua_ls.setup({ capabilities = capabilities })
        end
    },
    {
        "m4xshen/autoclose.nvim",
        config = function()
            require("autoclose").setup()
        end
    },
    {
        'nvim-lua/plenary.nvim'
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function ()
            require('telescope').setup({
                defaults = {
                    file_ignore_patterns = {
                        "node_modules"
                    }
                }
            })

            vim.keymap.set("n", "<C-s>", ":Telescope find_files<enter>")
        end
    },
    {
        "ThePrimeagen/harpoon",
        config = function ()
            vim.keymap.set("n", "<leader>q", ":lua require('harpoon.cmd-ui').toggle_quick_menu()<enter>")
            vim.keymap.set("n", "<leader>aq", ":lua require('harpoon.mark').add_file()<enter>")
        end
    }
}

require("lazy").setup(plugins)
