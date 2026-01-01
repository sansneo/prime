# Bindings
bind 'tab:menu-complete'
bind '"\e[Z": menu-complete-backward'
bind '"\C-x": edit-and-execute-command'

# Tmux
[[ -z "$TMUX" ]] && [[ "$TERM" != "linux" ]] && exec tmux new -As home
