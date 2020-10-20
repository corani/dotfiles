#!/bin/bash

#export TERM=screen-256color

export GOROOT=/opt/go
export GOPATH=$HOME/go
export GOPROXY=http://10.236.6.120:3456
export GONOSUMDB=*
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export CDPATH=.:~:$GOPATH/src/github.wdf.sap.corp/velocity:$GOPATH/src/github.wdf.sap.corp/abap-agent

source <(kubectl completion bash)
source <(gh completion -s bash)

alias irssi='proxychains4 irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi'
