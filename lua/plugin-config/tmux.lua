-- 重新定义 tmux 跳转映射按键
vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set('n', '<M-h>', ':<C-U>TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<M-j>', ':<C-U>TmuxNavigateDown<CR>')
vim.keymap.set('n', '<M-k>', ':<C-U>TmuxNavigateUp<CR>')
vim.keymap.set('n', '<M-l>', ':<C-U>TmuxNavigateRight<CR>')

-- 从 vim 切换到 tmux 窗口时保存 buffer
vim.g.tmux_navigator_save_on_switch = 2

-- Disable tmux navigator when zooming the Vim pane
-- 全屏方式工作室，跳转vim窗口时即使到达边缘也不跳出 vim
vim.g.tmux_navigator_disable_when_zoomed = 1

-- If the tmux window is zoomed, keep it zoomed when moving from Vim to another pane
-- vim.g.tmux_navigator_preserve_zoom = 1
