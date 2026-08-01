PROMPT='%# '

autoload -U colors; colors
autoload -U compinit

compinit
zstyle ':completion:*:default' menu select
bindkey -v

setopt hist_ignore_dups
setopt share_history
setopt auto_pushd
setopt auto_cd
setopt beep

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

alias c='workdir'
alias cx='codex exec'
alias du='du -sh'
alias gb='go build'
alias gf='goimports -w . && go fmt ./...'
alias l='ls | sort -h | cat'
alias irb='irb --simple-prompt'
alias n='now'
alias v='vim'

export EDITOR='vim'
export PATH="$PATH:$HOME/.local/bin:$HOME/go/bin"
export PYTHON_BASIC_REPL=1

if [[ -x /opt/homebrew/bin/brew ]]; then
  export HOMEBREW_PREFIX="/opt/homebrew"
  export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
  export HOMEBREW_REPOSITORY="/opt/homebrew"
  fpath[1,0]="/opt/homebrew/share/zsh/site-functions"
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
  [[ -z "${MANPATH-}" ]] && export MANPATH=":"
  export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"
fi

if command -v mise > /dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

if command -v direnv > /dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi

if [[ -x /Applications/CotEditor.app/Contents/SharedSupport/bin ]]; then
  export PATH="/Applications/CotEditor.app/Contents/SharedSupport/bin:$PATH"
fi

if [[ -x /Applications/ChatGPT.app/Contents/Resources ]]; then
  export PATH="/Applications/ChatGPT.app/Contents/Resources:$PATH"
fi

function chpwd() {
  workdir
}

echo -e '\a'
