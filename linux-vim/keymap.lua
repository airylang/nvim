vim.g.mapleader = ' '
local keyset = vim.keymap.set

-- 按住 ctrl 上下跳转多行
keyset('', '<C-j>', '5j')
keyset('', '<C-k>', '5k')

keyset('n', '<BS>', 's')

-- 取消搜索
-- keyset('n', '<leader><CR>', ':nohls<CR>')
keyset('', '<Esc>', '<Esc>:nohls<CR>')

-- ctrl + h l 跳转行首行尾
-- keyset('', '<C-l>', '$')
-- keyset('', '<C-h>', '0^')
keyset('', 'L', '$')
keyset('', 'H', '0^')

-- 插入空行, 光标位置不变
keyset('n', '[<Space>', 'mmO<Esc>d0<Esc>`m')
keyset('n', ']<Space>', 'mmo<Esc>d0<Esc>`m')

-- 上下移动当前行
keyset('n', '[e', ":<c-u>execute 'move -1-'. v:count1<cr>")
keyset('n', ']e', ":<c-u>execute 'move +'. v:count1<cr>")

-- n 模式下 tab, shift+tab 轮换buffer
keyset('n', '<tab>', ':bnext<CR>')
keyset('n', '<S-tab>', ':bprevious<CR>')

-- v 模式下 按下 tab 为缩进效果
-- keyset('v', '<TAB>', '>')
-- keyset('v', '<S-TAB>', '<')

-- 通模式 跳转分隔窗口
keyset('n', '<M-h>', '<C-w>h')
keyset('n', '<M-j>', '<C-w>j')
keyset('n', '<M-k>', '<C-w>k')
keyset('n', '<M-l>', '<C-w>l')

-- 打开 分割窗口
keyset('n', '<leader>s', ':vsp<CR>')
keyset('n', '<leader>sp', ':vsp<CR>')

-- 关闭分割窗口
keyset('n', 'qh', '<C-w>h:q<CR>')
keyset('n', 'qj', '<C-w>j:q<CR>')
keyset('n', 'qk', '<C-w>k:q<CR>')
keyset('n', 'ql', '<C-w>l:q<CR>')
keyset('n', 'qo', ':only<CR>')
keyset('n', 'qq', ':q<CR>')
-- 关闭当前 buffer， 并跳转下一个buffer
keyset('n', 'qd', ':bnext | bdelete # | q<CR>')

-- 关闭除当前缓冲区以外的 buffer
keyset('n', '<leader>qo', ':Bdelete other<CR>')
-- 关闭所有未显示在窗口的 buffer
keyset('n', '<leader>qh', ':Bdelete hidden<CR>')
-- 关闭其他 buffer, 以及其他分割窗口
keyset('n', '<leader>qa', ':only | Bdelete other<CR>')
-- 关闭当前 buffer， 并跳转下一个buffer
keyset('n', '<leader>qq', ':bnext | bdelete #<CR>')

-- 移动分割窗口
-- keyset('n', '<up>', '<C-w>K')
-- keyset('n', '<down>', '<C-w>J')
-- keyset('n', '<left>', '<C-w>H')
-- keyset('n', '<right>', '<C-w>L')

-- 输入, 命令模式下，按下 alt + hjkl 为光标移动
keyset({'i','c'}, '<M-h>', '<left>')
keyset({'i','c'}, '<M-j>', '<down>')
keyset({'i','c'}, '<M-k>', '<up>')
keyset({'i','c'}, '<M-l>', '<right>')

-- 输入, 命令模式下，按下 ctrl + hjkl 为光标移动
keyset({'i','c'}, '<C-h>', '<left>')
keyset({'i','c'}, '<C-j>', '<down>')
keyset({'i','c'}, '<C-k>', '<up>')
keyset({'i','c'}, '<C-l>', '<right>')

-- 窗口大小扩展
keyset('n', '+', ':res +5<CR>')
keyset('n', '_', ':res -5<CR>')
keyset('n', '-', ':vertical res -5<CR>')
keyset('n', '=', ':vertical res +5<CR>')

-- 保存, 退出
keyset('n', '<C-s>', ':w<CR>')
-- keyset('n', '<leader>s', ':w<CR>')
-- keyset('n', '<leader>qq', ':q<CR>')
keyset('n', 'Q', ':bnext | bdelete #<CR>')

-- 自定义查找下一处待输入
keyset({ 'i', 'n' }, '<M-i>', '<Esc>a<+-+>', {})
keyset({ 'i', 'n' }, '<M-n>', '<Esc>/<+-+><CR>:nohlsearch<CR>c5l', {})
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

-- 复制一行内容为行内
keyset('n', '<leader>dd', '^d$')
keyset('n', '<M-o>', 'jcc')

---------------------- 以下为插件相关 map
-- 切换 nvim tree
keyset('n', '<leader>tt', ':NvimTreeToggle ./ <CR>')
keyset('n', '<leader>to', ':NvimTreeClose | NvimTreeOpen ')
-- keyset('n', '<leader>h', ':NvimTreeFindFile!<CR>')

--  ctrl + c, (开了有道词典以及设置取词为两次ctrl 后 等价于 按两次ctrl)
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

keyset('n', '<leader>si', '<cmd>lua require("spectre").open()<CR>', { desc = "Open Spectre" })
keyset('n', '<leader>sv', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "Search current word" })
keyset('v', '<leader>sv', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "Search current word" })
keyset('n', '<leader>sf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "Search on current file" })

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

-- makrdown 
keyset('n', '<leader>md', '<Plug>MarkdownPreview')

keyset('n', '<C-p>', function() 
  -- local s = vim.fn.getchar()
  -- local line = vim.fn.getline('.')
  -- local newLine = vim.fn.substitute(line, 'L', "*", "g")
  -- print(newLine)
  -- vim.fn.setline(".", newLine)
  local user_name = 'zhou'

  -- 在当前位置 插入 "new text"
  -- vim.fn.execute('normal inew text')
  -- execute "normal inew text\<Esc>b"

  vim.fn.execute('normal B')

  -- userNameAge  user_name_age  UserNameAge  Usr_Name_Age user-name-age User-Name-Age User/Name/Age
  -- theTestName
  local line = vim.fn.getline('.')
  local col = vim.fn.col('.')
  -- print(col)

  local list = { 'aaa', 'bbb', 'ccc' }

  -- vim.fn.execute('insert')
  vim.fn.complete('.', list)
 end )
