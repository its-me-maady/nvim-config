vim.g.mapleader = " "

-- Fast saving
vim.keymap.set('n', '<leader>s', ':w<CR>')
vim.keymap.set('n', '<leader>w', ':q<CR>')

-- Escape insert mode fast
vim.keymap.set('i', 'jk', '<Esc>')
