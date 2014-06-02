DOTFILES=$HOME/dotfiles
source $DOTFILES/antigen/antigen.zsh

antigen bundle ssh-agent

antigen use oh-my-zsh

antigen theme $DOTFILES/james.zsh-theme --no-local-clone

DISABLE_CORRECTION="true"

source $DOTFILES/tmuxinator/tmuxinator.zsh

export EDITOR='vim'

export PATH=/usr/local/bin:$PATH
setopt AUTO_CD

antigen apply
