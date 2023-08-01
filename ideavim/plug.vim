set surround
set matchit
set highlightedyank
" set easymotion
set NERDTree
set argtextobj
set exchange
set vim-paragraph-motion " 使 {} 可跳转只包含空格的行和空行
" set sneak
set textobj-indent " vii viI
" set quickscope " 高亮 f 能直接找到的字符，有视觉干扰
set ReplaceWithRegister

let g:argtextobj_pairs="(:),{:},<:>"

" caa, daa, via
" 设置顶级为强制级别 g:argumentobject_force_toplevel = 1

" exchange 交换
" cx{motion} 待交换内容，再次 cx{motion} 选择目标交换内容并完成交换
" cxx 选中一行
" cxc clear
" {visual}X v 模式下选中
" nmap cx <Plug>(Exchange)
" xmap X <Plug>(Exchange)
" nmap cxc <Plug>(ExchangeClear)
" nmap cxx <Plug>(ExchangeLine)


" surround
" <div>abc</div> // dst
" <span>abc</span> // cst<div>
" abc  // ysiw) 加括号，  ys{motion} ,  类似 viwS)
