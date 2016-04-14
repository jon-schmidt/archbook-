# ~/.zshrc

# environment
  export DEFAULT_USER=$USER
  export EDITOR=nvim
  export LANG=en_CA.UTF-8
  export ZSH=$HOME/.oh-my-zsh
  export PYTHON=python2
  export NVM_DIR=$HOME/.config/nvm
  export HOSTSALIASES=$HOME/.hosts
  export NODE_PORT=8080
  export NODE_ENV=DEV

# paths
  export CURRPATH=./bin
  export PERLPATH=/usr/bin/core_perl:/usr/bin/vendor_perl:/usr/bin/site_perl:
  export RUBYPATH=~/.gem/ruby/2.2.0/bin
  export HOMEPATH=~/bin:~/.bin
  export USRPATH=/usr/local/sbin:/usr/local/bin:/usr/bin:
  export PATH=$CURRPATH:$USRPATH:$HOMEPATH:$PERLPATH:$RUBYPATH:$PATH
  export MANPATH=/usr/local/man:$MANPATH

# zsh
  ZSH_THEME='agnoster'
  ENABLE_CORRECTION='true'
  COMPLETION_WAITING_DOTS='true'
  DISABLE_UNTRACKED_FILES_DIRTY='true'
  HIST_STAMPS='dd/mm/yyyy'

  plugins=(archlinux catimg common-aliases compleat sudo node npm python history web-search git git-extras git-fast composer battery systemd tmux tmuxinator web-search docker)

  source $ZSH/oh-my-zsh.sh

  alias zshconf='nvim ~/.zshrc'

# pacman

# aliases
# TODO
#
#   bin/utils/trash:
#     no option:
#       move item to .trash
#     option --empty:
#       empty trash (delete permanently)
#
#   bin/utils/backup:
#     no option:
#       rsync user directory
#     option --dir
#       rsync directory (current or specified)
#
#   apps:
#     neovim -> open new terminal with neovim with some options?
#
#   XXX [desktop]
#
#alias backup=rsync -avzP
#alias neovim=

# git

# ranger

# tmux

# nvm
  source $NVM_DIR/nvm.sh

  [ -s '$NVM_DIR/nvm.sh' ] && . '$NVM_DIR/nvm.sh'
  [[ -r $NVM_DIR/bas_completion ]] && . $NVM_DIR/bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
