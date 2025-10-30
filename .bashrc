stty -ixon

# Interactive
[[ $- != *i* ]] && return

# Environment
PS1="\[$(tput bold)\]\[$(tput setaf 1)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 7)\][\w]\[$(tput setaf 7)\]\$ \[$(tput sgr0)\]"
export HISTFILE="$HOME/.history" HISTSIZE=1000 SAVEHIST=1000
export PATH="$PATH:$HOME/.path"
export EDITOR="nvim" VISUAL="nvim"
export BROWSER="firefox"

# Aliases
alias ls="ls -gh --group-directories-first --color=always"
alias l="ls" s="ls" sl="ls" lx="ls" lc="ls"
alias cp="cp -v" mv="mv -v" rm="rm -v"
alias fd="fd --hidden" rg="rg --hidden"
alias sk="sk --margin 10% --color='bw'"
alias free="free -h" du="du -h" df="df -h"
alias objdump="objdump -M intel"
alias xclip="xclip -selection clipboard"
alias nsxiv="nsxiv --no-bar"

# Bindings
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# Tmux
[[ $DISPLAY && -z $TMUX && -z $VSCODE_INJECTION ]] && exec tmux new -As home
