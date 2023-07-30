map <leader>rr :w<CR> :source C:/Users/yulang/.ideavimrc<CR>

map <Esc> <Esc>:nohls<CR>
map <C-j> 5j
map <C-k> 5k
map L $
map H ^

" 跳转tab
map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR>

" 保存
map <C-s> :w<CR>

" 删除
map <BS> s
map <C-BS> <DEL>i
imap <C-BS> <DEL>

" 输入模式下移动光标
imap <C-h> <left>
imap <C-l> <right>

" 分割窗口
map <leader>wl :vsp<CR>
map <leader>wh :sp<CR>
nmap qh <C-w>h:q<CR>
nmap qj <C-w>j:q<CR>
nmap qk <C-w>j:q<CR>
nmap ql <C-w>l:q<CR>
nmap qo :only<CR>
nmap qq :q<CR>
