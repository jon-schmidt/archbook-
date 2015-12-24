" ~/.config/nvim/plugin/better-whitespace.vim
" plugin: ntpeters/vim-better-whitespace

" autocommands
augroup WHITESPACE
  autocmd!
  autocmd ColorScheme * exec 'highlight ExtraWhitespace ctermbg=' . synIDattr(hlID('Error'), 'fg')
  autocmd BufWritePre * StripWhitespace
augroup END
