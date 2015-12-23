" ~/.config/nvim/init.d/options.vim

" important
set nocompatible

" moving around, searching and patterns
set whichwrap=b,s,h,l
set startofline
set autochdir
set incsearch
set ignorecase
set smartcase

" tags
set tags=./.tags,~/.nvim/tags
set showfulltag

" displaying text
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

" syntax, highlighting and spelling
set filetype
set syntax
set hlsearch
set nocursorcolumn
set cursorline
set nospell

" multiple windows
set laststatus=2
set equalalways
set helpheight=20
set hidden
set switchbuf=split
set splitright

" multiple tab pages
set showtabline=2

" terminal

" using the mouse
set mouse=
set mousehide

" printing
set printfont=inconsolata

" messages and info
set shortmess+=c
set ruler
set showcmd
set verbose=0
set confirm
set errorbells
set visualbell

" selecting text

" editing text
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

" tabs and indenting
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set shiftround
set expandtab
set autoindent
set smartindent

" folding
set foldlevel=2
set foldminlines=2
set foldmethod=indent
set foldignore=

" diff mode

" mapping
set timeoutlen=500
set ttimeoutlen=0

" reading and writing files
set writebackup
set backup
set backupcopy=auto
set backupdir=~/.nvim/backups
set autowrite
set autoread

" the swap file
set directory=~/.nvim/swaps
set updatetime=250

" command line editing
set history=100
set fileignorecase
set wildignorecase
set wildmenu
set undofile
set undodir=~/.nvim/undos

" executing external commands
set shell=/usr/bin/zsh

" running make and jumping to errors

" language specific

" multi-byte characters
set termencoding=utf-8

" various
set exrc
set secure
