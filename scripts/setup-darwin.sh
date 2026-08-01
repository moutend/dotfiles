#!/usr/bin/env bash

set -xeuo pipefail

mkdir -p $HOME/.local
mkdir -p $HOME/.vimswap

ln -s $PWD/.config $HOME/.config
ln -s $PWD/.gitconfig $HOME/.gitconfig
ln -s $PWD/.gitconfig.common $HOME/.gitconfig.common
ln -s $PWD/.gitconfig.darwin $HOME/.gitconfig.local
ln -s $PWD/.local/bin $HOME/.local/bin
ln -s $PWD/.vimrc $HOME/.vimrc
ln -s $PWD/.zshrc $HOME/.zshrc
