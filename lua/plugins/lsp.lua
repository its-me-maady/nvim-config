return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    event = 'BufReadPre',
    dependencies = {
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },
        {
            "j-hui/fidget.nvim",
            opts = {}
        },
        {
            'folke/lazydev.nvim',
            ft = 'lua',
            opts = {
                library = {
                    { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
                },
            },
        },

        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'L3MON4D3/LuaSnip' },
        {
            'saghen/blink.cmp',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
    },

    config = function()
        local lsp_zero = require('lsp-zero')
        require('mason').setup({})
        require('mason-lspconfig').setup({
            automatic_installation = true,
            ensure_installed = { "lua_ls", },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        })

        local cmp = require('cmp')

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = {
                { name = 'nvim_lsp' },
                { name = 'buffer' },
                { name = 'path' },
                { name = 'luasnip' },
            },
        })

        local format_augroup = vim.api.nvim_create_augroup("LspFormat", { clear = true })

        lsp_zero.on_attach(function(client, bufnr)
            if client.supports_method("textDocument/formatting") then
                vim.api.nvim_clear_autocmds({ group = format_augroup, buffer = bufnr })
                vim.api.nvim_create_autocmd("BufWritePre", {
                    group = format_augroup,
                    buffer = bufnr,
                    callback = function()
                        vim.lsp.buf.format({ async = true })
                    end,
                })
            end

            vim.keymap.set('n', '<F9>', function()
                vim.lsp.buf.format()
                print('Formated')
            end, { desc = "Format file" })
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "View docs over a word" })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Goto definition" })
            vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
            vim.keymap.set({ 'v', 'n' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code actions" })
        end)
        lsp_zero.setup()
    end
}
