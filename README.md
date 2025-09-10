# prime
> Blazingly fast and extremely productive

## Components
* Display server: xorg
* Window manager: dk
* Terminal: alacritty
* Shell: bash
* Editor: vim and codium
* Browser: thorium
* Reader: zathura

> [!NOTE]
> Thorium and Codium are user friendly, optimized and privacy focused Chromium and Visual Studio Code forks

## Installation
1. Install the latest [iso's xorg build](https://github.com/sansneo/iso) and `bash installer.sh`!
2. Get the some Chromium extensions
I highly recommend YouTube Unhook and CouponBird!  
It's crazy there's in no easy way to make this step automatic
3. Add the uBlock Origins filters in `ublock.txt` if you like them.
4. Take a look at `.xinitrc`
5. Done! 🎉

## Keybindings
Everything uses vi keybindings!  
Applications are automatically started and bound to a workspace unless moved to another.  
You can read the configuration files for specifics, but here are some interesting ones:  
* In dk use SUPER + (SHIFT) + A/S/D or W to go or (move) to workspace 1/2/3 or 4
* In alacritty use ALT + J/K to scroll up and down and ALT + V to switch to vi mode
* In vim use CTRL + W followed by x to close a window or c to create a new buffer
