# Keyboard
The entire system uses Readline and Helix bindings.  
Even Tmux's copy mode uses Helix style bindings!  

Listing here what differs from the defaults and what's undocumented.

## Bash
* C-x, edit command in Helix.
* C-Tab and C-Shift-Tab, cycle completions.

## Tmux
* C-s f, sessionizer.
* C-s c, new window.
* C-s x, close window.
* C-s </>, move window.
* C-s -, split horizontally.
* C-s |, split vertically.
* C-s g, open repository remote in qutebrowser.
* C-s Space, enter copy mode.
* C-s h/j/k/l, navigate panes.
* C-s H/J/K/L, resize panes.

## Sxhkd
* Super-Shift-z: region screenshot
* Super-z: fullscreen screenshot
* Super-Shift-c: lock screen
* Super-Shift-x: toggle floating window
* Super-Space: launcher
* Super-Shift-Space: filtered launcher
* Super-q/e: monitors
* Super-a/s/d/Tab/w: workspaces
* Super-BackSpace: close window
* Super-j/k: next/previous window
* Super-Shift+j/k: move window
* Super-h/l: resize window
* Super-Shift-h/l: resize window faster
* Super-</>: borders

## Zathura
* r: recolor
* </>: rotate

## Qutebrowser
* ge: to the bottom

## Alacritty
* Ctrl+Shift+C: copy
* Ctrl+Shift+v: paste
