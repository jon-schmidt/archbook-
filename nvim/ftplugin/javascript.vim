" ~/.config/nvim/ftplugin/javascript.vim

augroup JS
  autocmd!
  autocmd BufNewFile,BufRead,BufWritePre FileType javascript :JSHint
augroup END
