function zp(){
    local command="peco"
    local query="$*"
    local prompt="cd"
    local arguments

    arguments=(--prompt $prompt)

    if [[ -n "$query" ]];then
        arguments=($arguments --query "\"$query \"")
    fi

    target=$(z | sort -n -r |\
                 $command $arguments|\
                 tr -s " " | cut -d " " -f 2)
    cd $target
}
