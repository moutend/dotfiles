#!/bin/bash

remove_symbolic_link() {
  rm -rf "$HOME/$1"
  echo "OK	remove_symbolic_link $1"
}

remove_symbolic_link '.profile'
remove_symbolic_link '.zshrc'
remove_symbolic_link '.vimrc'
remove_symbolic_link '.c2d'
remove_symbolic_link '.gitignore'
remove_symbolic_link '.gitconfig'
remove_symbolic_link '.gitconfig.abby-develop'
