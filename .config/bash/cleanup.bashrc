#!/bin/bash

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export LESSHISTFILE="$XDG_DATA_HOME/lesshist"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config

export BASH_COMPLETION_USER_FILE="$XDG_CONFIG_HOME"/bash/bash_completion

export CCACHE_CONFIGPATH="$XDG_CONFIG_HOME"/ccache/config
export CCACHE_DIR="$XDG_CACHE_HOME"/ccache

export K9SCONFIG="$XDG_CONFIG_HOME"/k9s
