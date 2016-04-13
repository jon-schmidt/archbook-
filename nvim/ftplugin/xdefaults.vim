" ~/.config/nvim/ftplugin/xdefaults.vim

syntax on

autocmd BufWritePost FileType xdefaults :silent !xrdb ~/.Xresources
