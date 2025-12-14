# Completion
bind 'tab:menu-complete'
bind '"\e[z":menu-complete-backward'

# Autostart zellij or attach to an existing session
if [[ -z "$ZELLIJ" ]]; then
    # Don't run in VSCode integrated terminal
    if [[ "$TERM_PROGRAM" == "vscode" ]]; then
        return
    fi
    # Don't run in ttys
    if [[ "$TERM" == "linux" ]]; then
        return
    fi
	# Existing session?
    if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
        zellij attach -c
    # New session
    else
        zellij
    fi
    if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
        exit
    fi
fi