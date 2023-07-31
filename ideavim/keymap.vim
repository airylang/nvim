map <leader>rr :w<CR> :source ~/.ideavimrc<CR><Esc>h

" 快速移动
map <Esc> <Esc>:nohls<CR>
map <C-j> 5j
map <C-k> 5k
map L $
map H ^

" tab 切换
map <Tab> <action>(NextTab)
map <S-Tab> <action>(PreviousTab)
map <leader>1 <action>(GoToTab1)
map <leader>2 <action>(GoToTab2)
map <leader>3 <action>(GoToTab3)
map <leader>4 <action>(GoToTab4)
map <leader>5 <action>(GoToTab5)
map <leader>6 <action>(GoToTab6)

" 保存
map <C-s> :w<CR>

" 删除字符
map <BS> s
map <C-BS> <DEL>i
imap <C-BS> <DEL>

" 输入模式下移动光标
imap <C-h> <left>
imap <C-l> <right>
imap <C-a> <Esc>A
imap <C-j> <action>(EditorDown)
imap <C-k> <action>(EditorUp)

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
nmap Y ^y$
vmap <C-c> y
nmap <C-v> pa
imap <C-v> <Esc>pa
imap <C-p> <Esc>pa
nmap <C-p> o<Esc>pa

" 新行
imap <S-CR> <Esc>o
imap <C-S-CR> <Esc>O
map <S-CR> j\"_cc

" 撤销
imap <C-u> <Esc>uui

" 进入块模式
noremap <M-v> <C-v>

" 注释
nmap  <C-CR> <action>(CommentByLineComment)k
vmap  <C-CR> <action>(CommentByLineComment)<Esc>
imap <C-CR> <Esc><action>(CommentByLineComment)k
vmap <C-S-CR> <action>(CommentByBlockComment)<Esc>

" 格式化
map \r <action>(ReformatCode)
map Q gq<CR>

" 重命名
map <leader>rn <action>(RenameElement)
map <leader>fn <action>(RenameFile)

" 复制当前文件信息
map <leader>cp <action>(CopyAbsolutePath)
map <leader>cn <action>(CopyFileName)

" 查找
" map <leader>ff <action>(FileChooser.GotoHome)
map <leader>ff <action>(FindInPath)
map <leader>fs <Action>(GotoFile) " 查找文件
map <leader>fb <Action>(Switcher)

" 跳转
map <leader>gi <action>(GotoAction)
" map <leader>gi <action>(GotoImplementation)
" map <leader>gi <action>(GotoClass)
" map <leader>gi <action>(GotoSuperMethod)
" map <leader>gi <action>(GotoSymbol)
" map <leader>gi <action>(GotoNextError)
" map <leader>gi <action>(GotoNextError)

" 文件
" RecentFiles

" java
map \b <action>(ToggleLineBreakpoint)
" OverrideMethods
" RunClass
" ShowErrorDescription

" 重启 ide
map <leader>rs <action>(RestartIde)

" nerd tree
map <C-t> :NERDTreeToggle<CR>
map <C-l> :NERDTreeFind<CR>
let g:NERDTreeMapPreview="<Tab>"

" hop word
nmap <leader><leader> <action>(KJumpAction.Word1)
