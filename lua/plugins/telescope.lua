local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sa', builtin.find_files, {})
vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
