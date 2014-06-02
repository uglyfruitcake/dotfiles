autoload -U colors && colors

PROMPT='%{$fg[cyan]%}%D %{$fg_bold[magenta]%}%D{%L:%M %p} $reset_color %{$fg[yellow]%}$(get_pwd) $(git_prompt_info)
$reset_color→ '

# something I found to update the clock
TMOUT=1
TRAPALRM() {
  zle reset-prompt
}

function get_pwd() {
  echo "${PWD/$HOME/~}"
}


fuction git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"
