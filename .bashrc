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

if [ -f ~/.config/bash/aliases.bashrc ]; then
    . ~/.config/bash/aliases.bashrc
fi

if [ -f ~/.config/bash/prompt.bashrc ]; then
    . ~/.config/bash/prompt.bashrc
fi

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

if [ -f ~/.config/bash/local.bashrc ]; then
    . ~/.config/bash/local.bashrc
fi

if [ -f /usr/bin/neofetch ]; then
    neofetch
fi
