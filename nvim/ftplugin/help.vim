" ~/.config/nvim/ftplugin/help.vim

augroup HELP
  autocmd!
  autocmd FileType help autocmd BufEnter nnoremap <buffer> q :q<cr>
augroup END
