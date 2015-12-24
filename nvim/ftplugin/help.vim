" ~/.config/nvim/ftplugin/help.vim

augroup HELP
  autocmd!
  autocmd FileType help autocmd BufRead,BufEnter noremap <buffer> q :q<cr>
augroup END
