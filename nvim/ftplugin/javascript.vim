" ~/.config/nvim/ftplugin/javascript.vim

let javascript_enable_domhtmlcss=1

autocmd BufRead,BufWritePost FileType javascript JSHint

syntax on
