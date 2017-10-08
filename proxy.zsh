# proxy
proxy_ip="192.168.1.177"
proxy_port="3128"

proxy_address="http://$proxy_ip:$proxy_port"
function ftw(){
    http_proxy=$proxy_address https_proxy=$proxy_address "$@"
}
function ftw-on(){
    export http_proxy=$proxy_address
    export https_proxy=$proxy_address
}
function ftw-off(){
    unset http_proxy https_proxy
}


alias pip="echo using ftw;ftw pip"
alias conda="ftw conda"
