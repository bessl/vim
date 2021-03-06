if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

" Catalyst 
exec "Snippet log \$self->log->debug(\"".st."".et."\"); ".st.et
exec "Snippet logd \$self->log_dump(".st."".et."); ".st.et

exec "Snippet sub sub ".st."FunctionName".et." {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet class package ".st."ClassName".et.";<CR><CR>".st.et.st."ParentClass".et.st.et.";<CR><CR>sub new {<CR>my \$class = shift;<CR>\$class = ref \$class if ref \$class;<CR>my $self = bless {}, \$class;<CR>\$self;<CR>}<CR><CR>1;<CR>".st.et
exec "Snippet xfore ".st."expression".et." foreach @".st."array".et.";".st.et
exec "Snippet xwhile ".st."expression".et." while ".st."condition".et.";".st.et
exec "Snippet xunless ".st."expression".et." unless ".st."condition".et.";".st.et
exec "Snippet slurp my $".st."var".et.";<CR><CR>{ local $/ = undef; local *FILE; open FILE, \"<".st."file".et.">\"; $".st."var".et." = <FILE>; close FILE }".st.et
exec "Snippet if if (".st.et.") {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet unless unless (".st.et.") {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet ifee if (".st.et.") {<CR>".st.et."<CR><BS>} elsif (".st.et.") {<CR>".st.et."<CR><BS>} else {<CR>".st.et."<CR>}<CR><CR>".st.et
exec "Snippet ife if (".st.et.") {<CR>".st.et."<CR>} else {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet for for (my \$".st."var".et." = 0; \$".st."var".et." < ".st."expression".et."; \$".st."var".et."++) {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet foreach foreach my \$".st."var".et." (@".st."array".et.") {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet eval eval {<CR>".st.et."<CR>};<CR>if ($@) {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet while while (".st.et.") {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet xif ".st."expression".et." if ".st."condition".et.";".st.et
exec "Snippet join ".st."expression".et." join(\"\",\$var); ".st."condition".et.";".st.et

"============================================
" Perl
"============================================
exec "Snippet dump use Data::Dumper; warn Dumper ".st."var".et.";<CR>".st.et
exec "Snippet say print ".st."var".et.", \"\\n\";<CR>".st.et
exec "Snippet self my \$self = shift;<CR>".st.et
exec "Snippet data my \$data = do { local $/; <DATA> };<CR>".st.et
exec "Snippet argf while (<>) {<CR>chomp;<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet isa if (blessed $".st."var".et." and $".st."var".et."->isa('".st."Class".et."')) {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet readtsv use IO::File;<CR>use Text::CSV_XS;<CR><CR>my \$fh = IO::File->new('".st."filename".et."') or die 'cannot open file.';<CR>my \$csv = Text::CSV_XS->new({ sep_char => \"\\t\", binary => 1 });<CR>until ($fh->eof) {<CR>my $cols = $csv->getline($fh);<CR>unless ($cols) {<CR>warn $csv->error_diag;<CR>next;<CR>}<CR>my (".st.et.") = @$cols;<CR>}<CR>$fh->close;<CR>".st.et
