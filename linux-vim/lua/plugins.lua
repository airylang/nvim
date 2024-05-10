vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  use 'tpope/vim-surround'

  use 'folke/tokyonight.nvim'

  use 'sickill/vim-monokai'

  use "lunarvim/darkplus.nvim"
end)
