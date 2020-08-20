echo -e '\a'

source ~/.envrc

alias c="cwd | say -r 480 &"
alias k=kubectl
alias gif='gofmt -l -w . && goimports -l -w .'
alias gt='go test -coverprofile=cover.out'
alias gb='go build -gcflags="-e"'
alias gi='go install'
alias gp='go tool cover -func=cover.out'
alias cf='clang-format'
alias n='noodled &'
alias irb='irb --simple-prompt'
alias ls='ls -lahi'
alias df='df -ah'
alias du='du -sh'
alias sl='slackless'
alias bl='backlog'
