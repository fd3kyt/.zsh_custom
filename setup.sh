#!/usr/bin/env bash

set -e
set -x
cd ~

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/fd3kyt/.zsh_custom.git
mv ~/.zshrc ~/.zshrc.backup
cp ~/.zsh_custom/.zshrc.template ~/.zshrc

cd ~/.zsh_custom/
git submodule update --init --recursive
