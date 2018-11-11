" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nmap <CR> t<CR><ESC>

nnoremap 0 $
nnoremap 1 0
vnoremap 0 $
vnoremap 1 0

" タブ移動
nmap <C-Right> :tabnext<CR>
nmap <C-Left>  :tabprevious<CR>
nmap <C-W>     :tabclose<CR>

" 長い行折り返し（切り替え)
map <F2> :set wrap! wrap?<CR>



" クリップボードの内容を貼り付け (Lubuntu で必要)
imap <C-v> <C-O>"+gp
cmap <S-Insert> <C-R>+
cmap <C-v> <S-Insert>

" Deleteキー無効化(コマンドモード中のみ、使える)
noremap <Del> <Nop>

" スペース + . で.vimrc"
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
"
" [Backspace] で既存の文字を削除できるように設定
"  start - 既存の文字を削除できるように設定
"  eol - 行頭で[Backspace]を使用した場合上の行と連結
"  indent - オートインデントモードでインデントを削除できるように設定
set backspace=start,eol,indent

" 特定のキーに行頭および行末の回りこみ移動を許可する設定
"  b - [Backspace]  ノーマルモード ビジュアルモード
"  s - [Space]      ノーマルモード ビジュアルモード
"   - [→]          ノーマルモード ビジュアルモード
"  [ - [←]          挿入モード 置換モード
"  ] - [→]          挿入モード 置換モード
"  ~ - ~            ノーマルモード
set whichwrap=b,s,[,],,~

"  hh で ESC の代わり
inoremap <silent> hh <Esc>

" colemak keymap run
silent! source "$HOME/vimfiles/bundle/vim-colemak/colemak.vim"

nnoremap <expr> / _(":%s;<Cursor>;;gn")
nnoremap ? ?\v

function! s:move_cursor_pos_mapping(str, ...)
    let left = get(a:, 1, "<Left>")
    let lefts = join(map(split(matchstr(a:str, '.*<Cursor>\zs.*\ze'), '.\zs'), 'left'), "")
    return substitute(a:str, '<Cursor>', '', '') . lefts
endfunction

function! _(str)
    return s:move_cursor_pos_mapping(a:str, "\<Left>")
endfunction


" ファイルタイプをtxt に設定。(snippet、展開用)
nnoremap <C-f>t :set ft=txt<CR>
