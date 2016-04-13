" ~/.config/nvim/ftplugin/javascript.vim

syntax on

let javascript_enable_domhtmlcss=1

iabbrev <buffer> Promise( Promise((resolve, reject) => {

autocmd BufRead,BufWritePost FileType javascript :JSHint %

