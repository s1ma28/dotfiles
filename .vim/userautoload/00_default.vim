
syntax on
set cindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set pastetoggle=<F5>
set number

" ステータスライン
"set statusline=%F%r%h%=

" 73 桁目以降の色を変える ( cc でToggle )
noremap <Plug>(ToggleColorColumn)
            \ :<c-u>let &colorcolumn = len(&colorcolumn) > 0 ? '' :
            \   join(range(73, 9999), ',')<CR>
nmap cc <Plug>(ToggleColorColumn)

" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2


set mouse=a
" set cursorline <- invalidated 2017/05/03
"set nohlsearch
set hlsearch
set ignorecase
set incsearch
set wildmenu wildmode=list:full


set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

" File
set hidden
set autoread

"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

" ファイルタイプを分ける
autocmd BufRead,BufNewFile *.{md,mdwn,mkd,mkdn,mark*}    set filetype=markdown
autocmd BufRead,BufNewFile,BufReadPre *.coffee           set filetype=coffee
autocmd BufRead,BufNewFile,BufReadPre *.html             set filetype=html
autocmd BufRead,BufNewFile *.txt set filetype=txt

autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et
autocmd FileType html       setlocal sw=2 sts=2 ts=2 et

" クリップボードに貼り付ける
" sudo apt-get install xsel を実行する必要あり。
"vmap <C-c> :w !xsel -ib<CR><CR>
" ヤンクでクリップボードにコピー
"set clipboard=unnamed,autoselect
set clipboard=unnamedplus

" クリップボードにある文字列をvimに直接貼り付ける
" Shift + Insert 

" アンドゥファイル無効化    .un~ ファイルが作られなくなる
set noundofile
" アンドゥファイルを一箇所にまとめる
set undodir=~/.vim/logs

" スワップファイル 保存先
set directory=~/.vim/logs

" backup ファイル 保存先
set backupdir=~/.vim/logs


" vi 互換モードを利用しない
" 互換モードを使うと便利な機能は無効になっている。
"--------------------------------------------------------------------------
set nocompatible               " Be iMproved
filetype off                   " Required!

