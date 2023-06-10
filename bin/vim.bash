#!/bin/bash

editor='vim'

if [ -e "$HOME/Applications/MacVim.app/Contents/MacOS/Vim" ]; then
  editor=$HOME/Applications/MacVim.app/Contents/MacOS/Vim
fi
if [ -e "/Applications/MacVim.app/Contents/MacOS/Vim" ]; then
  editor=/Applications/MacVim.app/Contents/MacOS/Vim
fi
if [ $# -eq 0 ]; then
  $editor
  exit $?
fi
if [ -d $1 ]; then
  echo -e '\a'
  exit
fi

$editor "$@"
