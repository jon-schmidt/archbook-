" ~/.config/nvim/ftplugin/conf.vim

syntax on

autocmd BufWritePost *i3/config :silent !i3 restart
autocmd BufEnter,BufRead ~/.config/tmux/.tmux.conf,*.tmux.conf :nnoremap <buffer> gx :silent! :!xdg-open https://www.github.com/<cfile><cr>
