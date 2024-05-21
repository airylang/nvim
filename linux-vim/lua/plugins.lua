vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-surround'

  -- 在 vim 分割窗口与 tmux 窗口直接流畅跳转
  use 'christoomey/vim-tmux-navigator'

  -- 文件树
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }


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
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  -- 主题
  use 'folke/tokyonight.nvim'

  use 'sickill/vim-monokai'

  use "lunarvim/darkplus.nvim"
end)
