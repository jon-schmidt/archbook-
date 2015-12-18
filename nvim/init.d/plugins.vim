" ~/.config/nvim/init.d/plugins.vim

source ~/.nvim/plugins/plug.vim

call plug#begin('~/.nvim/plugins/')
  Plug 'bling/vim-airline'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'easymotion/vim-easymotion'
  Plug 'edkolev/promptline.vim'
  Plug 'farseer90718/vim-taskwarrior'
  Plug 'gmarik/Vundle.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'majutsushi/tagbar'
  Plug 'mattn/emmet-vim'
  Plug 'mtth/scratch.vim'
  Plug 'othree/html5.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'rking/ag.vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'scrooloose/syntastic'
  Plug 'Shougo/unite.vim'
  Plug 'terryma/vim-expand-region'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-surround'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
  Plug 'walm/jshint.vim'
call plug#end()
  " ag.vim
  " vim-javascript
    let g:javascript_enable_domhtmlcss=1
