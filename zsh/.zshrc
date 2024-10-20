
if [ -s ~/.zenv ]; then
  source ~/.zenv
fi

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

ZSH_PECO_HISTORY_OPTS="--layout=bottom-up --initial-filter=Fuzzy"

# To view keycodes: showkey -a
# bindkey '^ ' autosuggest-accept
bindkey '^e' autosuggest-accept
bindkey '^[l' forward-word # Alt-l
bindkey '^[h' backward-word # Alt-h
bindkey '^[^?' backward-kill-word # Alt-Backspace
bindkey '^[[3;3~' kill-word # Alt-Delete
bindkey -r '^P'
# bindkey -v

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
zstyle ':compinstall' filename '$HOME/.zshrc'
fpath=(~/.zsh $fpath)

autoload -Uz compinit
compinit

export HISTFILE=~/.histfile
export HISTFILESIZE=1000000000
export HISTSIZE=30000
export SAVEHIST=30000

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY

setopt autocd autopushd pushdminus pushdsilent extendedglob notify histignoredups
unsetopt beep

[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && . ~/.nix-profile/etc/profile.d/nix.sh
[ -f ~/.cargo/env ] && . ~/.cargo/env
[ -f ~/.fzf.zsh ] && . ~/.fzf.zsh
[ -f ~/.aliases ] && . ~/.aliases
[ -f ~/.zutils ] && . ~/.zutils

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

[ -f ~/.zcomet.sh ] && . ~/.zcomet.sh
[ -f ~/.zsh_plugins.sh ] && . ~/.zsh_plugins.sh
[ -f ~/.zinit.sh ] && . ~/.zinit.sh

if [ -s ~/.di4am0nd.omp.json ]; then
  # eval "$(oh-my-posh prompt init zsh --config ~/.mansur.omp.json)"
  eval "$(oh-my-posh prompt init zsh --config ~/.amro.omp.json)"
fi

if [ -d ~/.config/composer/vendor/bin ]; then
  export PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

if [ -d /usr/local/go/bin ]; then
  export PATH="/usr/local/go/bin:$PATH"
  export PATH="$(go env GOPATH)/bin:$PATH"
fi

eval $(thefuck --alias)

eval "$(zoxide init zsh)"


export XDG_CONFIG_HOME="$HOME/.config"
export PATH="$HOME/.local/bin:$HOME/.poetry/bin:$PATH"

# pnpm
export PNPM_HOME="/home/mansur/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun completions
[ -s "/home/mansur/.bun/_bun" ] && source "/home/mansur/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Deno
export PATH="$DENO_INSTALL/bin:$PATH"

# Greeting
# neofetch --ascii "$(fortune ru | cowsay -W 30)" | lolcat

# eval $(thefuck --alias)

