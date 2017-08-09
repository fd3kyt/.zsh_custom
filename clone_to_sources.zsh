function clone_to_sources(){
    cd ~/Sources/ || return 1
    git clone $*
}
