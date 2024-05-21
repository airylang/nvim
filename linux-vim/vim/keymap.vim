let mapleader = ' '

" 清除按键
noremap q <nop>
noremap s <nop>
nnoremap x <nop>

" 修改、删除不加入寄存器
" map c "9c
" map d "9d

" 配置生效
noremap R :source ~/.config/nvim/init.vim<CR><Esc>

" 打开 nvim 配置
nnoremap <C-n> :vsp /nvim/linux-vim/<CR>


" 取消搜索高亮
map <Esc> <Esc>:nohls<CR>

" 跳转行头、行尾
map H ^
map L $

" 保存
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

" 退出
nmap <leader>q :q<CR>

" 粘贴 单用 c-v 块模式
nnoremap <C-v> pa
inoremap <C-v> <Esc>pa
vnoremap <C-v> p

" 删除字符
nnoremap <BS> a<BS>
nnoremap <C-h> xh
nnoremap <C-l> <Del>
inoremap <C-h> <BS>
inoremap <C-l> <Del>

" 剪切
nnoremap X yy"9dd

" 基础移动
map <C-j> 5j
map <C-k> 5k

" 全选
nnoremap <C-a> ggVG

" 改变当前字符大小写
nnoremap cu ~h

" 换行
" nnoremap <S-CR> ^

" this is a test string

"========================


" tab
nnoremap <TAB> :bnext<CR>
nnoremap <S-tab> :bprev<CR>

" 分屏
nnoremap <C-\> :vsp<CR>
nnoremap qq :close<CR>

" 跳转分屏
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l

" 窗口大小跳转
nnoremap + :vertical resize +5<CR>
nnoremap _ :vertical resize -5<CR>
" nnoremap <C-=> :resize +5<CR>
" nnoremap <C--> :resize -5<CR>

" 跳转配对
noremap <C-u> %

nnoremap = <C-a>
nnoremap - <C-x>

" 缩进
nnoremap < <<
nnoremap > >>

" v模式下缩进后继续选中文本
vnoremap < <gv
vnoremap > >gv

" n 模式下换行
nnoremap <CR> o

nnoremap <M-v> <C-v>

