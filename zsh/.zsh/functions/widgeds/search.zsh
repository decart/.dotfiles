function _fzf_dev {
  local dev_dirs_list=("${(@s/:/)DEV_DIRS}")
  local all_dev_dirs

  for d in $dev_dirs_list; do
    all_dev_dirs+="$(fd -d1 -td . $d)\n"
  done

  selected_dir=$(echo $all_dev_dirs | \
    fzf --preview 'exa --icons --group-directories-first -la --no-time --no-user --no-permissions --no-filesize -T -L1 {}' \
        --border=rounded \
        --margin=2,16 \
        --prompt="Projects > " \
        --pointer=▶ \
        -1 \
        --query "$LBUFFER")

  if [ -n "$selected_dir" ]; then
      BUFFER="vim $selected_dir"
      zle accept-line
  fi
}
zle -N _fzf_dev
bindkey '^F' _fzf_dev

