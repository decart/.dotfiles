function fzf_history {
  history -in -1 0 | \
    fzf --border=rounded \
        --margin=2,16 \
        --prompt="History » " \
        --pointer=▶ \
        -1 \
        --query "$1" | \
        awk -F'  ' '{print $2}'
}

function hist {
  cmd=$(fzf_history $1)

  if [[ -n "$cmd" ]]; then
    eval $cmd
    return 0
  fi

  echo "Canceled..."
}

