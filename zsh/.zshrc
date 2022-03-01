
if [ -s ~/.zenv ]; then
  source ~/.zenv
fi

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

ZSH_PECO_HISTORY_OPTS="--layout=bottom-up --initial-filter=Fuzzy"

bindkey '^ ' autosuggest-accept
bindkey '^[j' forward-word
bindkey '^[k' backward-delete-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey -r '^P'

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' expand prefix
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
zstyle ':compinstall' filename '/home/mansur/.zshrc'
zstyle ':omz:plugins:keychain' agents gpg,ssh

autoload -Uz compinit
compinit

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd autopushd pushdminus pushdsilent extendedglob notify histignoredups
unsetopt beep


fpath=(~/.zsh $fpath)

if [ -s ~/.zsh_plugins.sh ]; then
  source ~/.zsh_plugins.sh
fi

if [ -s ~/.aliases ]; then
  source ~/.aliases
fi

if [ -s ~/.zutils ]; then
  source ~/.zutils
fi

if [ -s ~/.nix-profile/etc/profile.d/nix.sh ]; then 
  source ~/.nix-profile/etc/profile.d/nix.sh
fi

if [ -s "$NVM_DIR/nvm.sh" ]; then
  source "$NVM_DIR/nvm.sh" 
fi

if [ -s ~/.mansur.omp.json ]; then
  eval "$(oh-my-posh --init --shell zsh --config ~/.mansur.omp.json)"
fi

if [ -d ~/.config/composer/vendor/bin ]; then
  export PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

if [ -d /usr/local/go/bin ]; then
  export PATH="/usr/local/go/bin:$PATH"
  export PATH="$(go env GOPATH)/bin:$PATH"
fi
