function html {
  cd "$HOME/data/html/$1"
}

function js {
  cd "$HOME/data/javascript/$1"
}

function gitcheck() {
  for dir in $1/*/
  do
    \cd "$dir"
    if [[ `git status --porcelain 2>/dev/null` ]]; then
      echo "$dir"
    fi
  done
}

