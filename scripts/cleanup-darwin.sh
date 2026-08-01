#!/usr/bin/env bash

set -xeuo pipefail

echo "Removing $HOME/.config, are you sure?"
sudo rm -rf $HOME/.config

rm -rf $HOME/.gitconfig
rm -rf $HOME/.gitconfig.common
rm -rf $HOME/.gitconfig.local
rm -rf $HOME/.local
rm -rf $HOME/.vimrc
rm -rf $HOME/.vimswap
rm -rf $HOME/.zshrc
