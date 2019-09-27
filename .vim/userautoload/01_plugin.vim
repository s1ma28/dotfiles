" NeoBundleの設定
if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))
    " neobundle.vimの初期化
    " NeoBundleを更新する"
    NeoBundleFetch "Shougo/neobundle.vim"

    " 読み込むプラグイン"
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/neocomplcache'
    NeoBundle 'Shougo/neomru.vim'
    NeoBundle 'Shougo/vinarise'
    NeoBundle 'Shougo/neosnippet.vim'
    NeoBundle 'Shougo/neosnippet-snippets'

    " comment
    NeoBundle 'EnhCommentify.vim'

    " (), "", '', {}, <>
    NeoBundle 'Townk/vim-autoclose'

    " "" -> ''
    NeoBundle 'tpope/vim-surround'

    " display indent
    NeoBundle 'nathanaelkane/vim-indent-guides'

    " HTML, CSS"
    NeoBundle 'hail2u/vim-css3-syntax'
    NeoBundle 'gorodinskiy/vim-coloresque'
    NeoBundle 'othree/html5.vim'
    NeoBundle 'mattn/emmet-vim'
    let g:user_emmet_leader_key = '<C-E>'
    "Frequently used key: "<C-e>,"
    
    " JavaScript
    " NeoBundle 'jelera/vim-javascript-syntax'
    NeoBundle 'isRuslan/vim-es6.git'

    " CoffeeScript
    NeoBundle 'kchmck/vim-coffee-script'

    " tag
    NeoBundle 'majutsushi/tagbar'
    ""NeoBundle 'soramugi/auto-ctags.vim'
    NeoBundle 'szw/vim-tags'

    " quickrun
    NeoBundle 'thinca/vim-quickrun'

    " Open browser
    NeoBundle 'tyru/open-browser.vim'
    " Reload html when save file.
    NeoBundle 'tell-k/vim-browsereload-mac'

    " Preview Markdown, HTML
    NeoBundle 'kannokanno/previm'

    " outline
    NeoBundle 'https://github.com/Shougo/unite-outline'
    "NeoBundle 'https://github.com/vim-scripts/VOoM'

    " color schema
    NeoBundle 'nanotech/jellybeans.vim'
    NeoBundle 'vim-scripts/twilight256.vim'
    NeoBundle 'jpo/vim-railscasts-theme'

    " colemak keymap
    NeoBundle 'https://github.com/jooize/vim-colemak'

    " foldmethod setting
    NeoBundle 'https://github.com/LeafCage/foldCC.vim'
    set foldmethod=marker

    " ファイルタイプの検出、ファイルタイプ別プラグイン"
    filetype plugin indent on

    " インストールのチェック
    NeoBundleCheck
    
call neobundle#end()

" color scheme activate
set t_Co=256
"colorscheme twilight256
"colorscheme jellybeans
"colorscheme railscasts
colorscheme twilight


" プラグインの遅延読み込み
" インサートモードに入った時に自動で読み込み
" "NeoBundleLazy 'Shougo/neocomplcache', {
" "      \ 'autoload' : {
" "      \   'insert' : 1,
" "      \ }}
" "NeoBundleLazy 'Shougo/neosnippet', {
" "      \ 'autoload' : {
" "      \   'insert' : 1,
" "      \ }}


"""" for hl_matchit
""let g:hl_matchit_enable_on_vim_startup = 1
""let g:hl_matchit_hl_groupname = 'Title'
""let g:hl_matchit_allow_ft_regexp = 'html\|vim\|ruby\|sh'
""
"""" vim-tags
""nnoremap <C-]> g<C-]>
""
"""------------------------------------
"""" endwise.vim
"""------------------------------------
""let g:endwise_no_mappings=1
""
""" YankRing  これがあると Vim の. コマンドの挙動がおかしくなる
"""nmap ,y :YRShow<CR>
