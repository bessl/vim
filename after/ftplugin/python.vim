" execute script F5
nmap <F5> :!clear; python %<CR>

" syntax highlight
syn keyword Gruen self False True None

" python import go to file (gf) hack
" With that snippet you will be able to go to your import statements and hit
" ‘gf’ on one of them and it’ll jump you to that file.
"python << EOF
"import os
"import sys
"import vim
"for p in sys.path:
"  if os.path.isdir(p):
"    vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"EOF
