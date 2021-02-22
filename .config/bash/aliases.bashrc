#!/bin/bash

alias open='xdg-open'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias mutt=neomutt
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias tmux='TERM=screen-256color tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias abook='abook -C $XDG_CONFIG_HOME/abook/abookrc --datafile $XDG_CONFIG_HOME/abook/addresbook'
alias irssi='irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi'
alias nvim='nvim.appimage'
alias vim=nvim

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.config/bash/dircolors && eval "$(dircolors -b ~/.config/bash/dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Download from https://github.com/Peltoche/lsd/releases 
alias ls='lsd --icon-theme fancy'

# ask before overwriting
alias cp="cp -i"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

function mcd() {
    mkdir -p "$@" && cd "$@"
}

# Install: https://github.com/sharkdp/bat/releases
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
alias cat=bat

# Install: https://github.com/junegunn/fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

export TASKRC=~/.config/taskwarrior/taskrc

# Set "nvim" as manpager
export MANPAGER="nvim -c 'set ft=man' -"
