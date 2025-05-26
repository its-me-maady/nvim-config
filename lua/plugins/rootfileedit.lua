return {
    "lambdalisue/suda.vim",
    config = function()
        vim.keymap.set('n', '<leader>w', ':Sudawrite', { desc = "Sudo write" })
    end
}
