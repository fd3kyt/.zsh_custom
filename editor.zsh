# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='emacsclient -c -n'
else
  export EDITOR='emacsclient -c -n'
fi
