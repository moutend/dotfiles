#!/bin/bash

create_home_bin_directory() {
  if [ ! -d $HOME/bin ]; then
    mkdir "$HOME/bin"
    echo "OK	create_home_bin_directory"
  else
    echo "SKIP	create_home_bin_directory"
  fi
}

create_symbolic_link() {
  if [ ! -e "$HOME/github.com/moutend/dotfiles/$1" ]; then
    echo "SKIP	create_symbolic_link $1"
    return 0
  fi
  if [ -e "$HOME/$1" ]; then
    echo "FOUND	create_symbolic_link $1"
  else
    ln -s "$HOME/github.com/moutend/dotfiles/$1" "$HOME/$1"
    echo "OK	create_symbolic_link $1"
  fi
}

create_say_script() {
  say -v '?' | grep -q 'Kyoko (Enhanced)'

  if [ $? -eq 0 ]; then
    cp "$HOME/github.com/moutend/dotfiles/bin/say_kyoko_enhanced.bash" "$HOME/bin/say.bash"
  else
    cp "$HOME/github.com/moutend/dotfiles/bin/say_kyoko.bash" "$HOME/bin/say.bash"
  fi

  echo "OK	create_say_script"
}

set_beep_sound() {
  if [ -d "$HOME/github.com/moutend/Sounds" ]; then
    defaults write .GlobalPreferences com.apple.sound.beep.sound "$HOME/github.com/moutend/Sounds/Glass.aiff"
    echo "OK	set_beep_sound"
  else
    echo "SKIP	set_beep_sound"
  fi
}

set_beep_sound

create_home_bin_directory
# create_say_script

create_symbolic_link '.profile'
create_symbolic_link '.zshrc'
create_symbolic_link '.vimrc'
create_symbolic_link '.c2d'
create_symbolic_link '.gitignore'
create_symbolic_link '.gitconfig'

rm -rf "$HOME/.vimswap" && mkdir "$HOME/.vimswap"
