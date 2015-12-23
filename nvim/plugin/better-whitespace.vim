" ~/.config/nvim/plugin/better-whitespace.vim

let g:better_whitespace_filetypes_blacklist+=[
      \ 'md',
      \ ]


" highlighting
set whitespace_color = synIDattr(hlID('Error'), 'fg')

highlight ExtraWhitespace cterm=whitespace_color

" autocommands
augroup WHITESPACE
  autocmd!
  autocmd BufWritePre * StripWhitespace
augroup END
  

