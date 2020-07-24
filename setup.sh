#!/usr/bin/env bash

set -e
set -x
cd ~

# install oh-my-zsh
# sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/fd3kyt/.zsh_custom.git

cd ~/.zsh_custom/
git submodule update --init --recursive
