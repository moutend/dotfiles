source ~/.profile

autoload -U colors; colors
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select
bindkey -v

HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000

setopt hist_ignore_dups
setopt share_history
setopt auto_pushd
setopt auto_cd

PROMPT='%# '

function chpwd() {
  cwd | say -r 720 &
}

eval "$(direnv hook zsh)"
