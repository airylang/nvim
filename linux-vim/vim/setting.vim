" 显示行号
set number

" 主题
colorscheme monokai

" 禁用鼠标
set mouse=

" 忽略大小写搜索
set ignorecase

" 高亮当前搜索
set hlsearch

" 按下tab填充2个空格
set shiftwidth=2
set expandtab
set tabstop=2

" 转换tab和空格显示
set list
set listchars=tab:▸▸,trail:•

" 单行限制高亮字符数
set synmaxcol=500

" 缩进
" set autoindent

" 设置不自动缩进
set noautoindent

" 底部空间
set scrolloff=4

syntax on
set termguicolors

" swap 文件存储位置
set directory=/soft/swap

"  进入输入模式时，高亮当前行背景色
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" 图标列
set signcolumn=number

" 设置不换行
set nowrap

" 显示 cmd
set showcmd

"ssh 远程粘贴板


" 使得下一行不会自动产生注释
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" 解决粘贴时换行问题
" set paste
" set noautoindent
" set nosmartindent

" set termguicolors

