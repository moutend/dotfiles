source "$HOME/github.com/moutend/dotfiles/.envrc"

alias chrome='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"'
alias gf='go fmt ./... && goimports -l -w .'
alias gt='go test -coverprofile=cover.out'
alias gb='go build -gcflags="-e"'
alias gp='go tool cover -func=cover.out'
alias irb='irb --simple-prompt'
alias cf='clang-format'
alias sf='swift-format format -i'
alias df='df -ah'
alias du='du -sh'
alias tree='tree -N .'
alias c='wd.bash &'
alias n='now.bash &'
alias v='vim.bash'

echo -e '\a'
. "$HOME/.cargo/env"
