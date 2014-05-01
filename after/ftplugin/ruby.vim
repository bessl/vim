" execute ruby script
nmap ,e :!clear; ruby %<CR>
nmap <F5> :!clear; ruby %<CR>
nnoremap <F6> :!clear;svn diff %<CR>
"nmap ,c :!clear; ruby -c %<CR>
nmap ,d :!clear; rdoc %<CR>

set nonu
" lib folder for gf
" set path+=/usr/lib/ruby/gems/1.8/gems/rails-2.3.2/ 

" Matchit support:
if exists("loaded_matchit")
  if !exists("b:match_words")
    let b:match_ignorecase = 0
    let b:match_words =
\ '\%(\%(\%(^\|[;=]\)\s*\)\@<=\%(class\|module\|while\|begin\|until\|for\|if\|unless\|def\|case\)\|\<do\)\>:' .
\ '\<\%(else\|elsif\|ensure\|rescue\|when\)\>:\%(^\|[^.]\)\@<=\<end\>'
  endif
endif
