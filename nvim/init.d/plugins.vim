" ~/.config/nvim/init.d/plugins.vim

source ~/.nvim/plugins/plug.vim

call plug#begin('~/.nvim/plugins')

  " moving around, searching and patterns
  " Plug 'ervandew/supertab' XXX creates issues with tabs
  Plug 'kien/ctrlp.vim'

  " tags
  " Plug 'majutsushi/tagbar' XXX not using this...

  " displaying text

  " syntax, highlighting and spelling
  Plug 'scrooloose/syntastic'

    " completion
    Plug 'Valloric/YouCompleteMe', { 'do': 'python2 ./install.py' }
    Plug 'Shougo/deoplete.nvim'

  " multiple windows
  Plug 'easymotion/vim-easymotion'

  " multiple tab pages

  " terminal
  "Plug 'kassio/neoterm'

  " using the mouse

  " printing

  " messages and info
  Plug 'bling/vim-airline'

  " selecting text
  Plug 'terryma/vim-expand-region'

  " editing text
  Plug 'chrisbra/NrrwRgn'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'scrooloose/nerdcommenter'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-surround'

    " snippets
    Plug 'honza/vim-snippets'
    Plug 'sirver/ultisnips'

  " tabs and indenting

  " folding

  " diff mode

  " mapping

  " reading and writing files

  " the swap file

  " command line editing

  " executing external commands

  " running make and jumping to errors


  " language specific

    " html/css
    Plug 'othree/html5.vim', { 'for' : [ 'html', 'css' ] }
    Plug 'mattn/emmet-vim', { 'for' : [ 'html', 'css' ] }

    " javascript
    Plug 'moll/vim-node', { 'for' : 'javascript' }
    Plug 'pangloss/vim-javascript', { 'for' : 'javascript' }
    Plug 'walm/jshint.vim', { 'for' : 'javascript' }
    Plug 'ternjs/tern_for_vim', { 'for' : 'javascript' }

    " php
    Plug 'StanAngeloff/php.vim', { 'for' : 'php' }

    " coffeescript
    Plug 'kchmck/vim-coffee-script', { 'for' : 'coffee' }

    " markdown
    Plug 'tpope/vim-markdown', { 'for' : 'markdown' }

    " tmux.conf
    Plug 'tmux-plugins/vim-tmux'

  " multi-byte characters

  " various

    " file browsing and searching
    Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do' : './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'rking/ag.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'Shougo/unite.vim'

    " tmux
    if exists('$TMUX_PANE')
      Plug 'benmills/vimux'
      Plug 'christoomey/vim-tmux-navigator'
      "Plug 'jgdavey/tslime.vim'
      Plug 'tmux-plugins/vim-tmux-focus-events'
    endif

    " clipboard
    Plug 'cazador481/fakeclip.neovim'

    " git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " task management
    Plug 'farseer90718/vim-taskwarrior'
    Plug 'mtth/scratch.vim'

    " running tests
    Plug 'janko-m/vim-test'

    " sessions
    Plug 'tpope/vim-obsession'

call plug#end()

" autocmds
augroup PLUG
  autocmd!
  autocmd BufEnter,BufRead ~/.config/nvim/plugin/*.vim,~/.config/nvim/init.d/plugins.vim :nnoremap <buffer> gx :silent! :!xdg-open https://www.github.com/<cfile><cr>
augroup END
