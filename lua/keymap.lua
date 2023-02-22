vim.g.mapleader = ' '
local keyset = vim.keymap.set

-- 按住 ctrl 上下跳转多行
keyset('', '<C-j>', '5j')
keyset('', '<C-k>', '5k')

-- 取消搜索
keyset('n', '<leader><CR>', ':nohls<CR>')

-- ctrl + h l 跳转行首行尾
keyset('', '<C-l>', '$')
keyset('', '<C-h>', '0^')

-- c-l 占用，重新一个快捷键来清屏
keyset('', '<C-\\>', '<c-l>')

-- n 模式下 tab, shift+tab 轮换buffer
keyset('n', '<tab>', ':bnext<CR>')
keyset('n', '<S-tab>', ':bprevious<CR>')

-- v 模式下 按下 tab 为缩进效果
keyset('v', '<TAB>', '>')
keyset('v', '<S-TAB>', '<')

-- 通模式 移动分隔窗口
keyset('n', '<M-h>', '<C-w>h')
keyset('n', '<M-j>', '<C-w>j')
keyset('n', '<M-k>', '<C-w>k')
keyset('n', '<M-l>', '<C-w>l')

-- 打开 分割窗口
keyset('n', 'S', ':vsp<CR>')

-- 关闭分割窗口
keyset('n', '<leader>qh', '<C-w>h:q<CR>')
keyset('n', '<leader>qj', '<C-w>j:q<CR>')
keyset('n', '<leader>qk', '<C-w>k:q<CR>')
keyset('n', '<leader>ql', '<C-w>l:q<CR>')
keyset('n', '<leader>qo', ':only<CR>')
keyset('n', '<leader>q', ':q<CR>')
-- 关闭除当前缓冲区以外的 buffer
-- keyset('n', '<leader>qa', ":w | 1,99bd | e# | bd# <CR><CR>", { noremap = true, silent = true })
-- keyset('n', '<leader>qa', ":w | %bd<CR><C-O>:bd#<CR>", { noremap = true, silent = true })
-- keyset('n', '<leader>qa', ":w <bar> 1,99 bd <bar> e# <bar> bd# <CR>", { silent = true })
-- keyset('n', '<leader>qa', ":%bd|e#|bd#<cr>|'\"", { silent = true })

-- 移动分割窗口
keyset('n', '<up>', '<C-w>K')
keyset('n', '<down>', '<C-w>J')
keyset('n', '<left>', '<C-w>H')
keyset('n', '<right>', '<C-w>L')


-- 输入模式下，按下 alt + hjkl 为光标移动
keyset('i', '<M-h>', '<left>')
keyset('i', '<M-j>', '<down>')
keyset('i', '<M-k>', '<up>')
keyset('i', '<M-l>', '<right>')

-- 窗口大小扩展
keyset('n', '+', ':res +5<CR>')
keyset('n', '_', ':res -5<CR>')
keyset('n', '-', ':vertical res -5<CR>')
keyset('n', '=', ':vertical res +5<CR>')

-- 保存, 退出
keyset('n', '<C-s>', ':w<CR>')
keyset('n', '<leader>s', ':w<CR>')
keyset('n', '<leader>qq', ':q<CR>')
keyset('n', 'Q', ':bnext | bdelete #<CR>')

-- 自定义查找下一处待输入
keyset('i', '<C-n>','<Esc>/<+-+><CR>:nohlsearch<CR>c5l', {})
keyset('n', '<C-n>','<Esc>/<+-+><CR>:nohlsearch<CR>c5l', {})
-- map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4i

-- 查看旧版 vimrc 配置
keyset('n', '<leader>v', ':vsp /root/.config/nvim/init.vim.bak<CR>')

-- 在下方插入一个空行
keyset('n', 'co', 'o<Esc>')

-- gp 带缩进粘贴
-- keyset('n', 'gp', ']p')

-- html 属性独立为一行
keyset('n', '<leader>i', 'f i<CR><Esc>')

-- 使当前配置文件立即生效
-- keyset('n', '<leader>so', ':w <CR>:source %<CR>') -- 等价与下面一行
keyset('n', '<leader>so', ':w | source %<CR>')


---------------------- 以下为插件相关 map
-- 切换 nvim tree
keyset('n', '<M-v>', ':NvimTreeToggle /root/.config/nvim/lua<CR>')
keyset('n', '<leader>tt', ':NvimTreeToggle ./ <CR>')
keyset('n', '<leader>to', ':NvimTreeClose | NvimTreeOpen ')
keyset('n', '<leader>h', ':NvimTreeFindFile!<CR>')

-- coc 翻译插件 popup, 弹出窗口
keyset('n', '<C-t>', '<Plug>(coc-translator-p)')
keyset('v', '<C-t>', '<Plug>(coc-translator-pv)')

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

-- book marks 没啥用
-- keyset("n", "<leader>mm", require("nvim-tree.api").marks.list)
-- keyset("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
-- keyset("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
-- keyset("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)

-- hop 跳转字符、单词、行
keyset("n", "<leader><leader>",':HopWord<CR>' , {})
keyset("n", "<leader>c",':HopChar1<CR>' , {})
keyset("n", "<leader>n",':HopLine<CR>' , {})

-- 快速切换主题
keyset("n", "<M-[>",':PreviousColorScheme<CR>' , {})
keyset("n", "<M-]>",':NextColorScheme<CR>' , {})

