if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet head <head><CR><meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\" /><CR><title>".st.et."</title><CR>".st.et."<CR></head><CR>".st.et
exec "Snippet script <script type=\"text/javascript\" language=\"javascript\" charset=\"utf-8\"><CR>// <![CDATA[<CR><TAB>".st.et."<CR>// ]]><CR></script><CR>".st.et
exec "Snippet style <style type=\"text/css\" media=\"screen\"><CR>/* <![CDATA[ */<CR>".st.et."<CR>/* ]]> */<CR></style><CR>"
exec "Snippet body <body><CR>".st.et."<CR></body>"
exec "Snippet script <script type=\"text/javascript\" language=\"javascript\"><CR>// <![CDATA[<CR>".st.et."<CR>// ]]><CR></script>"

" table
exec "Snippet table <table><CR>".st.et."<CR></table>"
exec "Snippet tr <tr><CR>".st.et."<CR></tr>"
exec "Snippet td <td>".st.et."</td><CR>".st.et
exec "Snippet th <th>".st.et."</th><CR>".st.et
" head
exec "Snippet title <title>".st.et."</title>"
" container
exec "Snippet div <div><CR>".st.et."<CR></div><CR>".st.et
exec "Snippet divi <div id=\"".st.et."\"><CR>".st.et."<CR></div><CR>".st.et
exec "Snippet br <br />".st.et
exec "Snippet p <p>".st.et."</p>".st.et
exec "Snippet ul <ul><CR>".st.et."<CR></ul>".st.et
exec "Snippet li <li>".st.et."</li>".st.et
" Text
exec "Snippet href <a href=\"".st.et."\">".st.et."</a>".st.et
exec "Snippet h1 <h1>".st.et."</h1>".st.et
exec "Snippet h2 <h2>".st.et."</h2>".st.et
exec "Snippet h3 <h3>".st.et."</h3>".st.et
exec "Snippet h4 <h4>".st.et."</h4>".st.et
exec "Snippet h5 <h5>".st.et."</h5>".st.et
exec "Snippet h6 <h6>".st.et."</h6>".st.et
exec "Snippet img <img src=\"".st.et."\" />".st.et

" Formular
exec "Snippet form <form action=\"".st.et."\" method=\"".st.et."\"><CR>".st.et."<CR></form><CR>".st.et
exec "Snippet input <input type=\"".st."TYPE".et."\" name=\"".st.et."\" value=\"".st.et."\" ".st.et."/>".st.et
exec "Snippet textarea <textarea name=\"".st."Name".et."\">".st.et."</textarea>".st.et
exec "Snippet select <select name=\"".st."Name".et."\"><CR>".st.et."<CR></select>".st.et
exec "Snippet option <option value=\"".st."value".et."\">".st.et."</option><CR>".st.et

