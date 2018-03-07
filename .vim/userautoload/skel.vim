
" Make newfile by skelton(template)
augroup skelton
  autocmd!
  autocmd BufNewFile *.py 0r $HOME/.vim/skel/skel.py
augroup END

