# Prompt
PS1='\[\033[31m\]\u\[\033[0m\]@\[\033[34m\]\h \[\033[0m\]\w \[\033[0m\]\$ '

# Bindings
bind 'tab:menu-complete'
bind '"\e[Z": menu-complete-backward'
bind '"\C-x": edit-and-execute-command'

# Tmux
[[ -z "$TMUX" ]] && [[ "$TERM" != "linux" ]] && exec tmux new -As codebase -c ~/codebase
