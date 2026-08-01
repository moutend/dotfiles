#!/usr/bin/env bash

set -xeuo pipefail

if [[ $# == 0 ]]; then
  exit
fi

email="$1"

ssh-keygen -t ed25519 -C "${email}" -f ~/.ssh/id_ed25519_github_personal
ssh-add --apple-use-keychain ~/.ssh/id_ed25519_github_personal
gh ssh-key add ~/.ssh/id_ed25519_github_personal.pub --title "$(hostname)-$(date +%Y-%m-%d)"
