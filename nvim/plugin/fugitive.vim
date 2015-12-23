" ~/.config/nvim/plugin/fugitive.vim
" plugin: tpope/vim-fugitive

" maps
nnoremap <leader>G :Git 
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gC :Gcommit -m ''<left>
nnoremap <leader>gd :Gvdiff<cr>
nnoremap <leader>gD :Gdiff 
nnoremap <leader>gx :GBrowse<cr>
nnoremap <leader>gX :GBrowse 
