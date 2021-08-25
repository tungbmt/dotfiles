require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  --use 'sainnhe/everforest'
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'
  use 'neovim/nvim-lspconfig'
  use 'folke/lsp-colors.nvim'
  use 'glepnir/lspsaga.nvim'
  use 'nvim-lua/completion-nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-web-devicons'
  use 'hoob3rt/lualine.nvim'
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
end)
