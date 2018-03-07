
let g:vim_tags_auto_generate = 1
let g:vim_tags_ctags_binary = "/usr/bin/ctags"
 
nnoremap <Leader>t :<C-u>TagsGenerate!<CR>
nnoremap <C-]> g<C-]>
