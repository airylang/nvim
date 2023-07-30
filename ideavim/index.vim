" .ideavimrc
" source D:\airylang\nvim\ideavim\index.vim

let mapleader=" "
source D:\airylang\nvim\ideavim\keymap.vim
source D:\airylang\nvim\ideavim\plug.vim
source D:\airylang\nvim\ideavim\set.vim


" 软链接
" mklink /D C:\Users\yulang\.ideavimrc D:\airylang\nvim\ideavim\.ideavimrc

" 硬链接
" mklink /H C:\Users\yulang\.ideavimrc D:\airylang\nvim\ideavim\.ideavimrc


"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
"" Map \r to the Reformat Code action
"map \r <Action>(ReformatCode)

"      COMMANDS                    MODES ~
" map   :noremap  :unmap     Normal, Visual, Select, Operator-pending
" nmap  :nnoremap :nunmap    Normal
" vmap  :vnoremap :vunmap    Visual and Select
" smap  :snoremap :sunmap    Select
" xmap  :xnoremap :xunmap    Visual
" omap  :onoremap :ounmap    Operator-pending
" map!  :noremap! :unmap!    Insert and Command-line
" imap  :inoremap :iunmap    Insert
" lmap  :lnoremap :lunmap    Insert, Command-line, Lang-Arg
" cmap  :cnoremap :cunmap    Command-line

