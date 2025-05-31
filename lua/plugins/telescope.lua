return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
        { 'nvim-telescope/telescope-ui-select.nvim' },
        {
            'nvim-tree/nvim-web-devicons',
            enabled = vim.g.have_nerd_font
        },
        {
            "j-hui/fidget.nvim",
            opts = {
                notification = {
                    window = {
                        normal_hl = "FidgetWindow",
                        winblend = 0,
                    }
                }
            }
        },
    },

    config = function()
        pcall(require('telescope').load_extension, 'fzf')
        pcall(require("telescope").load_extension("fidget"))
        pcall(require('telescope').load_extension, 'ui-select')
        local builtin = require('telescope.builtin')
        function SearchDotfiles()
            builtin.find_files({
                prompt_title = "< Dotfiles >",
                cwd = vim.fn.expand("/"),
                hidden = true,
            })
        end

        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]earch [K]eymaps' })
        vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]earch [D]iagnostics' })
        vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]earch current [W]ord' })
        vim.keymap.set('n', '<leader>fs', builtin.builtin, { desc = '[F]earch [S]elect Telescope' })
        vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find,
            { desc = '[/] Fuzzily search in current buffer' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fc', function()
            builtin.find_files({ cwd = vim.fn.getcwd() })
        end, { desc = 'Telescope find files in current directory' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fr', ':Telescope oldfiles<CR>', { desc = 'Telescope recent files' })

        vim.keymap.set('n', '<leader>f/', function()
            builtin.live_grep {
                grep_open_files = true,
                prompt_title = 'Live Grep in Open Files',
            }
        end, { desc = '[F]earch [/] in Open Files' })

        vim.keymap.set('n', '<leader>fn', function()
            builtin.find_files { cwd = vim.fn.stdpath 'config' }
        end, { desc = '[F]earch [N]eovim files' })
        vim.keymap.set('n', '<leader>fd', SearchDotfiles, { desc = "Find Dotfiles" })
    end,

}
