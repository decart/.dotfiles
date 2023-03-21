function sapt {
  apt-cache search $1 | rg $1
}

function fapt() {
  local pkg
  pkg=$(apt-cache search '.*' | fzf -m | awk '{print $1}')
  if [[ -n "$pkg" ]]; then
    sudo apt install $(echo $pkg)
    return 0
  fi

  echo "Canceled..."
}

function fnpm() {
  local pkg
  pkg=$(all-the-package-names | fzf -m)
  if [[ -n "$pkg" ]]; then
    npm i $(echo $pkg)
    return 0
  fi

  echo "Canceled..."
}

