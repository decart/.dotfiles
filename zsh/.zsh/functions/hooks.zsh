preexec() {
  if [[ $2 =~ ^(n?vim)\|(nano)\|(lazygit) ]]; then
    cmd=$(echo $2 | awk '{print $1;}')

    if [ -n "$TMUX" ]; then
      tmux -2u rename-window "${cmd}[#{b:pane_current_path}]";
    else
      echo -ne "\033]0;${cmd}[$(basename ${PWD})]\007"
    fi
  fi
}

precmd() {
  if [ -n "$TMUX" ]; then
    tmux -2u set-window-option automatic-rename "on" > /dev/null;
  else
    echo -ne "\033]0;$(basename ${PWD})\007"
  fi
}
