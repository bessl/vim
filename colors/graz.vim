set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "graz"

hi Normal ctermbg=Black ctermfg=White guibg=#212121 guifg=White
hi Number ctermbg=Black ctermfg=Green guibg=#212121 guifg=Green
hi Comment ctermbg=Black ctermfg=DarkGray guibg=#212121 guifg=DarkGrey
hi Search ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Special ctermbg=Black ctermfg=White guibg=#212121 guifg=White
hi Constant ctermbg=Black ctermfg=Grey guibg=#212121 guifg=Grey
hi Statement ctermbg=Black ctermfg=Yellow guibg=#212121 guifg=Yellow
hi Type ctermbg=Black ctermfg=White guibg=#212121 guifg=White
hi PreProc ctermbg=Black ctermfg=White guibg=#212121 guifg=White
hi Identifier ctermbg=Black ctermfg=White guibg=#212121 guifg=White
hi Visual ctermbg=Red ctermfg=White guibg=Red guifg=White

hi phpSpecialFunction ctermbg=Black ctermfg=White guibg=#212121 guifg=White
hi phpSpecialChar ctermbg=Black ctermfg=White guibg=#212121 guifg=White
hi phpFunctions ctermbg=Black ctermfg=White guibg=#212121 guifg=White
hi phpOperator ctermbg=Black ctermfg=Yellow guibg=#212121 guifg=White
" Klassenzeugs
hi phpType ctermbg=Black ctermfg=Yellow guibg=#212121 guifg=White
hi phpSCKeyword ctermbg=Black ctermfg=Yellow guibg=#212121 guifg=White
hi phpInclude ctermbg=Black ctermfg=Yellow guibg=#212121 guifg=White
" Variabeln
hi phpIdentifier ctermbg=Black ctermfg=White guibg=#212121 guifg=White 
hi phpStringDouble ctermbg=Black ctermfg=Green guibg=#212121 guifg=White 
hi phpStringSingle ctermbg=Black ctermfg=Green guibg=#212121 guifg=White 
" Blade
hi Blade ctermbg=Black ctermfg=Blue guibg=White guifg=Blue

hi NonText ctermbg=Black guibg=#212121
hi Todo ctermbg=Green ctermfg=White guibg=Green guifg=White
hi StatusLine cterm=NONE ctermfg=White ctermbg=DarkGreen guibg=DarkGreen guifg=White
hi StatusLineNC guifg=Gray guifg=Gray
hi VertSplit guifg=Gray guifg=Gray

hi Gruen ctermbg=Black ctermfg=Green guibg=#212121 guifg=Green
hi DjangoBloecke ctermbg=DarkGrey guibg=DarkGrey


syntax enable
