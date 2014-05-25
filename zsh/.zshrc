# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/oh-my-zsh

ZSH_THEME="jamescampbell"

DISABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/tmuxinator/tmuxinator.zsh

export EDITOR='vim'

export PATH=/usr/local/bin:$PATH
setopt AUTO_CD
