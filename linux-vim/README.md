### map <C-I> 未实现
在Neovim中，<c-i> 是一个特殊的键，它代表了Tab键。如果你尝试使用nmap或imap映射来映射Control+I到一个操作，你会发现这是不可能的，因为<c-i>已经被Neovim解释为Tab键。
如果你想要映射Control+I到一个特定的操作，你可以使用<C-Tab>来实现
nnoremap <C-Tab> :echo "C-Tab pressed in normal mode"<CR>
inoremap <C-Tab> <C-O>:echo "C-Tab pressed in insert mode"<CR>

### map <S-Tab> 不生效
检测终端软件是否支持该按键输入，比如xshell按下Shift+tab会被处理为功能组合键

### map <S-CR> 不生效
借助 autohotkey 映射为其他按键

### 粘贴代码换行错乱问题
set paste // 没用


### 验证终端是否支持彩色
``` cmd
curl https://raw.githubusercontent.com/JohnMorales/dotfiles/master/colors/24-bit-color.sh | bash
```
如果出现的颜色是渐变的说明支持


### 代码注释


### 文件搜索


### git管理


### markdown语法高亮

### coc 上线选中补全时，自动预填充
选中时函数传参数0

### telescope
1. 安装 rg
2. 设置 ff 时排除 node_modules

### 如果复制vim内容至linux命令行

### nvim复制内容与外部终端剪切板互通

