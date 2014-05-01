let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet each <% ".st."object".et.".each do |".st."item".et."| %><CR>".st.et."<CR><% end %>"
exec "Snippet if <% if ".st."expr".et." %><CR>".st.et."<CR><% end %>"
exec "Snippet C <%- ".st.et." -%>"
exec "Snippet V <%= ".st.et." %>"
exec "Snippet VE <%= h ".st.et." %>"
exec "Snippet T <%= t '".st.et."' %>"
exec "Snippet D <%= debug @".st.et." %>"
exec "Snippet end <% end %>"
exec "Snippet partial <%= render :partial => '".st.et."' %>"
exec "Snippet link <%= link_to(h(".st."linktitel".et."), :action => '".st."action".et."', :id => ".st."objekt".et.") %>"
