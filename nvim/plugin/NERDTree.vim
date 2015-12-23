" ~/.config/nvim/plugin/NERDTree."vim
" plugin: scrooloose/nerdtree
" plugin: Xuyuanp/nerdtree-git-plugin

" variables
let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeBookmarksSort = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1

" maps
nnoremap <silent><leader>n :silent! NERDTreeToggle<cr>

" highlighting
function! NERDTreeSetHighlighting()

  function! GetColors(group)
    return {'fg' : synIDattr(hlID(a:group), 'fg', 'cterm'), 'bg' : synIDattr(hlID(a:group), 'fg', 'cterm') }
  endfunction

  function! HighlightFile(extension, fg, bg)
    exec 'autocmd filetype nerdtree highlight '. a:extension .' ctermfg='. a:fg .' ctermbg='. a:bg 
    exec 'autocmd filetype nerdtree syn match '. a:extension .' /^\s\+.*'. a:extension .'$/'
    exec 'autocmd filetype nerdtree syn match '. a:extension .' /^\s\+.*'. a:extension .'\*$/'
  endfunction

  let highlight_bg = GetColors('Comment').bg
  let default = { 'fg' : GetColors('String').fg, 'bg' : highlight_bg }
  let files = {
        \ 'ignore' : GetColors('Comment').fg,
        \ 'conf' : GetColors('Constant').fg,
        \ 'vim' : GetColors('Type').fg,
        \ 'md' : GetColors('Statement').fg,
        \ 'html' : GetColors('Identifier').fg,
        \ 'css' : GetColors('Special').fg,
        \ 'js' : GetColors('NonText').fg,
        \ 'php' : GetColors('PreProc').fg,
        \ }

    " defaults
  exec 'autocmd filetype nerdtree highlight any ctermfg=1 ctermbg='. highlight_bg
  exec 'autocmd filetype nerdtree syn match any /^\s\+.*\w$/'
  exec 'autocmd filetype nerdtree syn match any /^\s\+.*\w\*$/'

  for file in items(files)
    exec HighlightFile(file[0], file[1], highlight_bg)
  endfor

endfunction

exec NERDTreeSetHighlighting()

" autocommands
augroup NERDTree
  autocmd!

  " set NERDTree highlighting on colorscheme change
  autocmd ColorScheme * exec NERDTreeSetHighlighting()

  " start NERDTree if no files specified
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

  " close if only NERDTree
  autocmd BufEnter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

augroup END
