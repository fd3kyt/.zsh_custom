# alias for fd3kyt
alias ls="ls --color=auto"

# grep with color
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias rgrep="rgrep --color=auto"

# highlight gcc output
# usage: make |& mhle
alias mhle="grep -E --color 'error:|^'"
alias mhlw="grep -E --color 'warning:|^'"
alias mhlew="grep -E --color 'error:|warning:|^'"

# ls detail
alias lsl="ls -lia"

# emacs
alias emacs="env LANG="zh_CN.UTF-8" emacs"
alias emacsclient="TERM=xterm-256color emacsclient"
alias ems="~/.emacs.d/personal/startemacs.sh"

# git flow
alias gf="git flow"
alias gff="git flow feature"
alias gfr="git flow release"

# tmux 256 colors
alias tmux="tmux -2"

# polipo
proxy_ip="localhost"
alias ftw="http_proxy=http://$proxy_ip:8123 https_proxy=http://$proxy_ip:8123"
alias ftw-on="export http_proxy=http://$proxy_ip:8123 https_proxy=http://$proxy_ip:8123"
alias ftw-off="unset http_proxy https_proxy"

# anaconda python
alias pyana="export PATH=/home/fd3kyt/anaconda3/bin:$PATH"
alias pip="ftw pip"
alias conda="ftw conda"

# trash
alias rm='echo "Please use trash instead of rm, or type \\\rm."; false'
alias rmt='trash'

# ssh
alias sshalive="ssh -o ServerAliveInterval=60"

# old pytest is not working
alias pytest="echo 'use py.test instead.'"



# utilities
# date for filename
alias datef="date +%Y-%m-%d_%H.%M.%S"

# ls always with -a
alias ls="ls -a"

# overwrite anaconda graphviz
alias dot="/usr/bin/dot"
alias neato="/usr/bin/neato"
alias twopi="/usr/bin/twopi"
alias circo="/usr/bin/circo"
alias fdp="/usr/bin/fdp"
alias sfdp="/usr/bin/sfdp"
alias patchwork="/usr/bin/patchwork"

alias xarsg="xargs -I {}"