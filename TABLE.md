# Keybindings
The entire system uses Vi style bindings.  
GNU Bash, the user shell, defaults to Emacs style bindings.  
This can be changed by adding `set -o vi` to your `.bashrc`!  

In addition, both Vim and VSCode (with the VSCodeVim extension) include the powerful [commentary](https://github.com/tpope/vim-commentary) and [surround](https://github.com/tpope/vim-surround) plugins.

Here follows a table listing bindings that are additional to the defaults, differ from the defaults or are just really useful so I don't forget them! You are expected to read the documentation for each tool.

## Alacritty
| Binding | Description |
|---------|-------------|
| Ctrl+j/k | Scroll down/up |
| Ctrl+Shift+Space | Enter Vi mode |
| Ctrl+Shift+c | Copy |
| Ctrl+Shift+v | Paste |

## Vim
| Binding | Description |
|---------|-------------|
| Ctrl+q | Toggle colors |
| Ctrl+a/Ctrl+e (Command mode) | Move to line start/end (Emacs style) |

## VSCode
| Binding | Description |
|---------|-------------|
| Ctrl+j | Focus/unfocus terminal pane |
| Ctrl+Shift+j | Toggle terminal pane |
| Ctrl+k | Kill terminal |
| Ctrl+Shift+k | Create new terminal |
| Ctrl+Shift+a/Ctrl+Shift+b | Next/previous terminal |
| Ctrl+e | Focus/unfocus explorer |
| Ctrl+q | Open file picker |
| h/l (Explorer) | Fold/unfold |
| n (Explorer) | Create new file |
| Shift+n (Explorer) | Create new folder |
| r (Explorer) | Rename file |
| d (Explorer) | Delete file |
| x (Explorer) | Cut file |
| y (Explorer) | Copy file |
| f (Explorer) | Copy file path |
| p (Explorer) | Paste file |
| s (Explorer) | Toggle selection |
| v (Explorer) | Open file without focusing |
| Enter (Explorer) | Open file and focus |

## Sxhkd
| Binding | Description |
|---------|-------------|
| Super+z | Take fullscreen screenshot |
| Super+Shift+z | Take region screenshot |
| Super+x | Tile floating window |
| Super+Shift+c | Lock screen |
| Super+Space | Open filtered launcher |
| Super+Shift+Space | Open unfiltered launcher |
| Super+n/m/b | Switch monitor |
| Super+w/a/s/d/u/i/o/p | Switch workspace |
| Super+q/e | Switch to previous/next workspace |
| Super+Tab | Switch to last workspace |
| Super+BackSpace | Kill focused window |
| Super+j/k | Focus next/previous window |
| Super+h/l | Add/remove master stack window |
| Super+Shift+h/j/k/l | Move window |
| Super+Ctrl+h/j/k/l | Resize window |
| Super+</> | Toggle window borders |
| Super+r | Reload keybindings |
| Super+Shift+r | Reload window manager |

## Qutebrowser
| Binding | Description |
|---------|-------------|
| tt | Toggle tabs bar |
| J/K | Select next/previous tab |
| gJ/gK | Move tab down/up |
| gC | Clone tab |
| T | Open tab selector |
| d | Close tab |
| u | Reopen tab |
| gi | Focus searchable field |
| o/O | Search in current/new tab |
| go/gO | Edit URL in current/new tab |
| xo/xO | Open/Edit URL in background tab |
| H/L | Navigate back/forward |
| yy | Copy URL |
| pp/PP | Paste URL in current/new tab |
| f/F | Open hint in current/new tab |
| ; | Filter hints |
| ` | Set mark |
| ' | Jump to mark |
| gd/ad/cd | Manage downloads |
| Ctrl+v | Enter passthrough mode |
| +/-/= | Zoom in/out/reset |

## Ranger
| Binding | Description |
|---------|-------------|
| Space | Toggle selection |

## Nsxiv
| Binding | Description |
|---------|-------------|
| b | Toggle bottom bar |
| f | Toggle fullscreen |
| </> | Rotate image left/right |
| +/-/= | Zoom in/out/reset |

## Ffplay
| Binding | Description |
|---------|-------------|
| f | Toggle fullscreen |

## Zathura
| Binding | Description |
|---------|-------------|
| r/R | Toggle recolor |
| </> | Rotate document left/right |
| +/-/= | Zoom in/out/reset |