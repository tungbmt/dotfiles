require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'kyazdani42/nvim-web-devicons'
  --use 'embark-theme/vim'
  use 'sainnhe/everforest'
  use 'sainnhe/gruvbox-material'
  use 'hoob3rt/lualine.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'windwp/nvim-autopairs'
  use 'tpope/vim-surround'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)
