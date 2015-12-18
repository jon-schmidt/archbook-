" ~/.config/nvim/init.d/options.vim

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
  set showfulltag

" 4 displaying text
	set scroll=12
	set scrolloff=5
	set wrap
  set breakindent
	set showbreak=//
	set sidescrolloff=4
	set display=uhex
	set cmdheight=1
	set window=30
	set redrawtime=10
	set writedelay=0
	set number
	set numberwidth=4

" 5 syntax, highlighting and spelling
	set filetype
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
  set splitright

" 7 multiple tab pages
	set showtabline=2
 
" 8 terminal

" 9 using the mouse
	set mouse=
  set mousehide
 
" 10 printing
  set printfont=inconsolata

" 11 messages and info
  set shortmess+=c
  set ruler
	set showcmd
	set verbose=0
	set confirm
  set errorbells
	set visualbell

" 12 selecting text

" 13 editing text
	set undolevels=4500
	set undoreload=15000
  set textwidth=81
  set wrapmargin=4
	set formatoptions=tqco
  set matchtime=1
  set matchpairs=<:>,{:},[:],(:),":"
  set nojoinspaces
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
  set foldlevel=2
  set foldminlines=2
  set foldmethod=indent
  set foldignore=

" 16 diff mode

" 17 mapping
  set timeoutlen=500
  set ttimeoutlen=0

" 18 reading and writing files
  set writebackup
  set backup
  set backupcopy=auto
	set backupdir=~/.vim/backups
	set autowrite
  set autoread

" 19 the swap file
	set directory=~/.vim/swaps
  set updatetime=10000

" 20 command line editing
  set history=100
  set fileignorecase
  set wildignorecase
	set wildmenu
	set undofile
	set undodir=~/.vim/undos

" 21 executing external commands
	set shell=/usr/bin/zsh

" 22 running make and jumping to errors

" 23 language specific

" 24 multi-byte characters
  set termencoding=utf-8

" 25 various
  set exrc
  set secure
