if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet C {% ".st.et." %}"
exec "Snippet V {{ ".st.et." }}"
exec "Snippet if {% if ".st.et." %}"
exec "Snippet for {% for ".st.et." %}"
exec "Snippet endif {% endif %}".st.et 
exec "Snippet endfor {% endfor %}".st.et 
exec "Snippet else {% else %}".st.et
