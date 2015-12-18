" ~/.config/nvim/init.d/maps.vim

" 1 important
  let mapleader  = "\<space>"
  noremap <leader>t :TagbarToggle<cr>

" 2 moving around, searching and patterns
  " normal
    nnoremap <cr> G
    nnoremap H 0
    nnoremap J 5j
    nnoremap K 5k
    nnoremap L $

" 3 tags

" 4 displaying text
  noremap <s-h> 0
  noremap <s-j> 5j
  noremap <s-k> 5k
  noremap <s-l> $
  
  " normal
    nnoremap <silent><leader>N :setlocal number!<cr>
  " insert
    inoremap <c-h> <left>
    inoremap <c-j> <down>
    inoremap <c-k> <up>
    inoremap <c-l> <right>

" 5 syntax, highlighting and spelling

" 6 multiple windows
  " normal
    nnoremap <leader>f <c-w>=
    nnoremap <leader>F <c-w>\|

" 7 multiple tab pages

" 8 terminal

" 9 using the mouse

" 10 printing

" 11 messages and info

" 12 selecting text
  " visual
    vnoremap v <Plug>(expand_region_expand)
    vnoremap V <Plug>(expand_region_shrink)

" 13 editing text
  " normal
    nnoremap ' viw<esc>a'<esc>hbi'<esc>lel
    nnoremap " viw<esc>a"<esc>hbi"<esc>lel
    nnoremap < viw<esc>a><esc>hbi<<esc>lel
    nnoremap <leader>j <s-j>
  " insert
    inoremap <tab> <tab>
  " visual
    vnoremap ' iw<esc>a'<esc>hbi'<esc>lel
    vnoremap " iw<esc>a"<esc>hbi"<esc>lel
    vnoremap < iw<esc>a><esc>hbi<<esc>lel
  " operator
    onoremap ( i(
    onoremap ' i'
    onoremap " i"
    onoremap < i<
    onoremap [ i[
    onoremap { i{
    onoremap p( :<c-u>normal! F(vi(<cr>
    onoremap p' :<c-u>normal! F'vi'<cr>
    onoremap p" :<c-u>normal! F"vi"<cr>
    onoremap p< :<c-u>normal! F<vi<<cr>
    onoremap p[ :<c-u>normal! F[vi<<cr>
    onoremap p{ :<c-u>normal! F{vi{<cr>
    onoremap n( :<c-u>normal! f(vi(<cr>
    onoremap n' :<c-u>normal! f'vi'<cr>
    onoremap n" :<c-u>normal! f"vi"<cr>
    onoremap n< :<c-u>normal! f<vi<<cr>
    onoremap n[ :<c-u>normal! f[vi<<cr>
    onoremap n{ :<c-u>normal! f{vi{<cr>

" 14 tabs and indenting
  noremap <tab> >><esc>
  noremap <s-tab> <<<esc>

" 15 folding
  " normal
    nnoremap <leader><leader> zc

" 16 diff mode
  " normal
    nnoremap <silent><leader>d :setlocal diff!<cr>

" 17 mapping

" 18 reading and writing files
  " normal
    nnoremap <s-t><s-e> :tabe
    nnoremap <silent><leader>e :e<cr>
    nnoremap <silent><leader>w :w<cr>
    nnoremap <silent><leader>ve :vsplit $MYVIMRC<cr>
    nnoremap <leader>ww :w !sudo tee %

" 19 the swap file

" 20 command line editing

" 21 executing external commands

" 22 running make and jumping to errors

" 23 language specific

" 24 multi-byte characters

" 25 various
  " normal
  nnoremap <silent><leader>n :NERDTreeToggle<cr>
  nnoremap <silent><leader>S :Scratch<cr>

