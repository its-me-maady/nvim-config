vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.keymap.set('n', '<leader>i', 'gg=G``', { desc = 'Indent current file', noremap = true, silent = true })
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode', noremap = true, silent = true })


vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save current file', noremap = true, silent = true })
vim.keymap.set('n', '<C-a>', ':wa<CR>', { desc = 'Save all file in buffer', noremap = true, silent = true })
vim.keymap.set('n', '<C-e>', ':wqa<CR>', { desc = 'Save all and exist', noremap = true, silent = true })
vim.keymap.set('n', '<C-q>', ':q<CR>', { desc = 'Quit', noremap = true, silent = true })


vim.keymap.set('n', '<leader>l', ':nohlsearch<CR>', { desc = 'Clear search highlight', noremap = true, silent = true })
vim.keymap.set('t', '<A-t>', '<C-\\><C-n>', { desc = 'Exit terminal mode', noremap = true, silent = true })
vim.keymap.set('n', '<C-t>', '<cmd>term<CR>', { desc = 'Enter terminal', noremap = true, silent = true })


vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window', noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window', noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window', noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window', noremap = true, silent = true })

vim.keymap.set('n', '<leader>y', 'gg0vG$"+y', { desc = 'Yank current file to clipboard', noremap = true, silent = true })
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Yank Selection to clipboard', noremap = true, silent = true })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')


vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer', noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer', noremap = true, silent = true })
vim.keymap.set({ 'n', 't', 'v' }, 'bt', '<cmd>bdelete<CR>', { desc = 'Delete buffer', noremap = true, silent = true })

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down', noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up', noremap = true, silent = true })


vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up', noremap = true, silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down', noremap = true, silent = true })
