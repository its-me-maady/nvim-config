return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "View docs over a word" })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Goto definition" })
            vim.keymap.set({ 'v', 'n' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code actions" })
        end
    }

}
