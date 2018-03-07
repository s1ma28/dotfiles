"" unite.vim ##########################################
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Leader>f [unite]

" 起動時にインサートモード起動
let g:unite_enable_start_insert = 1

" <Leader> = '\'
" unite.vim keymap
"
nnoremap [unite]u  :<C-u>Unite -no-split<Space>
nnoremap <silent> [unite]f :<C-u>Unite<Space>file<CR>
nnoremap <silent> [unite]b :<C-u>Unite<Space>bookmark<CR>
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>
nnoremap <silent> [unite]r :<C-u>UniteWithBufferDir file file/new -buffer-name=file<CR>
nnoremap <silent> [unite]u :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>

" Voom (アウトライン一覧を開く）の起動
"nmap <Leader>v :<C-u>Voom markdown


"バッファ一覧
nnoremap <silent> ,vr :UniteResume<CR>


" unite-build map
nnoremap <silent> ,vb :Unite build<CR>
nnoremap <silent> ,vcb :Unite build:!<CR>
nnoremap <silent> ,vch :UniteBuildClearHighlight<CR>

" カーソル直前の単語を削除する。/ や . で止まらないように設定.
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
" 単語単位からパス単位で削除するように変更
imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
endfunction


" [ unite-outline ]
"nnoremap <silent> [unite]o :<C-u>Unite -no-quit -vertical -winwidth=30 outline<Esc>
nnoremap <silent> [unite]o :<C-u>Unite -vertical -winwidth=30 outline<Esc>



