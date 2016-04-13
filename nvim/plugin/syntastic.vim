" ~/.config/nvim/plugin/syntastic.vim
" plugin: scrooloose/syntastic

let g:syntastic_aggregate_errors=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1

" HTML5
let g:syntastic_html_tidy_exec='tidy5'

" javascript
let g:syntastic_javascript_checkers=['jshint']
"let g:syntastic_javascript_eslint_exec='eslint_d'
