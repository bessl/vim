" especially annoying on redhat/windows/osx
set nocompatible
set backspace=indent,eol,start

aunmenu Help.
aunmenu Window.
let no_buffers_menu=1
"set mouse=a

" Support for yankring
set viminfo+=!

" Enable Syntax Colors
" --------------------
syntax on
if has("gui_running")
  colorscheme graz
  set guifont=Monaco:h13
else
  colorscheme graz 
endif

" Move Backup Files to /var/tmp/vsessions
" ------------------------------------
set backupdir=/var/tmp/
set dir=/var/tmp/

" Some File Type Stuff
" --------------------
"  Enable filetype plugins and indention
filetype on
filetype plugin on

set wildmenu
set ruler
set guioptions-=T
set completeopt-=preview
set gcr=a:blinkon0

" Set Better Indention
" --------------------
"  go with smartindent if there is no plugin indent file.
"  but don't outdent hashes
set smartindent
inoremap # X#

" Tab Settings
" ------------
set smarttab
set tabstop=8
set enc=utf-8

" python support
" --------------

autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with omnifunc=pythoncomplete#Complete 
let python_highlight_all=1
" let python_highlight_exceptions=0
" let python_highlight_builtins=0

" ruby support
" ------------
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType rdoc setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.{rd,rdoc} set filetype=rdoc

" php support
" -----------
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
let php_sql_query=0 
let php_show_semicolon_error=1
let php_short_tags=1
let php_folding=1
let php_special_vars=1
"let php_var_selector_is_identifier = 1

autocmd BufNewFile,BufRead *.erb setlocal ft=eruby
let html_no_rendering=1
let g:closetag_default_xml=1
autocmd FileType html,eruby let b:closetag_html_style=1

" HTML
" ---
autocmd FileType html,xhtml,xml,eruby,htmldjango,txt setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" CSS
" ---
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" vim
" ---
autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Javascript
" ----------
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
let javascript_enable_domhtmlcss=1
autocmd BufNewFile,BufRead *.json setlocal ft=javascript

" taglist Plugin (Code Outliner)
nnoremap <silent> <F8> :TagbarToggle<CR>

" Better Search
" -------------
set hlsearch
set incsearch

" buffer
nnoremap <F1> :BufExplorer<CR>
nnoremap ,b :bp<CR>
nnoremap ,f :bn<CR>
nnoremap ,g :e#<CR>
nnoremap ,1 :1b<CR>
nnoremap ,2 :2b<CR>
nnoremap ,3 :3b<CR>
nnoremap ,4 :4b<CR>

" suchehighlight aufheben bei Enter
nnoremap <CR> :nohlsearch<CR>/<BS><CR>

" mapping ,l toggle line numbers
noremap ,l :set invnumber<CR>
set nonu

" remove whitespace
noremap ,w ::%s/\s\+$//<CR>

"folding space/backspace
nnoremap <Space> zo
nnoremap <backspace> zc

" fold everything except cursor scope
nnoremap ,s zMzv<CR>
nnoremap ,S zMzO<CR>

" FuzzyFinder
" http://www.vim.org/scripts/script.php?script_id=1984
nnoremap ,. :FufBuffer<CR>
nnoremap ,/ :FufFile<CR>

" paste modus (against copy and paste wines)
set pastetoggle=,p

" allow switching without saving
set hidden

" foldingleiste
set foldcolumn=0
nnoremap ,0 :set foldcolumn=0<CR>
nnoremap ,9 :set foldcolumn=5<CR>

"nmap <silent> <c-n> :NERDTreeToggle<CR>
nmap <silent> <F9> :NERDTreeToggle<CR>

fun! s:SelectHTML()
  let n = 1
  while n < 50 && n < line("$")
    " check for django
    if getline(n) =~ '{%\s*\(extends\|block\|comment\|ssi\|if\|for\|blocktrans\)\>'
      set ft=htmldjango
      return
    endif
    let n = n + 1
  endwhile
  " go with html
  set ft=html
endfun
autocmd BufNewFile,BufRead *.html,*.htm  call s:SelectHTML()

set statusline=[%l,%v]\ %m%F%r%h\ [%p%%]\ {b%n}\ %Y

nnoremap <F6> :!clear;git diff %<CR>
