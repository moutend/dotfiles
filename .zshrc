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
  wd.bash &
}

eval "$(direnv hook zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/koyanagi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/koyanagi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/koyanagi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/koyanagi/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(nodenv init -)"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
