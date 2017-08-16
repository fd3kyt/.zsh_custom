function clone_to_sources(){
    cd ~/Sources/ || return 1
    # By default, if stderr is not attached to a terminal, the clone
    # progress is not shown. Use --progress to force it.
    dir_string=$(git clone --progress $* 2>&1 | tee /dev/tty | grep -P "^Cloning into")
    dir_name=$(echo "$dir_string" | grep -P -o "'\w+'" | grep -P -o "\w+")
    cd $dir_name || return 1
}
