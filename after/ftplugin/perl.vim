" execute perl script
nmap ,e :!clear; perl %<CR>
nmap <F5> :!clear; perl %<CR>
nnoremap <F6> :!clear;svn diff --diff-cmd=colordiff %<CR>
nmap ,c :!clear; perl -Ilib -c %<CR>
nmap ,d :!clear; perldoc %<CR>

" color our throws, try and catch blocks
syntax keyword perlControl throw try catch otherwise when then

" folding
let perl_fold=1
let perl_nofold_packages=1
let perl_nofold_subs=1

" lib folder for gf
set path+=lib 
