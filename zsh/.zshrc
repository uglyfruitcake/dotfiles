DOTFILES=$HOME/dotfiles
source $DOTFILES/antigen/antigen.zsh

antigen bundle ssh-agent

antigen use oh-my-zsh

antigen theme $DOTFILES/james.zsh-theme --no-local-clone

DISABLE_CORRECTION="true"

source $DOTFILES/tmuxinator/tmuxinator.zsh

export EDITOR='vim'

if [[ -d $HOME/Desktop/gambit ]]; then
    PATH=$PATH:$HOME/Desktop/gambit
fi


setopt AUTO_CD

antigen apply
