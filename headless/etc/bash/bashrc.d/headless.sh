[[ $- != *i* ]] && return
stty -ixon
bind 'set bell-style none'

# Environment
export PS1='\[\033[31m\]\u\[\033[0m\]@\[\033[34m\]\h \[\033[0m\]\w \[\033[0m\]\$ '
export EDITOR="vim" VISUAL="$EDITOR"
export BROWSER="qutebrowser"
export GOPATH="$HOME/.go" PATH="$PATH:$GOPATH/bin"

# Aliases
alias ls="ls -gh --group-directories-first --color=always"
alias l="ls" s="ls" sl="ls" lx="ls" lc="ls"
alias cp="cp -v" mv="mv -v" rm="rm -v"
alias free="free -h" df="df -h" du="du -h"
alias objdump="objdump -M intel"
alias grep="grep --color=auto"
alias ez="vim -y" im="vim" iv="vim"
alias ip="ip -c"
alias curl="curl -s"
alias kubectl="docker run --rm -it -v $HOME/.kube:/root/.kube -v $PWD:/app -w /app bitnami/kubectl"
alias aws-cli="docker run --rm -it -v $HOME/.aws:/root/.aws -v $PWD:/aws -w /aws amazon/aws-cli"
alias terraform="docker run --rm -it -v $HOME/.terraform.d:/root/.terraform.d -v $PWD:/terraform -w /terraform hashicorp/terraform:light"