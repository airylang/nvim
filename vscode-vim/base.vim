source  D:\airylang\nvim\vscode-vim\commands.vim
nnoremap ov :e /d:/airylang/nvim/vscode-vim/base.vim<CR>
nnoremap oq :e /D:\project-file\前置付款\devstep.md<CR>
nnoremap os :e /D:\project-file\结算中心\结算中心开发记录.md<CR>
nnoremap op :e /D:\project-file\other\product.md<CR>
nnoremap ou :e /D:\project-file\other\user.md<CR>
nnoremap oo :e /D:\project-file\other\dev.md<CR>


" ------------清除--------------
noremap q <nop>
noremap s <nop>
nnoremap x <nop>
nnoremap o <nop>

nnoremap c \"9c
vnoremap c \"9c
nnoremap d \"9d
vnoremap d \"9d

" ------------------------------

" ------------恢复--------------
noremap oq q


" ------------------------------



" ------------必要--------------
map <Esc> <Esc>:nohls<CR>
" ------------------------------


" ------------移动--------------
map <Esc> <Esc>:nohls<CR>
map <C-j> 5j
map <C-k> 5k
map H ^
map L $
noremap <C-u> %
" ------------------------------


" ------------删除字符--------------
nnoremap <C-h> \"9xh
nnoremap <C-l> \"9<DEL>
nnoremap <BS> \"9xi
inoremap <C-h> <ESC>\"9<DEL>i
inoremap <C-l> <ESC>l\"9<DEL>i
" ------------------------------


" ------------切换大小写--------------
nnoremap cu ~h
" ------------------------------


" ------------选中--------------
nnoremap sv vaI
" 选中上一次粘贴的文本
nnoremap <leader>gv `[v`]
" nnoremap <leader>a ggVG
nnoremap <C-a> ggVG
" ------------------------------


" ------------复制 剪切 粘贴--------------
nnoremap Y y$
" vnoremap y mmy`m   ;无法生效
" v模式粘贴时保持粘贴板内容
vnoremap p pgvy
nnoremap <C-y> ^y$

" 剪切
nnoremap <C-d> ^y$\"_dd
nnoremap X dd
vnoremap x d
nnoremap xl mmy$`m\"9d$
nnoremap xh mmy^`m\"9d^
nnoremap xw diw

" 复制
nnoremap yl y$
nnoremap yh y^


" ------------------------------


" ------------分割窗口--------------
nnoremap <C-|> :vsp<CR>
nnoremap <C--> :sp<CR>
nnoremap qq :tabclose<CR>
nnoremap qo :tabonly<CR>
" ------------------------------


" ------------标签页--------------
nnoremap <TAB> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
" ------------------------------


" ------------缩进--------------
vnoremap <TAB> >>gv
vnoremap <S-Tab> <<gv
" ------------------------------


" ------------内容查找--------------
" v 模式下按 * 搜索(使用p作为寄存器)
" vnoremap * \"py/<C-r>p<CR>
" ------------------------------


" ------------跳转--------------
nnoremap zi gi
" 跳转至标签内部开头 // todo
nnoremap zt vito<Esc>
" ------------------------------

" zz
nnoremap <leader>z zz

" html 独立一行
nnoremap <leader>i ^f<space>i<DEL><CR>
