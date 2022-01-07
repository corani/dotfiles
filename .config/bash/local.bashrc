#!/bin/bash

#export TERM=screen-256color

#export GOPROXY=http://10.236.6.120:3456
export GOPROXY=https://int.repositories.cloud.sap/artifactory/goproxy-virtual
export GONOSUMDB="*"
export GOPRIVATE="github.wdf.sap.corp/*,github.tools.sap/*"
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:/usr/local/bin:/opt/riscv/bin:$HOME/.nix-profile/bin:$PATH
export CDPATH=.:~:$GOPATH/src/github.wdf.sap.corp/velocity:$GOPATH/src/github.wdf.sap.corp/abap-agent

source <(kubectl completion bash)
source <(gh completion -s bash)

alias irssi='proxychains4 irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi'
alias tg='proxychains4 tg'
alias newsboat='proxychains4 newsboat'
alias toot='proxychains4 toot'
alias youtube-dl='proxychains4 youtube-dl'

export ASDF_DIR=$HOME/Install/asdf
export ASDF_DATA_DIR=$ASDF_DIR
export ASDF_CONFIG_FILE=$XDG_CONFIG_HOME/asdf/config
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME=$XDG_CONFIG_HOME/asdf/tool-versions

source $ASDF_DIR/asdf.sh 
source $ASDF_DIR/completions/asdf.bash

eval "$(zoxide init bash)"

alias wt="source ~/.local/bin/wt"
