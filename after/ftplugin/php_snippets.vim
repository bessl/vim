if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim
exec "Snippet if? $".st."retVal".et." = (".st."condition".et.") ? ".st."a".et." : ".st."b".et." ;<CR>".st.et
exec "Snippet php <?php<CR><CR>".st.et."<CR><CR>?>"
exec "Snippet foreach foreach($".st."variable".et." as $".st."key".et." => $".st."value".et." )<CR>{<CR>".st.et."<CR>}".st.et

exec "Snippet elseif elseif ( ".st."condition".et." )<CR>{<CR><Tab>".st.et."<CR>}<CR>".st.et
exec "Snippet switch switch ( ".st."variable".et." )<CR>{<CR>case '".st."value".et."':<CR>".st.et."<CR>break;<CR><CR>".st.et."<CR><CR>default:<CR>".st.et."<CR>break;<CR>}<CR>".st.et
exec "Snippet class #doc<CR>#classname:".st."ClassName".et."<CR>#scope:".st."PUBLIC".et."<CR>#<CR>#/doc<CR><CR>class ".st."ClassName".et." ".st."extendsAnotherClass".et."<CR>{<CR>#internal variables<CR><CR>#Constructor<CR>function __construct ( ".st."argument".et.")<CR>{<CR>".st.et."<CR>}<CR>###<CR><CR>}<CR>###".st.et
exec "Snippet incll include_once( '".st."file".et."' );".st.et
exec "Snippet incl include( '".st."file".et."' );".st.et
exec "Snippet ifelse if ( ".st."condition".et." )<CR>{<CR>".st.et."<CR>}<CR>else<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet $_ $_REQUEST['".st."variable".et."']<CR>".st.et
exec "Snippet case case '".st."variable".et."':<CR>".st.et."<CR>break;<CR>".st.et
exec "Snippet print print \"".st."string".et."\"".st.et.";".st.et."<CR>".st.et
exec "Snippet function ".st."public".et."function ".st."FunctionName".et." (".st.et.")<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet if if ( ".st."condition".et." )<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet else else<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet array $".st."arrayName".et." = array( '".st.et."',".st.et." );".st.et
exec "Snippet -globals $GLOBALS['".st."variable".et."']".st.et.st."something".et.st.et.";<CR>".st.et
exec "Snippet req require( '".st."file".et."' );<CR>".st.et
exec "Snippet for for ( $i=0; $i < count($".st.et."); $i++ )<CR>{ <CR>".st.et."<CR>}<CR>".st.et
exec "Snippet while while ( ".st.et." )<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet mysql_query $res = mysql_query(\"".st."condition".et."\"); <CR>while ($row = mysql_fetch_assoc($res)) {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet P <?php ".st.et." ?>"
exec "Snippet D var_dump(".st.et.");"
exec "Snippet C ChromePhp::warn(".st.et.");"
