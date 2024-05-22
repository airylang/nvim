" :echo "C-Tab pressed in normal mode"<CR>

" nvim-tree
nnoremap <C-o> :NvimTreeFindFile<CR>
" nnoremap <C-p> :NvimTreeToggle<CR>
nnoremap <C-i> :NvimTreeClose<CR>


" 切换主题
nnoremap <leader><left> :PreviousColorScheme<CR>
nnoremap <leader><right> :NextColorScheme<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
