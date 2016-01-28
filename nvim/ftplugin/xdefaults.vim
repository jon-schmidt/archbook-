" ~/.config/nvim/ftplugin/xdefaults.vim

autocmd BufWritePost FileType xdefaults :silent !xrdb ~/.Xresources
