" /home/jschmidt/.vimrc
" 1 important
	set nocompatible
" 2 moving around, searching and patterns
	set whichwrap=b,s,h,l
	set startofline
	set autochdir
	set incsearch
	set ignorecase
	set smartcase
" 3 tags
	set tags=./.tags,~/.vim/tags
" 4 displaying text
	set scroll=12
	set scrolloff=5
	set wrap
  "set linebreak
  set breakindent
	set showbreak=//
	set sidescrolloff=4
	set display=uhex
	set cmdheight=1
	set window=30
	set redrawtime=20
	set writedelay=0
	set number
	set numberwidth=4
" 5 syntax, highlighting and spelling
	set filetype=on
	set syntax
	set hlsearch
	set nocursorcolumn
	set cursorline
  set nospell
" 6 multiple windows
	set laststatus=2
	set equalalways
	set helpheight=20
	set hidden
	set switchbuf=split
" 7 multiple tab pages
	set showtabline=2
" 8 terminal
" 9 using the mouse
	set mouse=
  set mousehide
" 10 printing
" 11 messages and info
  set shortmess+=c
	set showcmd
	set verbose=0
	set confirm
	set visualbell
" 12 selecting text
" 13 editing text
	set undolevels=3500
	set undoreload=15000
  set textwidth=81
  set wrapmargin=2
	set formatoptions=tqco
  set showmatch
  set matchtime=2
  set matchpairs=<:>,{:},[:],(:)
" 14 tabs and indenting
	set tabstop=2
	set shiftwidth=2
	set smarttab
	set softtabstop=2
	set shiftround
	set expandtab
	set autoindent
	set smartindent
" 15 folding
  set foldmethod=marker
  set foldmarker=:::,;;;
" 16 diff mode
" 17 mapping
  set timeoutlen=500
  set ttimeoutlen=0
" 18 reading and writing files
  "set backup
	"set backupdir=~/.vim/backups
	set autowrite
  set autoread
" 19 the swap file
	set directory=~/.vim/swaps
" 20 command line editing
  set history=100
	set wildmenu
	set undofile
	set undodir=~/.vim/undos
" 21 executing external commands
	set shell=/usr/bin/zsh
" 22 running make and jumping to errors
" 23 language specific
" 24 multi-byte characters
  set encoding=utf-8
  set termencoding=utf-8
" 25 various
	set secure
  " mapleader
    let mapleader  = "\<space>"
  " keymaps
    noremap <tab> >>
    noremap <S-tab> <<
    noremap <S-h> 0
    noremap <S-j> 5j
    noremap <S-k> 5k
    noremap <S-l> $
    "noremap <C-h> <C-w><C-w>
    noremap <Leader><tab> <C-w><C-w>
    noremap <Leader>t :TagbarToggle<cr>
    " normal
      nnoremap <cr> G
      nnoremap H 0
      nnoremap J 5j
      nnoremap K 5k
      nnoremap L $
      nnoremap QQ ZZ<cr>
      nnoremap <S-t><S-e> :tabe
      nnoremap ' viw<esc>a'<esc>hbi'<esc>lel
      nnoremap " viw<esc>a"<esc>hbi"<esc>lel
      nnoremap < viw<esc>a<<esc>hbi><esc>lel
      nnoremap <C-s> <C-g>
      nnoremap <Leader>j <S-j>
      nnoremap <Leader>F <C-w>\|
      nnoremap <Leader>f <C-w>=
      nnoremap <Leader>n :NERDTreeToggle<cr>
      nnoremap <Leader>S :Scratch<cr>
      nnoremap <Leader>e :e<cr>
      nnoremap <Leader>w :w<cr>
      nnoremap <Leader>WW :w !sudo tee %<cr>
      nnoremap <Leader>j <S-j>
      nnoremap <Leader>ww :w !sudo tee %
      nnoremap <Leader>ve :vsplit $MYVIMRC<cr>
      nnoremap <Leader><Leader> zc
    " insert
      inoremap <c-i> <c-k>
      inoremap <c-h> <left>
      inoremap <c-j> <down>
      inoremap <c-k> <up>
      inoremap <c-l> <right>
      inoremap <c-i> <c-k>
      inoremap <tab> <tab>
    " visual
      vmap v <Plug>(expand_region_expand)
      vmap V <Plug>(expand_region_shrink)
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
  " abbrev
    " normal
    " insert
    " visual
    " operator
  " autocommands
    autocmd!
    augroup CONF
      autocmd!
      autocmd BufWritePost .vimrc source % | :set filetype=vim
      autocmd BufWritePost .nvimrc source % | :set filetype=vim
      autocmd BufWritePost *i3/config :! i3 restart
      autocmd BufWritePost ~/.Xresources :! xrdb ~/.Xresources
    augroup END
    augroup CSS
      autocmd!
    augroup END
    augroup HTML
      autocmd!
      " HTML mappings
        autocmd FileType html :iabbrev <buffer> newhtml  <!DOCTYPE html><cr><tab><html><cr></html><c-o>O<tab><head><cr></head><c-o>O<tab><title></title><cr><link rel="stylesheet<right> href="style.css<right>><cr><script src="main.js<right>></script><esc>0kkf>a
        autocmd FileType html :iabbrev <buffer> <a <a href="<right> ref=><left>"<esc>xFhf"a
      " new file
        autocmd BufNewFile *.html :execute 'normal inewhtml '
    augroup END
    augroup JS
      autocmd!
      " keymaps
        autocmd FileType javascript :nnoremap <esc><esc> <esc>A;<esc>
      " abbrevs
        autocmd FileType javascript :iabbrev <buffer> iff if <left>(<left> 
        " vimcorrect: )
        autocmd FileType javascript :iabbrev <buffer> forr for (
        " vimcorrect: )
        autocmd FileType javascript :iabbrev <buffer> func function
        autocmd FileType javascript :iabbrev <buffer> ret return;
      " JSHint
        autocmd BufNewFile,BufRead,BufWritePre FileType javascript :JSHint
      " new file
        autocmd BufNewFile *.js :execute 'normal inewjs \<esc>"%p'
    augroup END
  " Vundle
    filetype off
      set runtimepath+=~/.vim/bundle/Vundle.vim
      call vundle#begin()
      " Plugins
        Plugin 'bling/vim-airline'
        Plugin 'christoomey/vim-tmux-navigator'
        Plugin 'easymotion/vim-easymotion'
        Plugin 'edkolev/promptline.vim'
        Plugin 'farseer90718/vim-taskwarrior'
        Plugin 'gmarik/Vundle.vim'
        Plugin 'kien/ctrlp.vim'
        Plugin 'kchmck/vim-coffee-script'
        Plugin 'majutsushi/tagbar'
        Plugin 'mattn/emmet-vim'
        Plugin 'mtth/scratch.vim'
        Plugin 'othree/html5.vim'
        Plugin 'pangloss/vim-javascript'
        Plugin 'rking/ag.vim'
        Plugin 'scrooloose/nerdcommenter'
        Plugin 'scrooloose/nerdtree'
        Plugin 'scrooloose/syntastic'
        Plugin 'Shougo/unite.vim'
        Plugin 'terryma/vim-expand-region'
        Plugin 'terryma/vim-multiple-cursors'
        Plugin 'tpope/vim-fugitive'
        Plugin 'tpope/vim-markdown'
        Plugin 'tpope/vim-surround'
        Plugin 'Valloric/YouCompleteMe'
        Plugin 'walm/jshint.vim'
      call vundle#end()
      filetype indent plugin on
      syntax on
    " ag.vim
    " airline
      let g:airline#extensions#tabline#enabled=1
      let g:airline_powerline_fonts=1
      let g:airline_theme='lucius'
    " NERDTree
      let g:NERDTreeMapActivateNode='<space><space>'
      let g:NERDTreeMapActivateNode='l'
      let g:NERDTreeCaseSensitiveSort=1
      let g:NERDTreeBookmarksSort=1
      let g:NERDTreeMouseMode=2
      let g:NERDTreeShowBookmarks=0
      let g:NERDTreeShowHidden=1
      let g:NERDTreeMinimalUI=1
      let g:NERDTreeDirArrows=0
    " scratch
      let g:scratch_height=16
    " syntastic
      "set statusline+=%#warningmsg#
      "set statusline+=%{SyntasticStatusLineFlag()}
      "set statusline+=%*
      let g:syntastic_always_populate_loc_list=1
      let g:syntastic_auto_loc_list=1
      let g:syntastic_check_on_open=1
      let g:syntastic_check_on_wq=0
    " vim-javascript
      let g:javascript_enable_domhtmlcss=1
  " colorschemes
    "colorscheme lilydjwg_dark
    "colorscheme iangenzo
    "colorscheme C64
    "colorscheme gruvbox
    "colorscheme mayansmoke
    "colorscheme paintbox
    "colorscheme pink
    "colorscheme tabula
    colorscheme disciple
