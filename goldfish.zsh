function gf-sshfs(){
    set -x
    sshfs "kyt@192.168.1.74:" "/home/74/"
    sshfs "goldfish@192.168.1.74:" "/home/74.goldfish/"
    sshfs "root@192.168.1.45:/" "/home/45.root-dir/"
}
