# Truecolor
export COLORTERM="truecolor"

# Browser
export BROWSER="qutebrowser"

# Apps
if [[ ":$PATH:" != *":$HOME/.apps/"* ]]; then
    export PATH="$PATH:$HOME/.apps/"
fi

# Aliases
alias xclip="xclip -selection clipboard"
alias nsxiv="nsxiv -b"
