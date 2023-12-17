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
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/koyanagi/Anaconda/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/koyanagi/Anaconda/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/koyanagi/Anaconda/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/koyanagi/Anaconda/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

