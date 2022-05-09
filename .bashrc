# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# See https://wiki.archlinux.org/index.php/XDG_Base_Directory
# User-specific configurations should go into:
export XDG_CONFIG_HOME=$HOME/.config
# User-specific non-essential (cached) data should go into:
export XDG_CACHE_HOME=$HOME/.cache
# User-specific data files should go into:
export XDG_DATA_HOME=$HOME/.local/share

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export GPG_TTY=`tty`
export EDITOR="nvim"

# For ranger
PYGMENTIZE_STYLE=monokai

if [ -f ~/.config/bash/completion.bashrc ]; then
    . ~/.config/bash/completion.bashrc
fi

if [ -f ~/.config/bash/aliases.bashrc ]; then
    . ~/.config/bash/aliases.bashrc
fi

if [ -f ~/.config/bash/cleanup.bashrc ]; then
    . ~/.config/bash/cleanup.bashrc
fi

if [ -f ~/.config/bash/prompt.bashrc ]; then
    . ~/.config/bash/prompt.bashrc
fi

if [ -f ~/.config/bash/local.bashrc ]; then
    . ~/.config/bash/local.bashrc
fi

#if [ -f /usr/bin/neofetch ]; then
#    neofetch
#fi
if [ -f ~/.config/fortune/stoic ]; then
    strfile -c % ~/.config/fortune/stoic > /dev/null
    fortune ~/.config/fortune/ | cowthink -W 60
fi

# if we can't connect to the ssh-agent (not running, or not owned by us), start a new one.
ssh-add -l > /dev/null 2>&1
if [ $? -ne 0 ]; then
    eval $(ssh-agent -s)
    trap "kill $SSH_AGENT_PID" 0
fi

# check whether our ssh-key is loaded, to avoid unnecessarily having to unlock it.
loaded=$(ssh-add -l | grep "$(realpath ~/.ssh/id_rsa)" | wc -l)
if [ "${loaded}" -eq "0" ]; then
    ssh-add ~/.ssh/id_rsa
fi

# bash vim mode
set -o vi

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

command -v direnv > /dev/null 2>&1
if [ $? -eq 0 ]; then
    eval "$(direnv hook bash)"
fi

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION