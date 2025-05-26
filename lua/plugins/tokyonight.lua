return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
    },
    config = function()
        vim.cmd [[colorscheme tokyonight-storm]]
        vim.api.nvim_set_hl(0, "LineNr", { fg = "#7aa2f7", bold = true })
        vim.cmd [[
        highlight Normal guibg=NONE ctermbg=NONE
        highlight NormalNC guibg=NONE ctermbg=NONE
        highlight EndOfBuffer guibg=NONE ctermbg=NONE
        ]]
    end
}
