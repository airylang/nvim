" 不使用 tmux 插件提供的按键映射
let g:tmux_navigator_no_mappings = 1

noremap <silent> <M-h> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <M-j> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <M-k> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <M-l> :<C-U>TmuxNavigateRight<cr>
" noremap <silent> {Previous-Mapping} :<C-U>TmuxNavigatePrevious<cr>

set background=dark
if has("termguicolors")
    set termguicolors
endif
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
