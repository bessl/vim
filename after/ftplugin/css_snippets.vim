if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet # #".st."name".et." ".st.et." {<CR><TAB>".st.et."<CR>}<CR>".st.et
exec "Snippet . .".st."name".et." ".st.et."{<CR><TAB>".st.et."<CR>}<CR>".st.et
