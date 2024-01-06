function sapt {
  apt-cache search $1 | rg $1
}

function fapt() {
  pkg=$(echo $(apt-cache search '.*' | fzf --margin=1,20% -m | awk '{print $1}'))
  
  if [[ -n "$pkg" ]]; then
    cmd="sudo apt install $pkg"
    print -s $cmd; eval $cmd;
  fi
}

function fpak() {
  pkg=$(flatpak remote-ls | awk -F'\t' '{print $1"\t"$2}'| uniq | column -ts $'\t' | fzf --margin=1,20% -m | awk -F'[[:space:]][[:space:]]+' '{print $2}')

  if [[ -n "$pkg" ]]; then
    cmd="flatpak install $pkg"
    print -s $cmd; eval $cmd;
  fi
}

function fnpm() {
  pkg=$(echo $(all-the-package-names | --margin=1,20% fzf -m))

  if [[ -n "$pkg" ]]; then
    cmd="npm i $pkg"
    print -s $cmd; eval $cmd
  fi
}

