" ~/.config/nvim/ftplugin/xdefaults.vim

augroup X
  autocmd!
  autocmd BufWritePost FileType xdefaults :silent !xrdb ~/.Xresources
augroup END
