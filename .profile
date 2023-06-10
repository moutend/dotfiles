source "$HOME/github.com/moutend/dotfiles/.envrc"
source "$HOME/.cargo/env"

alias chrome='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"'
alias gof='go fmt ./... && goimports -l -w .'
alias got='go test -coverprofile=cover.out'
alias gob='go build -gcflags="-e"'
alias gop='go tool cover -func=cover.out'
alias irb='irb --simple-prompt'
alias cf='clang-format'
alias sf='swift-format format -i'
alias ls='ls -lahi'
alias df='df -ah'
alias du='du -sh'
alias tree='tree -N .'
alias c='wd.bash &'
alias n='now.bash &'
alias v='vim.bash'

echo -e '\a'
