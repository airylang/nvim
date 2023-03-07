-- 使用相对行号
vim.o.number = true
vim.o.ignorecase = true
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.encoding = 'UTF-8'
vim.o.showcmd = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.scrolloff = 4
vim.o.timeoutlen = 500
vim.o.list = true
vim.o.listchars = 'tab:▸▸'
vim.o.listchars = 'trail:•'
vim.o.foldenable = true
vim.o.foldlevelstart = 99
vim.o.foldmethod = 'syntax'
vim.o.matchtime = 1
vim.o.directory = '/soft/swap'
vim.o.wrap = false
vim.o.mouse = 0
-- vim.o.matchpairs = '(:),{:},[:],\':\',":",<:>'

if (vim.fn.has('termguicolors') == 1) then
  vim.o.termguicolors = true
end

-- 去除换行时自动添加的注释
vim.o.comments = 'sl:/*,mb:*,elx:*/'
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- 取消自动注释，当前行是注释时，按下回车键会默认添加一行注释，这里取消这一行为
-- vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"r", "c", "o"}

-- 进入输入模式时，高亮当前行背景色
vim.cmd('autocmd InsertEnter * set cul')
vim.cmd('autocmd InsertLeave * set nocul')

vim.o.signcolumn = 'yes'
vim.o.signcolumn = 'number'
vim.o.clipboard = 'unnamedplus'

