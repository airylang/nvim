require("telescope").load_extension("yank_history")
local utils = require("yanky.utils")
local mapping = require("yanky.telescope.mapping")
-- local actions = require 'telescope.actions'

require("yanky").setup({
  history_length = 50,
  picker = {
    select = {
      action = nil, -- nil to use default put action
    },
  },
  telescope = {
    mappings = {
      default = mapping.put("p"),
      i = {
        ["<c-p>"] = mapping.put("p"),

        ["<c-x>"] = mapping.delete(),

        -- 上下移动 无效
        -- ["<c-k>"] = actions.move_selection_previous,

        ["<c-r>"] = mapping.set_register(utils.get_default_register()),
      },
      n = {
        p = mapping.put("p"),
        P = mapping.put("P"),
        d = mapping.delete(),
        r = mapping.set_register(utils.get_default_register())
      },
    }
  },
})

-- vim 复制默认会把光标切换到内容开头，解决这个问题
vim.keymap.set({"n","x"}, "y", "<Plug>(YankyYank)")

