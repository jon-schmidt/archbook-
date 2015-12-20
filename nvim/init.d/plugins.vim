" ~/.config/nvim/init.d/plugins.vim

source ~/.nvim/plugins/plug.vim

function! SetPlugs(plugin_list) 

  " begin plug
  call plug#begin('~/.nvim/plugins')

    function! StartPlug(plugin,...)
      if len(a:000) > 0
        Plug a:plugin, a:000[0]
      else
        Plug a:plugin
      endif
    endfunction

    for p in a:plugin_list
      if len(p[0]) > 1
        exec StartPlug(p[0], p[1])
      else
        exec StartPlug(p)
      endif
      unlet p
    endfor

  " end plug
  call plug#end()

endfunction

" default plugins
  let plugin_list = [] 

  " moving around, searching and patterns
  let plugin_list += [ 'rking/ag.vim', 'Shougo/unite.vim', 'kien/ctrlp.vim', ]
  " tags
  let plugin_list += [ 'majutsushi/tagbar', ] 
  " displaying text

  " syntax, highlighting and spelling
  let plugin_list += [ 'scrooloose/syntastic', ['Valloric/YouCompleteMe', { 'do': 'python2 ./install.py' }], ] 

  " multiple windows
  let plugin_list += [ 'easymotion/vim-easymotion', ]

  " multiple tab pages

  " terminal
  let plugin_list += [ 'edkolev/promptline.vim', ]

  " using the mouse

  " printing

  " messages and info
  let plugin_list += [ 'bling/vim-airline', ]

  " selecting text
  let plugin_list += [ 'terryma/vim-expand-region', ]

  " editing text
  let plugin_list += [ 'scrooloose/nerdcommenter', 'terryma/vim-multiple-cursors', 'tpope/vim-surround', ]

  " tabs and indenting

  " folding

  " diff mode

  " mapping

  " reading and writing files

  " the swap file

  " command line editing
  let plugin_list += [ 'tpope/vim-fugitive', ] 

  " executing external commands

  " running make and jumping to errors

  " language specific

  " multi-byte characters

  " various
  let plugin_list += [ 'farseer90718/vim-taskwarrior', 'mtth/scratch.vim', 'scrooloose/nerdtree', 'Xuyuanp/nerdtree-git-plugin', ]

" tmux plugins
let plugin_list += [ 'christoomey/vim-tmux-navigator', ]

" coffeescript plugins
let plugin_list += [ ['kchmck/vim-coffee-script', { 'for' : 'coffee' }], ]

" html/css plugins
let plugin_list += [ ['othree/html5.vim', { 'for' : [ 'html', 'css' ] }], ['mattn/emmet-vim', { 'for' : [ 'html', 'css' ] }], ]

" javascript plugins
let plugin_list += [ ['pangloss/vim-javascript', { 'for' : 'javascript' }], ['walm/jshint.vim', { 'for' : 'javascript' }], ]

" markdown plugins
let plugin_list += [ ['tpope/vim-markdown', { 'for' : 'markdown' }], ]

exec SetPlugs(plugin_list)

" autocmds
augroup PLUG
  autocmd!
  autocmd BufEnter,BufRead ~/.config/nvim/plugin/*.vim,~/.config/nvim/init.d/plugins.vim :nnoremap <buffer> gx :silent! :!xdg-open https://www.github.com/<cfile><cr>
augroup END
