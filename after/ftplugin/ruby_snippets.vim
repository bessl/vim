if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet def def ".st."methodName".et." ".st.et."<CR>".st.et."<CR>end<CR>".st.et
exec "Snippet class class ".st."className".et."<CR>".st.et."<CR>end<CR>".st.et
exec "Snippet begin begin<CR>".st.et."<CR>rescue ".st.et."<CR>".st.et."<CR>end<CR>".st.et
exec "Snippet : :".st."key".et." => \"".st."value".et."\"".st.et."<CR>".st.et
exec "Snippet each each { |".st."element".et."| ".st."element".et.".".st.et." }<CR>".st.et
exec "Snippet require require '".st."modul".et."'<CR>".st.et
exec "Snippet p puts ".st.et
exec "Snippet ri raise ".st."name".et.".inspect"
