
" setting folding
set foldtext=FoldCCtext()

let g:foldCCtext_head = '"Name: "'
let g:foldCCtext_tail = '"Lines: ". (v:foldend-v:foldstart+1)'
let g:foldCCtext_enable_autofdc_adjuster = 1

" Key binding
nnoremap [space] <nop>
nmap <Space> [space]

" Open fold
nnoremap [space]i zo

" Close fold
nnoremap [space]h :<C-u>call <SID>smart_foldcloser()<CR>
function! s:smart_foldcloser() "{{{
  if foldlevel('.') == 0
    norm! zM
    return
  endif

  let foldc_lnum = foldclosed('.')
  norm! zc
  if foldc_lnum == -1
    return
  endif

  if foldclosed('.') != foldc_lnum
    return
  endif
  norm! zM
endfunction
"}}}

" Insert fold marker 
nnoremap  [space][     :<C-u>call <SID>put_foldmarker(0)<CR> 
nnoremap  [space]]     :<C-u>call <SID>put_foldmarker(1)<CR> 
function! s:put_foldmarker(foldclose_p) "{{{
  let crrstr = getline('.')
  let padding = crrstr=='' ? '' : crrstr=~'\s$' ? '' : ' '
  let [cms_start, cms_end] = ['', '']
  let outside_a_comment_p = synIDattr(synID(line('.'), col('$')-1, 1), 'name') !~? 'comment'
  if outside_a_comment_p
    let cms_start = matchstr(&cms,'\V\s\*\zs\.\+\ze%s')
    let cms_end = matchstr(&cms,'\V%s\zs\.\+')
  endif
  let fmr = split(&fmr, ',')[a:foldclose_p]. (v:count ? v:count : '')
  exe 'norm! A'. padding. cms_start. fmr. cms_end
endfunction
"}}}

" All close fold without now folding area.
nnoremap <silent>[space]<C-h>    zMzvzc

" All Open fold by now fold level.
noremap <silent>[space]0    :<C-u>set foldlevel=<C-r>=foldlevel('.')<CR><CR>

" Move fold (top/bottom) where you are now.
noremap [space]n ]z
noremap [space]p [z

" Delete a set of fold marker at the cursor.
noremap [space]d zd
" Delete all fold marker in the window.
nnoremap <silent>[space]<C-D>    zE

