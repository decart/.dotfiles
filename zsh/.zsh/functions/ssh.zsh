ssh() {
  if [ -n "$TMUX" ]; then
    tmux -2u rename-window "ssh[$(echo $* | rev | cut -d '@' -f1 | rev)]";
    command ssh "$@";
    tmux -2u set-window-option automatic-rename "on" > /dev/null;
  else
    command ssh "$@";
  fi
}
