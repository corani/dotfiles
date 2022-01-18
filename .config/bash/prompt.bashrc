#!/bin/bash

# To update the Tilda tabname according to the working directory
export PROMPT_COMMAND='echo -ne "\033]2;${PWD/#${HOME}/\~}\007"'

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color|*-256color)
    color_prompt=yes
    ;;
esac

function fromhex() {   
    hex=$1;   
    if [[ $hex == "#"* ]]; then     
        hex=$(echo $1 | awk '{print substr($0,2)}');   
    fi;   
    r=$(printf '0x%0.2s' "$hex");   
    g=$(printf '0x%0.2s' ${hex#??});   
    b=$(printf '0x%0.2s' ${hex#????});   
    echo -e `printf "%d;%d;%d" "$r" "$g" "$b"`; 
}

if [ -f ~/.config/bash/trueline.sh ]; then
    # Colors taken from github.com/morhetz/gruvbox dark palette
    declare -A TRUELINE_COLORS=(
        [black]=$(fromhex "#282828")
        [dark_grey]=$(fromhex "#3c3836")
        [cursor_grey]=$(fromhex "#504945")
        [green]=$(fromhex "#98971a")
        [grey]=$(fromhex "#a89984")
        [light_blue]=$(fromhex "#83a598")
        [mono]=$(fromhex "#ebdbb2")
        [orange]=$(fromhex "#d65d0e")
        [red]=$(fromhex "#cc241d")
        [special_grey]=$(fromhex "#665c54")
        [white]=$(fromhex "#fbf1c7")
        [yellow]=$(fromhex "#fabd2f")
        [aqua]=$(fromhex "#8ec07c")
    )

    declare -a TRUELINE_SEGMENTS=(
        'user,black,yellow,bold'
        'working_dir,mono,dark_grey,normal'
        'git,mono,special_grey,normal'
        'exit_status,black,orange,bold'
        'cmd_duration,black,light_blue,bold'
        'newline,aqua,dark_grey,bold'
    )

    declare -A TRUELINE_SYMBOLS=(
        [working_dir_folder]='...'
        [working_dir_separator]='/'
        [working_dir_home]='~'
        [newline]=' $'
    )

    TRUELINE_WORKING_DIR_SPACE_BETWEEN_PATH_SEPARATOR=false

    source ~/.config/bash/trueline.sh
else
    # set variable identifying the chroot you work in (used in the prompt below)
    if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
        debian_chroot=$(cat /etc/debian_chroot)
    fi

    # uncomment for a colored prompt, if the terminal has the capability; turned
    # off by default to not distract the user: the focus in a terminal window
    # should be on the output of commands, not on the prompt
    #force_color_prompt=yes

    if [ -n "$force_color_prompt" ]; then
        if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
            # We have color support; assume it's compliant with Ecma-48
            # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
            # a case would tend to support setf rather than setaf.)
            color_prompt=yes
        else
            color_prompt=
        fi
    fi

    if [ "$color_prompt" = yes ]; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    else
        PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    fi
    unset color_prompt force_color_prompt

    # If this is an xterm set the title to user@host:dir
    case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
    *)
        ;;
    esac
fi

