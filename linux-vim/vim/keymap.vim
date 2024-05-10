let mapleader = ' '

" 配置生效
noremap <leader>o :source ~/.config/nvim/init.vim<CR><Esc>

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
nnoremap <C-v>pa
inoremap <C-v> <Esc>pa
vnoremap <C-v> p

" 删除字符
nnoremap <C-h> xh
nnoremap <C-l> <Del>
inoremap <C-h> <BS>
inoremap <C-l> <Del>

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

" 清除按键
noremap q <nop>
noremap s <nop>
" nnoremap x <nop>

" tab
nnoremap <TAB> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
