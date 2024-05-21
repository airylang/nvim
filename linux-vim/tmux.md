### 下载
https://github.com/tmux/tmux

### 安装
https://www.jianshu.com/p/01a18efe2552

// 依赖包
yum install -y libevent-devel ncurses-devel
yum install byacc

wget https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz      //下载安装包
tar zxvf tmux-2.8.tar.gz        //解压安装包        
cd tmux-2.8/                    //进入已解压目录
./configure && make             //编译源代码
make install                    //安装

### 启动
$ nvim /etc/profile

TMUX_HOME=/soft/tmux/tmux-3.4
export PATH=${JAVA_HOME}/bin:${MAVEN_HOME}/bin:${NODE_HOME}/bin:${NVIM_HOME}/bin:${TMUX_HOME}:${PATH}

$ source /etc/profile
$ tmux

### 配置
set -g default-terminal 'screen-256color'
set-option -ga terminal-overrides ",*256col*:Tc"

# 不显示状态栏
set -g status off

is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|l?n?vim?x?|fzf)(diff)?$'"
bind-key -n 'M-h' if-shell "$is_vim" 'send-keys M-h'  'select-pane -L'
bind-key -n 'M-j' if-shell "$is_vim" 'send-keys M-j'  'select-pane -D'
bind-key -n 'M-k' if-shell "$is_vim" 'send-keys M-k'  'select-pane -U'
bind-key -n 'M-l' if-shell "$is_vim" 'send-keys M-l'  'select-pane -R'
tmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'
if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\'  'select-pane -l'"
if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\\\'  'select-pane -l'"

# bind-key -T copy-mode-vi 'M-h' select-pane -L
# bind-key -T copy-mode-vi 'M-j' select-pane -D
# bind-key -T copy-mode-vi 'M-k' select-pane -U
# bind-key -T copy-mode-vi 'M-l' select-pane -R
# bind-key -T copy-mode-vi 'M-\' select-pane -l

### vim 配置
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


### 使用
ctrl+b ?            显示快捷键帮助
ctrl+b 空格键       采用下一个内置布局，这个很有意思，在多屏时，用这个就会将多有屏幕竖着展示
ctrl+b !            把当前窗口变为新窗口
ctrl+b  "           模向分隔窗口
ctrl+b %            纵向分隔窗口
ctrl+b q            显示分隔窗口的编号
ctrl+b o            跳到下一个分隔窗口。多屏之间的切换
ctrl+b 上下键      上一个及下一个分隔窗口
ctrl+b C-方向键    调整分隔窗口大小
ctrl+b &           确认后退出当前tmux
ctrl+b [           复制模式，即将当前屏幕移到上一个的位置上，其他所有窗口都向前移动一个。
ctrl+b c           创建新窗口
ctrl+b n           选择下一个窗口
ctrl+b l           最后使用的窗口
ctrl+b p           选择前一个窗口
ctrl+b w           以菜单方式显示及选择窗口
ctrl+b s           以菜单方式显示和选择会话。这个常用到，可以选择进入哪个tmux
ctrl+b t           显示时钟。然后按enter键后就会恢复到shell终端状态
ctrl+b d           脱离当前会话；这样可以暂时返回Shell界面，输入tmux attach能够重新进入之前的会话
