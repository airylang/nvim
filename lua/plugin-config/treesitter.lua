require'nvim-treesitter.configs'.setup {
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = {
    "html", "scss", "css", "vim",
    "lua", "javascript", "typescript", "tsx", "vue",
    "jsdoc", 'markdown', 'markdown_inline', 'java',
    'ini',
  },
  -- 启用代码高亮功能
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  -- 启用增量选择
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      -- scope_incremental = '<TAB>',
    }
  },
  -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
  indent = {
    enable = true
  },

  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        -- You can also use captures from other query groups like `locals.scm`
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
      },
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V', -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      include_surrounding_whitespace = false,
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leader>A'] = '@parameter.inner',
      }
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        -- 跳转下一个函数
        [']f'] = '@function.outer',
        ["]o"] = "@loop.*",

        -- 跳转下一个范围 如 function 以及 { } 的开始
        ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },

        -- 跳转至下一个可折叠的地方
        ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
      },
      goto_next_end = {
        [']F'] = '@function.outer',
      },
      goto_previous_start = {
        ['[f'] = '@function.outer',
      },
      goto_previous_end = {
        ['[F'] = '@function.outer'
      },

      -- 跳转下一个 if
      goto_next = {
        [']i'] = '@conditional.outer',
      },
      goto_previous = {
        ['[i'] = '@conditional.outer',
      }
    }
  },
  tree_docs = {
    enable = true,
  },
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    -- disable = { "c", "ruby" },  -- optional, list of language that will be disabled
  },
}

-- 开启 Folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- 解析 wxml 好像没效果
local ft_to_parser = require"nvim-treesitter.parsers".filetype_to_parsername
-- ft_to_parser.wxml = "vue"

local ts_repeat_move = require "nvim-treesitter.textobjects.repeatable_move"
-- Repeat movement with ; and ,
vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)

-- Optionally, make builtin f, F, t, T also repeatable with ; and ,
vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T)

-- 使跳转 git 修改处时也可以使用 ; ,
local gs = require("gitsigns")
local next_hunk_repeat, prev_hunk_repeat = ts_repeat_move.make_repeatable_move_pair(gs.next_hunk, gs.prev_hunk)
vim.keymap.set({ "n", "x", "o" }, "]c", next_hunk_repeat)
vim.keymap.set({ "n", "x", "o" }, "[c", prev_hunk_repeat)
