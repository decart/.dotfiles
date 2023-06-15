# Clone zcomet if necessary
if [[ ! -f ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh ]]; then
  mkdir -p ${ZDOTDIR:-${HOME}}/.zcomet/bin
  command git clone https://github.com/agkozak/zcomet.git ${ZDOTDIR:-${HOME}}/.zcomet/bin
fi

source ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh

zcomet load ohmyzsh plugins/colorize
zcomet load ohmyzsh plugins/dirhistory
zcomet load ohmyzsh plugins/git
zcomet load ohmyzsh plugins/git-extras
zcomet load ohmyzsh plugins/colored-man-pages
zcomet load ohmyzsh plugins/command-not-found

zcomet load lukechilds/zsh-nvm
zcomet load zsh-users/zsh-autosuggestions
zcomet load zsh-users/zsh-completions
zcomet load zsh-users/zsh-syntax-highlighting

zcomet compinit
