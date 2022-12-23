# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mansur/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/mansur/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/mansur/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/mansur/.fzf/shell/key-bindings.zsh"
