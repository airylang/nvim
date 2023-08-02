map <F5> :w<CR> :source ~/.ideavimrc<CR><Esc>

" map <leader>rr <Action>(IdeaVim.ReloadVimRc.reload)

" noremap <SPACE> <Nop>
" 使用 nore 方式不能映射 <action>(xxx), 替换为  :action xxx<CR>

" 快速移动
map <Esc> <Esc>:nohls<CR>
map <C-j> 5j
map <C-k> 5k
map L $
map H ^
map <c-u> %

" 按单词跳转
map w ]w
" map b ]b

" tab 切换
map <Tab> <action>(NextTab)
map <S-Tab> <action>(PreviousTab)
map <leader>1 <action>(GoToTab1)
map <leader>2 <action>(GoToTab2)
map <leader>3 <action>(GoToTab3)
map <leader>4 <action>(GoToTab4)
map <leader>5 <action>(GoToTab5)
map <leader>6 <action>(GoToTab6)
map <leader>0 <action>(GoToLastTab)

" 保存 自动保存
map <C-s> :w<CR>

" 选中当前代码块
nnoremap qv <S-v>$%
" 删除当前代码块
nnoremap qd <S-v>$%\"_d
" 复制当前代码块
nnoremap qy <S-v>$%y

" 删除字符
nnoremap <c-h> s
nnoremap <c-l> i<Del>
inoremap <c-h> <BS>
inoremap <c-l> <DEL>
map <BS> s
" map <C-BS> DEL>i
" imap <C-BS> <DEL>

" 输入模式下移动光标
imap <M-h> <left>
imap <M-l> <right>
imap <C-j> <action>(EditorDown)
imap <C-k> <action>(EditorUp)
imap <C-a> <Esc>A

" 分割窗口
map <C-\> :vsp<CR>
map <C--> :sp<CR>

" 关闭 tab、分隔窗口
nmap qh <C-w>h:q<CR>
nmap qj <C-w>j:q<CR>
nmap qk <C-w>j:q<CR>
nmap ql <C-w>l:q<CR>
nmap qo :only<CR>
nmap qq :q<CR>
nmap <leader>qo <action>(CloseAllEditorsButActive)
nmap <leader>ql <action>(CloseAllToTheRight)

" 窗口大小调整
" map = :vertical res +5<CR>
" map - :vertical res -5<CR>

" 复制粘贴
map Y ^y$
vmap <C-c> y
nmap <C-v> pa
imap <C-v> <Esc>pa
imap <C-p> <Esc>pa
nmap <C-p> o<Esc>pa
cmap <C-v> <S-Insert>
map <leader>d v%d
map <leader>y v%y

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
map <C-f> <action>(ReformatCode) " 文件代码格式化
map Q <S-v><action>(ReformatCode)  " 格式化当前行
map qb <S-v>$%:action ReformatCode<CR> " 格式化当前代码块

" 复制当前文件信息
map <leader>cp <action>(CopyAbsolutePath)
map <leader>cn <action>(CopyFileName)

" 查找
map <leader>fs <action>(FindInPath) " 查找字符串
map <leader>ff <Action>(GotoFile) " find file
map <leader>fc <Action>(GotoClass) " find class
map <leader>fb <Action>(Switcher) " tab 文件查找
map <leader>fl <Action>(RecentFiles) " 查找最近打开的文件
map <leader>fg viw<leader>fg<Esc> " 在项目范围内查找当前单词
vmap <leader>fg <action>(FindSelectionInPath) " 同上
map <leader>fh /<C-r>+<Cr> " 在当前文件查找剪切板内容

" 替换
nnoremap <leader>re :action Replace<CR>
nnoremap <leader>rg :action ReplaceInPath<CR>

" java 跳转
nmap gi <action>(GotoImplementation)" 跳转实现
nmap gd <action>(GotoDeclaration)" 跳转变量定义
nmap gD <action>(GotoTypeDeclaration)" 跳转变量类型定义
nnoremap gb :action Back<CR>" 跳转-回退
nnoremap gf :action Forward<CR>" 跳转-前进
nnoremap gt :action GotoTest<CR>" 跳转测试
map ge <Action>(GotoNextError)" 跳转至下一错误
map gE <Action>(GotoPreviousError)" 跳转前一个错误
map gs <Action>(GotoSuperMethod)
map <C-o> :action JumpToLastChange<CR>" 跳转上一个修改处
map <C-i> :action JumpToNextChange<CR>" 前进修改处
map <leader>hh <Action>(HierarchyGroup)" 查看调用栈

" java-文件内跳转
map [[ <Action>(MethodUp)" 跳转上一个方法
map ]] <Action>(MethodDown)" 跳转下一个方法

" information
map gy <action>(ShowErrorDescription)
noremap <leader>p :action ParameterInfo<CR>" 列出当前方法有哪些重载方法
noremap <leader>ti :action ExpressionTypeInfo<CR>" 当前表达式的返回结果类型
" K  java doc


" java 运行
map <leader>rr <action>(RunClass)
map <leader>ro <action>(OverrideMethods)
map <leader>o <action>(OptimizeImports)
map <leader>ca <action>(ShowIntentionAction)

" 重构
map <leader>a <Action>(Refactorings.QuickListPopupAction)
" OverrideMethods


" 重启 ide
map <leader>rs <action>(RestartIde)

" nerd tree
map <C-t> :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>

" hop word
nmap <leader><leader> <action>(KJumpAction.Word1)
" nmap <leader><leader>s :action KJumpAction<cr>
" nmap <leader><leader>w :action KJumpAction.Word0<cr>
" nmap <leader><leader>l :action KJumpAction.Line<cr>

" 文件
nmap <leader>nf <action>(NewFile)
nmap <leader>nc <action>(NewClass)
nmap <leader>cp <action>(CopyAbsolutePath)
map <leader>rn <action>(RenameElement)
map <leader>fn <action>(RenameFile)

" git
map ]d <Action>(VcsShowNextChangeMarker)
map [d <Action>(VcsShowPrevChangeMarker)
map <leader>G <action>(Git.Menu)
map <leader>d <Action>(GitShowDiffWithBranchAction)
nmap <leader>b <Action>(Annotate)" git 每行的提交信息
" Git.CompareWithBranch
" Git.ContextMenu
" Git.Fetch
" Git.FileActions

" 选中上一次粘贴的文本
nnoremap <leader>gv `[v`]

" v 模式避免粘贴内容丢失
vmap p p<leader>gvy<Esc>

" v 模式下按 * 搜索(使用p作为寄存器)
vmap * \"py/<C-r>p<CR>

" 选中单词
map <Enter> <Action>(EditorSelectWord)

" 执行该行对应的action
nnoremap <leader>r ^yE:action <C-r>0<CR>

" 切换全屏
map <M-m> <action>(ToggleFullScreen)
" View mode
map <leader>vv <Action>(ToggleFullScreen)
map <leader>vf <Action>(ToggleDistractionFreeMode)
map <leader>vp <Action>(TogglePresentationMode)

" Book marks"
" map <Leader>bc <Action>(Bookmarks)"- General purpose
" map <Leader>bm <Action>(ActivateBookmarksToolWindow)"- Tool window
" map <Leader>bk <Action>(Bookmarks.Toggle)"- Create a bookmark
" map <Leader>ba <Action>(ShowBookmarks)"- Show all bookmarks

" Translate 没生效？？？"
map <Leader>tt <Action>(TranslationGroup)

" maven
map <leader>mm <action>(Maven.Reimport)

" 删除 json 中一级
nmap <leader>jd mp%dd`pdd<S-v>%=