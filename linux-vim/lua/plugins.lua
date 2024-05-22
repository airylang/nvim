vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- 必要
  use 'tpope/vim-surround'

  -- 文件树
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }

  -- 符号配对
--  use {
--    "windwp/nvim-autopairs",
--    event = "InsertEnter",
--    config = function()
--      require("nvim-autopairs").setup {}
--    end
--  }

  -- coc
  use {'neoclide/coc.nvim', branch = 'release'}


  -- Treesittetr
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- 文件搜索
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = { {'nvim-lua/plenary.nvim'} } }

  -- 缩进线
  use "lukas-reineke/indent-blankline.nvim"

  -- tab 栏
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  -- 在 vim 分割窗口与 tmux 窗口直接流畅跳转
  use 'christoomey/vim-tmux-navigator'

  -- 循环切换主题
  use 'chxuan/change-colorscheme'

  -- 多个主题
  use 'lunarvim/colorschemes'

  -- 主题
  use 'folke/tokyonight.nvim'

  -- 主题
  use({ "catppuccin/nvim", commit="6df82e66a50cfefcc0e8af05bfc3411dc2d7a368" })

  -- 主题
  use 'lifepillar/vim-gruvbox8'

  -- 主题
  use 'sickill/vim-monokai'

  -- 主题
  use { 'sonph/onehalf', rtp = 'vim' }

  -- 主题
  use 'rakr/vim-one'

  -- 主题
  use 'mhartington/oceanic-next'

  -- 主题
  use "navarasu/onedark.nvim"

  -- 主题
  use "lunarvim/darkplus.nvim"

  -- 主题
  use "sainnhe/edge"

  -- 主题
  use 'AlphaTechnolog/onedarker.nvim'
end)
