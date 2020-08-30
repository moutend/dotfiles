#!/bin/bash

set -e

cd /usr/local/share/zsh
sudo chmod -R 755 ./site-functions
cd /usr/local/share/
sudo chmod -R 755 zsh
sudo chown -R root:staff zsh
