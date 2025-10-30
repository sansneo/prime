# prime
> Blazingly fast and extremely productive

The goal here is to create a coherent experience with vi bindings everywhere except in the browser!

> [!IMPORTANT]
> NeoVim is unconfigured.  
> Bring your own config!  
> Maybe check out [Sylvan Franklin](https://www.youtube.com/@sylvanfranklin) and [TJ Devree](https://www.youtube.com/@teej_dv)

## Components
* window manager: dk
* hotkey daemon: sxhkd
* launcher: dmenu
* terminal: alacritty
* shell: bash
* multiplexer: tmux
* editors: neovim and vscode
* browser: firefox
* media: nsxiv, ffmpeg and mpv
* screenshots: scrot
* reader: zathura
* wallpaper: xwallpaper
* modernity: fd, rg, skim and jq

## Installation
Start from an Arch, Void or Alpine Linux fresh installation system with functioning Xorg!  
Login as a standard user with `sudo` or `doas`(with shim) properly configured.

> [!NOTE]
> On Alpine Linux you need to be on [edge](https://alpinelinux.org/posts/2025-10-01-usr-merge.html) and have testing [repositories](https://wiki.alpinelinux.org/wiki/Repositories) enabled!  
> On Arch Linux `dk` will be cloned and compiled meaning the scripts will install `base-devel`

1. Clone the repo and run the installer
```sh
git clone https://github.com/sansneo/prime
cd prime
sh installer.sh arch/void/alpine
```
2. Go over installed dotfiles and tweak them

> [!TIP]
> For the VSCode config you need the GitHub Themes and Vim extension installed  
> It's highly recommended to use uBlock Origin and a password manager like Bitwarden in Firefox

3. Done 🎉  

For more, check out my personal [dotfiles](https://github.com/sansneo/dotfiles)!

## Keybindings

> [!WARNING]
> Bash has vi mode enabled.
> It can be unfamiliar to someone who has never used it!

Everything noteworthy.  
| Component | Keybinding | Action |
|-----------|------------|--------|
| bash | `ctrl+l` | clear screen |
| bash | `esc v` | edit line |
| tmux | `ctrl+s h/j/k/l` | navigate panes |
| tmux | `ctrl+s shift+h/j/k/l` | resize panes |
| tmux | `ctrl+s <` | swap window left |
| tmux | `ctrl+s >` | swap window right |
| tmux | `ctrl+s b` | toggle status bar |
| tmux | `ctrl+s c` | new window |
| tmux | `ctrl+s x` | kill sessions/windows/panes |
| tmux | `ctrl+s space` | enter copy mode |
| tmux | `ctrl+s r` | reload config |
| tmux | `ctrl+s f` | sessionizer |
| tmux | `ctrl+s g` | open github remote in browser |
| alacritty | `ctrl+shift+k/j` | scroll line up/down |
| alacritty | `ctrl+shift+up/down` | scroll line up/down |
| alacritty | `ctrl+shift+space` | toggle vi mode |
| sxhkd | `alt+p` | dmenu |
| sxhkd | `alt+shift+o` and `print` | screenshot |
| sxhkd | `alt+j/k` | focus next/prev window |
| sxhkd | `alt+shift+h/j/k/l` | move window |
| sxhkd | `alt+ctrl+h/j/k/l` | resize window |
| sxhkd | `alt+tab` and `alt+backspace` | last workspace |
| sxhkd | `alt+a/s/d/w` | view workspace 1/2/3/4 |
| sxhkd | `alt+shift+a/s/d/w` | send to workspace 1/2/3/4 |
| sxhkd | `alt+super+a/s/d/w` | follow to workspace 1/2/3/4 |
| sxhkd | `alt+shift+q` | close window |
| sxhkd | `alt+shift+f` | toggle fullscreen |
| sxhkd | `alt+super+t/m/g/r/u/c` | switch layout (tile/mono/grid/spiral/tstack/cycle) |
| sxhkd | `alt+[/]` | toggle borders on/off |
| sxhkd | `alt+shift+[/]` | toggle gaps on/off |
| sxhkd | `alt+shift+x` | reload sxhkd |
| sxhkd | `alt+shift+r` | reload dk |
| vscode | `ctrl+shift+j` | toggle terminal |
| vscode | `ctrl+shift+c` | new terminal |
| vscode | `ctrl+shift+k` | kill terminal |
| vscode | `ctrl+shift+a/b` | next/prev terminal |
| vscode | `ctrl+e` | view explorer |
| vscode | `ctrl+e n` | new file |
| vscode | `ctrl+e shift+n` | new folder |
| vscode | `ctrl+e r` | rename file |
| vscode | `ctrl+e d` | delete file |

## Contributions
Please open a pull request for minor spelling mistakes or if you find incoherence in the system!

