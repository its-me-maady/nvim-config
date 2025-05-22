require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "python", "javascript", "html", "css", "bash" },
  highlight = {
    enable = true,
  },
}

-- The correct command to trigger Treesitter update
vim.cmd [[autocmd BufWritePost * TSUpdate]]
