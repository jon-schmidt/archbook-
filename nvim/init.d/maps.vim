" ~/.config/nvim/init.d/maps.vim

let mapleader  = "\<space>"

" moving around, searching and patterns
nnoremap <cr> G
nnoremap H 0
nnoremap J 5j
nnoremap K 5k
nnoremap L $

" tags

" displaying text
noremap <s-h> 0
noremap <s-j> 5j
noremap <s-k> 5k
noremap <s-l> $

nnoremap <silent><leader>N :setlocal number!<cr>

" syntax, highlighting and spelling

" multiple windows
nnoremap <leader>f <c-w>=
nnoremap <leader>F <c-w>\|
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" multiple tab pages

" terminal

" using the mouse

" printing

" messages and info

" selecting text

" editing text
"nnoremap ' viw<esc>a'<esc>hbi'<esc>lel XXX wraps around word. not *very* useful
"nnoremap " viw<esc>a"<esc>hbi"<esc>lel XXX
"nnoremap < viw<esc>a><esc>hbi<<esc>lel XXX
nnoremap <leader>j <s-j>

inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <tab> <tab>

vnoremap ' iw<esc>a'<esc>hbi'<esc>lel
vnoremap " iw<esc>a"<esc>hbi"<esc>lel
vnoremap < iw<esc>a><esc>hbi<<esc>lel

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

" tabs and indenting
noremap <tab> >><esc>
noremap <s-tab> <<<esc>

" folding
nnoremap <leader><leader> zc

" diff mode
nnoremap <silent><leader>d :setlocal diff!<cr>

" mapping

" reading and writing files
nnoremap <s-t><s-e> :tabe
nnoremap <silent><leader>e :e<cr>
nnoremap <silent><leader>w :w<cr>
nnoremap <silent><leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>ww :w !sudo tee %

" the swap file

" command line editing

" executing external commands

" running make and jumping to errors

" language specific

" multi-byte characters

" various
