#!/usr/bin/env bash

set -xeuo pipefail

if [[ $# == 0 ]]; then
  exit
fi

key_id="$1"

gh ssh-key delete "${key_id}"
ssh-add -d --apple-use-keychain ~/.ssh/id_ed25519_github_persnal
rm -i ~/.ssh/id_ed25519_github_personal ~/.ssh/id_ed25519_github_personal.pub
