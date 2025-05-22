require("nvim-tree").setup {
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
      }
    }
  },
  update_focused_file = {
    enable = true,
    update_root = true,  -- this is crucial to update nvim-tree's root
  }
}

-- Custom command to set directory and open nvim-tree
vim.api.nvim_create_user_command("EDot", function()
  vim.cmd("lcd %:p:h")
  require("nvim-tree.api").tree.find_file({ open = true, focus = true })  -- Focus current file
  require("nvim-tree.api").tree.open()
end, {})

-- Keymaps
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>\\', ':EDot<CR>', { noremap = true, silent = true })

