### map <C-I>
在Neovim中，<c-i> 是一个特殊的键，它代表了Tab键。如果你尝试使用nmap或imap映射来映射Control+I到一个操作，你会发现这是不可能的，因为<c-i>已经被Neovim解释为Tab键。
如果你想要映射Control+I到一个特定的操作，你可以使用<C-Tab>来实现
nnoremap <C-Tab> :echo "C-Tab pressed in normal mode"<CR>
inoremap <C-Tab> <C-O>:echo "C-Tab pressed in insert mode"<CR>

### <S-Tab> 不生效
检测终端软件是否支持该按键输入，比如xshell按下Shift+tab会被处理为功能组合键
