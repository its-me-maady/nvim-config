vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', '<leader>i', "gg=G``", { desc = 'Indent current file' })
vim.keymap.set('i', 'jk', "<Esc>", { desc = '' })

vim.keymap.set('n', '<C-s>', ":w<CR>", { desc = 'Save current file' })
vim.keymap.set('n', '<C-a>', ":wa<CR>", { desc = 'Save all file in buffer' })
vim.keymap.set('n', '<C-e>', ":wqa<CR>", { desc = 'Save all and exist' })
vim.keymap.set('n', '<C-w>', ":q<CR>", { desc = 'Quit' })

vim.keymap.set('n', '<C-c>', ":nohlsearch<CR>", { desc = 'Clear search highlight' })

vim.keymap.set('n', "<Tab>", ":bnext<CR>", { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ":bprevious<CR>", { desc = 'Previous buffer' })
