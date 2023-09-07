ssh() {
  local host=$(echo $* | rev | cut -d '@' -f1 | rev)

  if [ -n "$TMUX" ]; then
    tmux -2u rename-window "ssh[$host]";
    command ssh "$@";
    tmux -2u set-window-option automatic-rename "on" > /dev/null;
  else
    echo -ne "\033]0;ssh[${host}]\007"
    command ssh "$@";
    echo -ne "\033]0;$(basename ${PWD})\007"
  fi
}
