# ~/.zshrc

# environment# :::
  export EDITOR='nvim'
  export LANG=en_CA.UTF-8
  export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.bin/:$HOME/bin:$HOME/.gem/ruby/2.2.0/bin:$PATH
  export MANPATH='/usr/local/man:$MANPATH'
  export ZSH=$HOME/.oh-my-zsh
  export PYTHON='python2'

# ;;;
# zsh# :::
  ENABLE_CORRECTION='true'
  COMPLETION_WAITING_DOTS='true'
  DISABLE_UNTRACKED_FILES_DIRTY='true'
  HIST_STAMPS='dd/mm/yyyy'

  plugins=(archlinux catimg common-aliases compleat sudo node npm python history web-search git git-extras git-fast composer battery systemd tmux web-search)

  source $ZSH/oh-my-zsh.sh
  source ~/.zprofile

  alias zshconf='nvim ~/.zshrc'
# ;;;
# nvm
  export NVM_DIR=$HOME/.nvm

  source $NVM_DIR/nvm.sh

  [ -s '$NVM_DIR/nvm.sh' ] && . '$NVM_DIR/nvm.sh'
  [[ -r $NVM_DIR/bas_completion ]] && . $NVM_DIR/bash_completion

# pacman 
  
# powerline
. /usr/share/zsh/site-contrib/powerline.zsh
 
# ranger

