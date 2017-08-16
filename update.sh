#!/usr/bin/env bash

cd "$ZSH_CUSTOM" || exit
fetch_output=$(git fetch --dry-run)
if [[ -n $fetch_output ]];then
    git pull
    zsh
else
    echo "Already up to date."
fi
