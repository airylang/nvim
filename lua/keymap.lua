vim.g.mapleader = ' '
local keyset = vim.keymap.set

-- 按住 ctrl 上下跳转多行
keyset('', '<C-j>', '5j')
keyset('', '<C-k>', '5k')

-- 取消搜索
-- keyset('n', '<leader><CR>', ':nohls<CR>')
keyset('', '<Esc>', '<Esc>:nohls<CR>')

-- ctrl + h l 跳转行首行尾
keyset('', '<C-l>', '$')
keyset('', '<C-h>', '0^')

-- 自动缩进, 不用了
-- keyset('n', '<C-=>', '==')

-- c-l 占用，重新一个快捷键来清屏
-- keyset('', '<C-\\>', '<c-l>')

-- n 模式下 tab, shift+tab 轮换buffer
keyset('n', '<tab>', ':bnext<CR>')
keyset('n', '<S-tab>', ':bprevious<CR>')

-- v 模式下 按下 tab 为缩进效果
-- keyset('v', '<TAB>', '>')
-- keyset('v', '<S-TAB>', '<')

-- 通模式 移动分隔窗口
keyset('n', '<M-h>', '<C-w>h')
keyset('n', '<M-j>', '<C-w>j')
keyset('n', '<M-k>', '<C-w>k')
keyset('n', '<M-l>', '<C-w>l')

-- 打开 分割窗口
keyset('n', '<leader>s', ':vsp<CR>')

-- 关闭分割窗口
keyset('n', '<leader>qh', '<C-w>h:q<CR>')
keyset('n', '<leader>qj', '<C-w>j:q<CR>')
keyset('n', '<leader>qk', '<C-w>k:q<CR>')
keyset('n', '<leader>ql', '<C-w>l:q<CR>')
keyset('n', '<leader>qo', ':only<CR>')
keyset('n', 'qq', ':q<CR>')

-- 关闭除当前缓冲区以外的 buffer
keyset('n', '<leader>qa', ':Bdelete other<CR>')
-- 关闭所有未显示在窗口的 buffer
keyset('n', '<leader>qh', ':Bdelete hidden<CR>')

-- 移动分割窗口
keyset('n', '<up>', '<C-w>K')
keyset('n', '<down>', '<C-w>J')
keyset('n', '<left>', '<C-w>H')
keyset('n', '<right>', '<C-w>L')


-- 输入, 命令模式下，按下 alt + hjkl 为光标移动
keyset({'i','c'}, '<M-h>', '<left>')
keyset({'i','c'}, '<M-j>', '<down>')
keyset({'i','c'}, '<M-k>', '<up>')
keyset({'i','c'}, '<M-l>', '<right>')

-- 窗口大小扩展
keyset('n', '+', ':res +5<CR>')
keyset('n', '_', ':res -5<CR>')
keyset('n', '-', ':vertical res -5<CR>')
keyset('n', '=', ':vertical res +5<CR>')

-- 保存, 退出
keyset('n', '<C-s>', ':w<CR>')
-- keyset('n', '<leader>s', ':w<CR>')
keyset('n', '<leader>qq', ':q<CR>')
keyset('n', 'Q', ':bnext | bdelete #<CR>')

-- 自定义查找下一处待输入
-- keyset('i', '<C-n>','<Esc>/<+-+><CR>:nohlsearch<CR>c5l', {})
-- keyset('n', '<C-n>','<Esc>/<+-+><CR>:nohlsearch<CR>c5l', {})
-- map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4i

-- 查看旧版 vimrc 配置
-- keyset('n', '<leader>v', ':vsp /root/.config/nvim/init.vim.bak<CR>')

-- 在下方插入一个空行
-- keyset('n', 'co', 'o<Esc>')

-- html 属性独立为一行
keyset('n', '<leader>i', 'f i<CR><Esc>')

-- 使当前配置文件立即生效
keyset('n', '<leader>so', ':w <CR>:source %<CR>') -- 等价与下面一行, 但最终命令行会显示 source %
-- keyset('n', '<leader>so', ':w | source %<CR>') -- 最终命令行会显示 :w 结果

-- 在 v 模式下复制当前选中内容至下面
-- keyset('v', '<leader>yy', 'ygvo<Esc>p')
-- keyset('v', '<leader>yY', 'ygv<Esc>o<Esc>p')

-- n 模式下复制并粘贴该行
keyset('n', '<leader>yy', 'Vygv<Esc>p') -- 无空行
keyset('n', '<leader>yY', 'Vygv<Esc>o<Esc>p') -- 间隔一个空行

---------------------- 以下为插件相关 map
-- 切换 nvim tree
keyset('n', '<leader>tt', ':NvimTreeToggle ./ <CR>')
keyset('n', '<leader>to', ':NvimTreeClose | NvimTreeOpen ')
-- keyset('n', '<leader>h', ':NvimTreeFindFile!<CR>')

-- 等价于 按两次ctrl, 以及 ctrl + c
keyset('n', '<C-c>', ':NvimTreeFindFile!<CR>')

-- 文件/代码/项目搜索 telescope
local builtin = require('telescope.builtin')
keyset('n', '<leader>ff', builtin.find_files, {})  -- ff: find files
keyset('n', '<leader>fg', builtin.live_grep, {})  -- fg: find grep
keyset('n', '<leader>fb', builtin.buffers, {}) -- fb: find buffer
keyset('n', '<leader>fh', builtin.oldfiles, {}) -- fh: find history
keyset('n', '<leader>fs', builtin.grep_string, {}) -- fs: find str
keyset('n', '<leader>fc', builtin.current_buffer_fuzzy_find, {}) -- fc: find current_buffer
keyset('n', '<leader>fl', builtin.resume, {}) -- fl: find last
keyset('n', '<leader>fr', builtin.registers, {}) -- fr: find registers
keyset('n', '<leader>fm', builtin.marks, {}) -- fm: find marks
-- telescope 打开 项目列表
vim.api.nvim_set_keymap('n', '<leader>fp', ":lua require'telescope'.extensions.project.project{}<CR>", {})

-- telescope 打开剪切板历史
vim.api.nvim_set_keymap('n', '<leader>fy', ":Telescope yank_history<CR>", {})
-- vim.api.nvim_set_keymap('n', '<leader>fy', " :lua require('telescope').extensions.yank_history.yank_history()<CR>", {})

-- hop 跳转字符、单词、行
keyset("n", "<leader><leader>",':HopWord<CR>' , {})
keyset("n", "<leader>c",':HopChar1<CR>' , {})
keyset("n", "<leader>n",':HopLine<CR>' , {})

-- 快速切换主题
keyset("n", "<M-[>",':PreviousColorScheme<CR>' , {})
keyset("n", "<M-]>",':NextColorScheme<CR>' , {})

-- 翻译
keyset('n', '<leader>tw', '<Plug>TranslateW', {})
keyset('v', '<leader>tw', '<Plug>TranslateWV', {})

-- 在多个 vim 实例同步剪切板历史, yankl 插件
keyset('n', '<leader>yw', ':wshada<CR>') -- 保存
keyset('n', '<leader>ys', ':rshada<CR>') -- 同步

-- session 操作
keyset('n', '<leader>ss', ':SessionManager load_session<CR>')
keyset('n', '<leader>sw', ':SessionManager save_current_session<CR>')
keyset('n', '<leader>sd', ':SessionManager delete_session<CR>')
keyset('n', '<leader>sc', ':SessionManager load_current_dir_session<CR>')
