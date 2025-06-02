return {
    "lambdalisue/suda.vim",
    config = function()
        vim.keymap.set('n', '<leader>w', ':Sudaread<CR>', { desc = "Sudo previlage" })
    end
}
