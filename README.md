# prime
> Blazingly fast and extremely productive

## Components
* Display server: xorg
* Window manager: dk
* Hotkey daemon: sxhkd
* Terminal: alacritty
* Shell: bash
* Multiplexer: tmux
* Editors: vim and codium
* Browser: thorium
* Media: nsxiv and mpv
* Reader: zathura

> [!NOTE]
> Thorium and Codium are user-friendly, optimized, and privacy-focused Chromium and Visual Studio Code forks

## Installation
1. Install the latest [iso's xorg build](https://github.com/sansneo/iso) or Void Linux with Xorg
2. Run the script with `sh installer.sh`
3. Optionally get YouTube Unhook for Thorium and the Ublock Origins filters from `ublock.txt` if you want them
4. Take a look and modify `.xinitrc`
5. Done! 🎉

## Keybindings
Everything uses vi bindings!  
Applications are automatically started and bound to a workspace unless moved to another.  
You can read the configuration files for specifics, but here are some interesting ones:  
* In `dk` use `super` + `a`, `s`, `d` or `w` to go to workspace 1, 2, 3 or 4.
* In `alacritty` use `alt` + `j` or `k` to scroll up or down and `alt` + `v` to move around freely.
* In `vim` use `ctrl` + `w` followed by `x` to close a window or `c` to create a new buffer, this is made to make it behave like `tmux`.

## Contributions
Please open a pull request for minor spelling mistakes and issue if you find incoherence in the system!

