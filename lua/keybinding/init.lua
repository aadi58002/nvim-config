vim.g.mapleader = " "

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader> ', builtin.find_files, {})
vim.keymap.set('n', '<leader>bb', builtin.live_grep, {})
