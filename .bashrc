stty -ixon

# Interactive
[[ $- != *i* ]] && return

# Environment
PS1="\[$(tput bold)\]\[$(tput setaf 1)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 7)\][\w]\[$(tput setaf 7)\]\$ \[$(tput sgr0)\]"
export HISTSIZE= HISTFILESIZE=
export EDITOR="vim" VISUAL="vim"
export BROWSER="thorium"
export PATH="$PATH:$HOME/.path/thorium:$HOME/.path/codium/bin"

# Colored man pages
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
export LESS_TERMCAP_ue=$'\E[0m'

# Aliases
alias ls="ls -gh --time-style='+%Y %H:%M' --color=auto --group-directories-first"
alias l="ls" s="ls" sl="ls"
alias cp="cp -v" mv="mv -v" rm="rm -v"
alias objdump="objdump -M intel"
alias find="fd" grep="rg" dig="q"
alias free="free -h" du="du -h" df="df -h"
alias xclip="xclip -selection clipboard"
alias chromium="thorium"
alias code="codium"

# Bindings
bind "'\C-x': edit-and-execute-command"

# Tmux
[[ $DISPLAY && -z $TMUX && -z $VSCODE_INJECTION ]] && exec tmux new -As main
