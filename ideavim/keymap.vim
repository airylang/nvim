nmap so :w<CR> :source ~/.ideavimrc<CR><Esc>
nmap <leader><leader><leader>  :vsp D:/airylang/nvim/ideavim/keymap.vim<CR>

" map <leader>rr <Action>(IdeaVim.ReloadVimRc.reload)
" 如果 action 弹窗不显示，是否禁用了 ideavim 通知
" File | Settings | Appearance & Behavior | Notifications
" noremap <SPACE> <Nop>
" 使用 nore 方式不能映射 <action>(xxx), 替换为  :action xxx<CR>

" 清除 s, x, o 本身的作用，用于自定义
map s <nop>
map x <nop>
nmap o <nop>

" 解决 v 模式下粘贴时光标始终会移动到行首
vnoremap y mmy`m

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



" tab 切换
nmap <Tab> <action>(NextTab)
nmap <S-Tab> <action>(PreviousTab)
map <leader>1 <action>(GoToTab1)
map <leader>2 <action>(GoToTab2)
map <leader>3 <action>(GoToTab3)
map <leader>4 <action>(GoToTab4)
map <leader>5 <action>(GoToTab5)
map <leader>6 <action>(GoToTab6)
map <leader>0 <action>(GoToLastTab)

" 保存 自动保存
map <C-s> :w<CR>

" 选中
nmap sv mpjvaI<S-v>
nmap sV vaI<S-v>
map sj mm<Action>(EditorCodeBlockEnd)`m``
map sk mm<Action>(EditorCodeBlockStart)`m``
map <leader>v v$
map oa ggvG

" 删除字符
nnoremap <c-h> xh
inoremap <c-h> <BS>
map <c-l> <DEL>
noremap <BS> s

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
" map - :vertical res -5<CR>

" 复制粘贴
vmap <C-c> y
nmap <C-v> pa
imap <C-v> <Esc>pa
vmap <C-v> <action>($Paste)
imap <C-p> <Esc>pa
nmap <C-p> o<Esc>pa
cmap <C-v> <S-Insert>

" 新行
nnoremap <S-CR> o
inoremap <S-CR> <Esc>o
inoremap <C-S-CR> <Esc>O
" map <S-CR> j\"_cc

" 输入模式下撤销
imap <C-u> <Action>($Undo)

" 进入块模式
noremap <M-v> <C-v>

" 注释
" nmap  <C-CR> <action>(CommentByLineComment)k
" vmap  <C-CR> <action>(CommentByLineComment)<Esc>
" imap <C-CR> <Esc><action>(CommentByLineComment)k
" vmap <C-S-CR> <action>(CommentByBlockComment)<Esc>
nmap xx mm<action>(CommentByLineComment)`m
vmap x <action>(CommentByLineComment)<Esc>
vmap X <action>(CommentByBlockComment)<Esc>
nmap <leader>x <S-v><action>(FixDocComment)<Esc>a

" 格式化
" 文件代码格式化
map <C-f> <action>(ReformatCode)
" 格式化当前行
map Q <S-v>:action ReformatCode<CR>

" 格式化当前代码块
" map qb <S-v>$%:action ReformatCode<CR>

vmap q :action ReformatCode<CR>

" 复制当前文件信息
map <leader>cp <action>(CopyAbsolutePath)
map <leader>cn <action>(CopyFileName)

"======================查找====================="
" 查找字符串
map <leader>fs <action>(FindInPath)
" find file
map <leader>ff <Action>(GotoFile)
" find class
map <leader>fc <Action>(GotoClass)
" tab 文件查找
map <leader>fb <Action>(Switcher)
" 查找最近打开的文件
map <leader>fl <Action>(RecentFiles)
" 在项目范围内查找当前单词
map <leader>fg viw<leader>fg<Esc>
" 同上
vmap <leader>fg <action>(FindSelectionInPath)
" 在当前文件查找剪切板内容
map <leader>fh /<C-r>+<Cr>
" 查找action
map <leader>fa <Action>(GotoAction)
"==========================================="

" 替换
nnoremap <leader>rp :action Replace<CR>
nnoremap <leader>rg :action ReplaceInPath<CR>

"======================java 跳转====================="
" 跳转实现
nmap gi <action>(GotoImplementation)
" 跳转变量定义
nmap gd <action>(GotoDeclaration)
" 跳转变量类型定义
nmap gD <action>(GotoTypeDeclaration)
" 跳转-回退
nnoremap gb :action Back<CR>
" 跳转-前进
nnoremap gf :action Forward<CR>
" 跳转测试
nnoremap gt :action GotoTest<CR>
" 跳转错误
map ge <Action>(GotoNextError)
map gE <Action>(GotoPreviousError)
" 跳转父级
map gs <Action>(GotoSuperMethod)
" 跳转上一个修改处
map <C-o> :action JumpToLastChange<CR>
" 前进修改处
map <C-i> :action JumpToNextChange<CR>
" 查看调用栈
map <leader>hh <Action>(HierarchyGroup)
"==========================================="

" java-文件内跳转
" 跳转上一个方法
map [[ <Action>(MethodUp)
" 跳转下一个方法
map ]] <Action>(MethodDown)

" information
map sd <action>(ShowErrorDescription)
" 列出当前方法有哪些重载方法
noremap <leader>p :action ParameterInfo<CR>
" 当前表达式的返回结果类型
noremap <leader>ti :action ExpressionTypeInfo<CR>


" java 提示
map <leader>rr <action>(RunClass)
map <leader>rd <action>(DebugClass)
map <leader>ro <action>(OverrideMethods)
" map <leader>o <action>(OptimizeImports)
map sa <action>(ShowIntentionActions)

" 重构
map <leader>a <Action>(Refactorings.QuickListPopupAction)


" 重启 ide
map <leader>rs <action>(RestartIde)

" nerd tree
map <C-t> :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>

" hop word
" nmap <leader><leader> <action>(KJumpAction.Word1)
" nmap <leader><leader>s :action KJumpAction<cr>
" nmap <leader><leader>w :action KJumpAction.Word0<cr>
" nmap <leader><leader>l :action KJumpAction.Line<cr>

" 文件操作
nmap <leader>af <action>(NewFile)
nmap <leader>ac <action>(NewClass)
nmap scp <action>(CopyAbsolutePath)
map <leader>re <action>(RenameElement)
map <leader>rf <action>(RenameFile)
map <leader>of <action>(OpenFile)

" git
map ]d <Action>(VcsShowNextChangeMarker)
map [d <Action>(VcsShowPrevChangeMarker)
map <leader>G <action>(Git.Menu)
map <leader>d <Action>(GitShowDiffWithBranchAction)
" git 每行的提交信息
nmap <leader>b <Action>(Annotate)
" Git.CompareWithBranch
" Git.ContextMenu
" Git.Fetch
" Git.FileActions

" 选中上一次粘贴的文本
nnoremap <leader>gv `[v`]

" v 模式避免粘贴内容丢失
vmap p p<leader>gvy<Esc>

" v 模式下按 * 搜索(使用p作为寄存器)
vnoremap * \"py/<C-r>p<CR>

" 选中单词
" nnoremap <Enter> <Action>(EditorSelectWord)

" 执行该行对应的action
nnoremap <leader>r ^yE:action <C-r>0<CR>

" 切换全屏
map <leader>vv <Action>(ToggleFullScreen)
map <leader>vf <Action>(ToggleDistractionFreeMode)
map <leader>vp <Action>(TogglePresentationMode)

" Book marks"
" map <Leader>bc <Action>(Bookmarks)"- General purpose
" map <Leader>bm <Action>(ActivateBookmarksToolWindow)"- Tool window
" map <Leader>bk <Action>(Bookmarks.Toggle)"- Create a bookmark
" map <Leader>ba <Action>(ShowBookmarks)"- Show all bookmarks

" 翻译 需要安装翻译插件以及配置 key
map <Leader>tt <Action>($EditorTranslateAction)

" maven
map <leader>mm <action>(Maven.Reimport)

" 删除 json 中一级
nmap <leader>jd mp%dd`pdd<S-v>%=

" window
nmap <leader>wh <Action>(HideActiveWindow)
nmap <leader>wo <Action>(HideAllWindows)

" mark down
nmap <leader>mo <Action>(Markdown.Layout.EditorOnly)
nmap <leader>mp <Action>(Markdown.Layout.PreviewOnly)
nmap <leader>ma <Action>(Markdown.Layout.EditorAndPreview)

" 打开 terminal
nmap ot <Action>(ActivateTerminalToolWindow)

" 折叠
noremap oc zc
noremap oz zo

" 行内删除
nmap <C-d> ^d$\"_dd

" 加 减
nnoremap xa <C-a>
nnoremap xc <C-x>
