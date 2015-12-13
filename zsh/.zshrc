# ~/.zshrc

# environment
  export EDITOR='nvim'
  export LANG=en_CA.UTF-8
  export HOME=/home/users/jschmidt
  export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.bin/:$HOME/bin:$HOME/.gem/ruby/2.2.0/bin:$PATH
  export MANPATH='/usr/local/man:$MANPATH'
  export ZSH=$HOME/.oh-my-zsh
  export PYTHON='python2'


# zsh# :::
  ENABLE_CORRECTION='true'
  COMPLETION_WAITING_DOTS='true'
  DISABLE_UNTRACKED_FILES_DIRTY='true'
  HIST_STAMPS='dd/mm/yyyy'

  plugins=(archlinux catimg common-aliases compleat sudo node npm python history web-search git git-extras git-fast composer battery systemd tmux web-search)

  source $ZSH/oh-my-zsh.sh

  alias zshconf='nvim ~/.zshrc'
  #plugins=(archlinux catimg common-aliases compleat sudo node npm python history web-search git git-extras composer battery systemd tmux vi-mode web-search)
# ;;;
# apps# :::
  
  alias phpstart='sudo apachectl start && sudo mysqld -u root &'
  alias phpstop='sudo apachectl stop && sudo mysqladmin shutdown -u root -p'
  alias digossh='ssh -p 3825 admin@$DIGO'
  alias tunassh='ssh -p 3825 tuna_admin@$DIGO'
  alias tunaftp='sftp -oPort=3825 tuna_admin@$DIGO'

  # digitalocean
  export DIGO=104.131.157.159
    
  # henrikesfarm
  alias henrikessh='ssh webmaster@henrikesfarm.nl@shell.greenhost.nl'
 
  # nvm
  export NVM_DIR=$HOME/.nvm

  source $NVM_DIR/nvm.sh

  [ -s '$NVM_DIR/nvm.sh' ] && . '$NVM_DIR/nvm.sh'
  [[ -r $NVM_DIR/bas_completion ]] && . $NVM_DIR/bash_completion

  # pacman 
  
  # powerline
  . /usr/share/zsh/site-contrib/powerline.zsh
 
  # ranger
# ;;;
