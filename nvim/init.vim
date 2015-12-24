" ~/.config/nvim/init.vim

for initfile in split(globpath('~/.config/nvim/init.d', '*'), '\n')
  execute 'source' initfile
endfor

autocmd!
autocmd BufWritePost init.vim source % | :set filetype=vim
autocmd FileType help autocmd BufRead,BufEnter noremap <buffer> q :q<cr>

filetype indent plugin on
syntax on
colorscheme disciple
