return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            window = {
                mappings = {
                    ["P"] = {
                        "toggle_preview",
                        config = {
                            use_float = true,
                            use_image_nvim = true,
                            title = 'Neo-tree Preview',
                        },
                    },
                },
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
        vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { bg = "NONE" })
        vim.keymap.set('n', '\\', ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
    end,
}
