
if [ -s ~/.zenv ]; then
  source ~/.zenv
fi

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

ZSH_PECO_HISTORY_OPTS="--layout=bottom-up --initial-filter=Fuzzy"

bindkey '^ ' autosuggest-accept
bindkey '^[j' forward-word
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

autoload -Uz compinit
compinit

HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000
setopt autocd autopushd pushdminus pushdsilent extendedglob notify histignoredups
unsetopt beep

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk



fpath=(~/.zsh $fpath)


[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && . ~/.nix-profile/etc/profile.d/nix.sh
[ -f ~/.zsh_plugins.sh ] && . ~/.zsh_plugins.sh
[ -f ~/.cargo/env ] && . ~/.cargo/env
[ -f ~/.zinit.sh ] && . ~/.zinit.sh
[ -f ~/.fzf.zsh ] && . ~/.fzf.zsh
[ -f ~/.aliases ] && . ~/.aliases
[ -f ~/.zutils ] && . ~/.zutils


if [ -s "$NVM_DIR/nvm.sh" ]; then
  source "$NVM_DIR/nvm.sh" 
fi

if [ -s ~/.mansur.omp.json ]; then
  # eval "$(oh-my-posh prompt init zsh --config ~/.mansur.omp.json)"
  eval "$(oh-my-posh prompt init zsh --config ~/.di4am0nd.omp.json)"
fi

if [ -d ~/.config/composer/vendor/bin ]; then
  export PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

if [ -d /usr/local/go/bin ]; then
  export PATH="/usr/local/go/bin:$PATH"
  export PATH="$(go env GOPATH)/bin:$PATH"
fi

eval "$(zoxide init zsh)"


export PATH="$HOME/.local/bin:$HOME/.poetry/bin:$PATH"



# pnpm
export PNPM_HOME="/home/mansur/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
