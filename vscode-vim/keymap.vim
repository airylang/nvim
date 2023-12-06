" 快速移动
map <Esc> <Esc>:nohls<CR>
map <C-j> 5j
map <C-k> 5k
map L $
map H ^
map <c-u> %
noremap z `
noremap zz ``
map Y y$
noremap oo o

" 保存 自动保存
map <C-s> :w<CR>

" 删除字符
nnoremap <c-h> xh
inoremap <c-h> <BS>
map <c-l> <DEL>
imap <c-l> <DEL>
noremap <BS> s

" 输入模式下移动光标
imap <M-h> <left>
imap <M-l> <right>
" imap <C-j> <action>(EditorDown)
" imap <C-k> <action>(EditorUp)
imap <C-a> <Esc>A

" 新行
nnoremap <S-CR> o
inoremap <S-CR> <Esc>o
inoremap <C-S-CR> <Esc>O
