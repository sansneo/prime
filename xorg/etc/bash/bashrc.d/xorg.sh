# Truecolor
export COLORTERM="truecolor"

# Browser
export BROWSER="qutebrowser"

# Flatpak
export FLATPATH="$HOME/.flat/"
if [[ ":$PATH:" != *":$FLATPATH:"* ]]; then
    export PATH="$PATH:$FLATPATH"
fi

# Aliases
alias xclip="xclip -selection clipboard"
alias nsxiv="nsxiv -b"
