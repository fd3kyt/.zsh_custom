# https://coderwall.com/p/a035gq/zsh-copy-paste-system-wide-for-os-x-like-in-emacs

pb-kill-line () {
  zle kill-line
  echo -n $CUTBUFFER | xclip -i -selection c
}

pb-yank () {
  CUTBUFFER=$(xclip -out -selection c)
  zle yank
}

zle -N pb-kill-line
zle -N pb-yank

bindkey '^K'   pb-kill-line
bindkey '^Y'   pb-yank
