return {
    "lambdalisue/suda.vim",
    config = function()
        vim.keymap.set('n', '<leader>w', ':SudaRead<CR>', { desc = "Sudo previlage" })
    end
}
