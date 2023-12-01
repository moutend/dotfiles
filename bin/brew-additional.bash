#!/bin/bash

set -e

brew install nkf
brew install jq
brew install pandoc
brew install gsed
brew install gawk
brew install findutils
brew install tree
brew install exiftool
brew install ffmpeg
brew install git-lfs
brew install youtube-dl
brew install blackhole-2ch
brew install golangci-lint

brew tap laurent22/massren
brew install massren
massren --config editor vim
