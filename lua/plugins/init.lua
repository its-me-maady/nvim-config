vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- File tree
  use {
    'nvim-tree/nvim-tree.lua',
    config = function() require('plugins.tree') end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('plugins.telescope') end
  }

  -- Harpoon
  use {
    'ThePrimeagen/harpoon',
    config = function() require('plugins.harpoon') end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function() require('plugins.treesitter') end
  }
end)
