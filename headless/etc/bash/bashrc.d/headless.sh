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
alias free="free -h" df="df -h" dh="dh -h"
alias objdump="objdump -M intel --disassembler-color=extended"
alias kubectl="docker run --rm -it -v $HOME/.kube:/root/.kube -v $PWD:/app -w /app bitnami/kubectl"