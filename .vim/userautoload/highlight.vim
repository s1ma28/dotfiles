
let b:current_syntax = "txt"

" コメント中の特定の単語を強調表示する
augroup HilightsForce
  autocmd!
  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting1', '\(⇒\|☆\|◇\|◎\|★\).*$')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting1 guifg=#FF8353 gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting2', '\(○\|入力例    ：\|パラメータ ：\|●\|入力文字例\|・パラメータ  ：\|重要な情報  ：\|URL例       ：\|備考        ：\|出力例    ：\|URL         ：\).*$')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting2 guifg=#8EE3FF gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting3', '\(＠.*$\|【.*$\)')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting3 guifg=#F0607C gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting4', '\(▽画面名\|▽全画面共通問題\|□\|POST /\|GET /\|\HTTP/\|\画面名    ：\).*$')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting4 guibg=#9A9FA3 guifg=#B7FF6F gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting5', '\(×\).*$')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting5 guibg=#8080C0 guifg=#B3FFB3 gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting6', '\(（自動）\|（転送）\|(自動\|(転送\|？？？.*$\|%{\)')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting6 guifg=#FF71B8 gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting7', '\(▽画面名\|---\)')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting7 guifg=#D5FFAA gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting8', '\(【一部修正】\|【未修正】\|【修正済み】\).*$')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting8 guibg=#8EE3FF guifg=#4C4C4C gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting9', '\(表示URL：\|対象URL：\|備考      ：\|パラメータ：\|URL       ：\|詳細な内容：\|発生条件  ：\|攻撃者ができること：\|パラメータ名      ：\|入力文字例        ：\|Cookieの発行状況：\|入力文字例及び応答例：\|Cookieの発行例：\|規制箇所例：\)')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting9 guifg=#E1E7D1 gui=bold

  autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('highlighting10', '\(■\).*$')
  autocmd WinEnter,BufRead,BufNew,Syntax * highlight highlighting10 guibg=#FF8000 guifg=#B7FF6F gui=bold

augroup END

