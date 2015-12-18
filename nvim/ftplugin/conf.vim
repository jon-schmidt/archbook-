" ~/.config/nvim/ftplugin/conf.vim

augroup CONF
  autocmd!
  autocmd BufWritePost *i3/config :silent !i3 restart
augroup END
