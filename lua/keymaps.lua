vim.g.mapleader = " "
vim.g.maplocalleader = " "


vim.keymap.set('n', '<leader>i', "gg=G``", { desc = 'Indent current file' })
vim.keymap.set('i', 'jk', "<Esc>", { desc = 'Exit insert mode' })


vim.keymap.set('n', '<C-s>', ":w<CR>", { desc = 'Save current file' })
vim.keymap.set('n', '<C-a>', ":wa<CR>", { desc = 'Save all file in buffer' })
vim.keymap.set('n', '<C-e>', ":wqa<CR>", { desc = 'Save all and exist' })
vim.keymap.set('n', '<C-q>', ":q<CR>", { desc = 'Quit' })


vim.keymap.set('n', '<Esc>', ":nohlsearch<CR>", { desc = 'Clear search highlight' })
vim.keymap.set('t', '<A-t>', '<C-\\><C-n>', { desc = 'Exit terminal mode', noremap = true })
vim.keymap.set('n', '<C-t>', '<cmd>term<CR>', { desc = 'Enter terminal' })


vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set("n", "<leader>y", 'gg0vG$"+y', { desc = 'Yank current file to clipboard' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')


vim.keymap.set('n', "<Tab>", ":bnext<CR>", { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ":bprevious<CR>", { desc = 'Previous buffer' })
vim.keymap.set({ 'n', 't', 'v' }, 'bt', "<cmd>bdelete<CR>", { desc = 'Delete buffer' })


vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })
