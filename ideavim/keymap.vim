map <leader>rr :w<CR> :source C:/Users/yulang/.ideavimrc<CR>

" 快速移动
map <Esc> <Esc>:nohls<CR>
map <C-j> 6j
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
imap <C-a> <Esc>A

" 分割窗口
map <leader>wl :vsp<CR>
map <leader>wh :sp<CR>
nmap qh <C-w>h:q<CR>
nmap qj <C-w>j:q<CR>
nmap qk <C-w>j:q<CR>
nmap ql <C-w>l:q<CR>
nmap qo :only<CR>
nmap qq :q<CR>
nmap <leader>qo <action>(CloseAllEditorsButActive)
nmap <leader>ql <action>(CloseAllToTheRight)

" 复制粘贴
vmap <C-c> y
nmap <C-v> pa
imap <C-v> <Esc>pa

" 行操作
imap <S-CR> <Esc>o " start new line
map <S-CR> j\"_cc

" 撤销
imap <C-u> <Esc>uui

" 块模式
noremap <M-v> <C-v>

" 注释
" CommentByBlockComment
" CommentByLineComment

" 格式化
map <leader>fc <action>(ReformatCode)

" 重命名文件
map <leader>fn <action>(RenameFile)

" 复制当前文件信息
map <leader>cp <action>(CopyAbsolutePath)
map <leader>cn <action>(CopyFileName)

" 查找
" map <leader>ff <action>(FileChooser.GotoHome)
map <leader>ff <action>(FindInPath)

" 跳转
map <leader>gi <action>(GotoAction)
" map <leader>gi <action>(GotoImplementation)
" map <leader>gi <action>(GotoClass)
" map <leader>gi <action>(GotoSuperMethod)
" map <leader>gi <action>(GotoSymbol)
" map <leader>gi <action>(GotoNextError)
" map <leader>gi <action>(GotoNextError)
" GoToTab1
"GoToTab2
"GoToTab3
"GoToTab4
"GoToTab5
"GoToTab6
"GoToTab7
"GoToTab8
"GoToTab9

" 文件
" RecentFiles

" java
" OverrideMethods
" RunClass
" ShowErrorDescription

" 重启 ide
map <leader>rs <action>(RestartIde)