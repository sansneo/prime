[[ $- != *i* ]] && return
stty -ixon
bind 'set bell-style none'

# Environment
export EDITOR="hx" VISUAL="$EDITOR"

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    export PATH="$PATH:$HOME/.local/bin"
fi

export GOPATH="$HOME/.go"
if [[ ":$PATH:" != *":$HOME/.go/bin:"* ]]; then
    export PATH="$PATH:$GOPATH/bin"
fi

# Aliases
alias ls="ls -gh --group-directories-first --color=always"
alias l="ls" s="ls" sl="ls" lx="ls" lc="ls"
alias cp="cp -v" mv="mv -v" rm="rm -v"
alias mkdir="mkdir -v" rmdir="rmdir -v"
alias mdkir="mkdir" rmdri="rmdir"
alias free="free -h" df="df -h" du="du -h"
alias objdump="objdump -M intel"
alias grep="grep --color=auto" ip="ip --color"
alias curl="curl -s"
alias xh="hx" x="hx" h="hx"
alias sk="sk --margin 10% --color='bw'"
alias kubectl="docker run --rm -it -v $HOME/.kube:/root/.kube -v $PWD:/app -w /app bitnami/kubectl"
alias aws-cli="docker run --rm -it -v $HOME/.aws:/root/.aws -v $PWD:/aws -w /aws amazon/aws-cli"
alias terraform="docker run --rm -it -v $HOME/.terraform.d:/root/.terraform.d -v $PWD:/terraform -w /terraform hashicorp/terraform:light"
