local actions = require 'telescope.actions'

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        -- 历史输入
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        -- 上下移动
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        -- 以分割窗口形式打开
        -- ["<C-h>"] = actions.file_split,
        ["<C-e>"] = actions.file_vsplit,

        -- ["<C-e>"] = actions.select_horizontal,

        -- 打开为新 tab
        ["<C-t>"] = actions.select_tab,

        -- 预览内容滚动
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
      },
    }
  },
  -- extensions = {
  --   project = {
  --     base_dirs = {
  --       '/xlg'
  --       -- {'~/dev/src3', max_depth = 4},
  --       -- {path = '~/dev/src5', max_depth = 2},
  --     },
  --     hidden_files = true, -- default: false
  --     theme = "dropdown",
  --     order_by = "asc",
  --     search_by = "title",
  --     sync_with_nvim_tree = true, -- default false
  --   }
  -- }
}

-- require'telescope'.load_extension('project')

-- $ sudo yum install ripgrep
-- $ npm install -g fd-find

-- telescope.load_extension("frecency")
-- telescope.load_extension('fzf')
-- jtelescope.load_extension("ui-select")
-- telescope.load_extension('dap')
-- telescope.load_extension('vim_bookmarks')
-- telescope.load_extension("live_grep_args")

