#!/bin/bash
# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/Install/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "$HOME/Install/fzf/shell/key-bindings.bash"
