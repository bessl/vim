" Vim syntax file
" Language: TODO
" Author:   Bernhard Essl
" Created:  Mon Aug  2 12:49:37 CEST 2010
" Modified: Mon Aug  2 12:49:37 CEST 2010

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn match tododone        /FERTIG/ 
syn match todoinprogress  /DABEI/ 
syn match todotodo        /NEU/
syn match tododate	  /\d\{2}\/\d\{2}\/\d\{2}/
syn region done start=/\*\*FERTIG/ end=/\*\*/ 
syn region inprogress start=/\*\*DABEI/ end=/\*\*/ 
syn region matttodo start=/\*\*NEU/ end=/\*\*/ 
syn region majorpoint start=/==/ end=/>/me=s-3 contains=ALL
syn match minorpoint  />/ 
syn region todomodified start=/Modified:/ end=/$/

if !exists("did_todo_syntax_inits")
	let did_todo_syntax_inits = 1
	hi link tododone tDone
    hi link done tDone
    hi default tDone ctermfg=DarkGreen guifg=White guibg=DarkGreen gui=bold
	hi link todoinprogress tProgress
    hi link inprogress tProgress
    hi default tProgress ctermfg=DarkYellow guifg=Black guibg=Yellow gui=bold
	hi link todotodo tTodo	
    hi link matttodo tTodo
    hi default tTodo ctermfg=White ctermbg=Red guifg=White guibg=Red gui=bold
    hi link majorpoint tMajor
     hi default tMajor ctermfg=Yellow guifg=Yellow gui=bold
    hi link minorpoint tMinor
     hi default tMinor ctermfg=DarkBlue guifg=Yellow
    hi link tododate tdate
    hi link todomodified tdate
    hi default tdate ctermfg=DarkRed guifg=DarkRed

endif

let b:current_syntax="todo"
map! ,n >NEU
map! ,1  [1]  
map! ,2  [2]  
map! ,3  [3]  


" == Beispiel Formatierung
" 
"   >FERTIG [1] genau fertig
"   >DABEI  [2]dauert noch etwas, wartet auf etwas
"   >NEU [3] ist noch zu tun
"     um Neu tag einzufuegen einfach , und n im Insert Mode
