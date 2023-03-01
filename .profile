echo -e '\a'

if [ -d "$HOME/Sounds" ]; then
  defaults write .GlobalPreferences com.apple.sound.beep.sound "$HOME/Sounds/Glass.aiff"
fi

source ~/.envrc

alias chrome='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"'
alias n='noodled &'
alias c="cwd | say -r 480 &"
alias k=kubectl
alias gif='go fmt ./... && goimports -l -w .'
alias gt='go test -coverprofile=cover.out'
alias gb='go build -gcflags="-e"'
alias gi='go install'
alias gp='go tool cover -func=cover.out'
alias cf='clang-format'
alias sf='swift-format format -i'

alias irb='irb --simple-prompt'
alias ls='ls -lahi'
alias df='df -ah'
alias du='du -sh'
alias tree='tree -N .'
. "$HOME/.cargo/env"
