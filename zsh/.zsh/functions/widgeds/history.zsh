function _fzf_hist {
  cmd=$(fzf_history $LBUFFER)

  if [[ -n "$cmd" ]]; then
    BUFFER="$cmd"
  fi
}
zle -N _fzf_hist
bindkey '^r' _fzf_hist

