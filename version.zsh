#!/usr/bin/env bash

function split()
{
    string=$1
    # the option of read is zsh-specific.
    IFS='|' read -A ADDR <<< "$string"
    for i in "${ADDR[@]}"; do
        echo "$i"
    done
}

function executable_info(){
    local exe=${1}

    # echo "############################################################"
    echo "==========" ${exe} "========================================"
    ${exe} --version | grep -P "\d+.\d+" | head -n 1
    which ${exe}
}

# 1. get last command
# 2. extract all the executable
# 3. print their infomation
function version(){
    local last_command splited exe

    last_command=`history | tail -n 1 | cut -f 2- -d " "`
    splited=`split ${last_command}`

    while read line; do
        exe=`echo $line | awk '{$1=$1};1' | cut -f 1 -d " "`
        executable_info ${exe}
    done <<< "$splited"
}
