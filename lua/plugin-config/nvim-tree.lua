-- nvim tree 配置
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

require("nvim-tree").setup({
  -- nvim 编辑对象为路面时，显示 tree
  view = {
    width = 30,
    signcolumn = "yes",
    mappings = {
    list = {
        { key = "u", action = "dir_up" },
        { key = "s", action = "vsplit" },
        { key = "h", action = "split" },
        { key = "-", action = "" },
        { key = "<C-k>", action = "" },
        { key = "<C-g>", action = "toggle_file_info" },
        { key = "<C-p>", action = "parent_node" },
        -- 交换 p 和 P 避免出现失误
        { key = "p", action = "parent_node" },
        { key = "P", action = "paste" },
      },
    },
  },
  renderer = {
    group_empty = true,
    icons = {
      webdev_colors = true,
    },
  },
  filters = {
    -- dotfiles = true,
  },
})

-- 启动vim 打开 tree
-- local function open_nvim_tree()
--   require("nvim-tree.api").tree.open()
-- end

-- 启动参数为目录时才打开 tree
local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1
  if not directory then
    return
  end
  -- change to the directory
  vim.cmd.cd(data.file)
  -- open the tree
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

