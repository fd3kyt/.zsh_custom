function zp(){
    target=`z | sort -n -r | peco | tr -s " " | cut -d " " -f 2`
    cd $target
}
