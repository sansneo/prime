#!/bin/sh
clean() { printf "%s" "$1" | tr '\n' ' ' | sed 's/  */ /g'; }

# Drivers
drivers="
efibootmgr
os-prober
linux-firmware
linux-headers
exfat-utils
ntfs-3g
"
drivers=$(clean "$drivers")

# Services
services="
iwd
tlp
tlp-rdw
cronie
docker
docker-buildx
docker-compose
"
services=$(clean "$services")

# Utilities
utilities="
atool
7zip
unrar
openssl
openssh
xh
wget
jq
git
git-lfs
vim-x11
xxd
android-tools
scrcpy
vpm
"
utilities=$(clean "$utilities")

# Development
development="
base-devel
gdb
rizin
ltrace
strace
go
python
gleam
sqlite
typst
"
development=$(clean "$development")

# Xorg
xorg="
xorg-minimal
xorg-input-drivers
xf86-video-fbdev
xf86-video-dummy
vulkan-loader
mesa-vdpau
mesa-vaapi
mesa-dri
libva-utils
xdg-user-dirs
gstreamer-vaapi
gstreamer1
setxkbmap
xclip
xinput
xprop
xrandr
xset
dbus
elogind
polkit
xpadneo
"
xorg=$(clean "$xorg")

# Audio
audio="
alsa-firmware
sof-firmware
pipewire
wiremix
"
audio=$(clean "$audio")

# Bluetooth
bluetooth="
broadcom-bt-firmware
libspa-bluetooth
bluez
"
bluetooth=$(clean "$bluetooth")

# Fonts
fonts="
noto-fonts-ttf
noto-fonts-ttf-extra
noto-fonts-emoji
noto-fonts-cjk
"
fonts=$(clean "$fonts")

# Apps
apps="
dk
sxhkd
dmenu
scrot
slock
xautolock
xwallpaper
alacritty
nsxiv
ffmpeg
zathura
zathura-cb
zathura-pdf-mupdf
vscode
qutebrowser
python3-adblock
firefox
wireshark
Signal-Desktop
qbittorrent
nicotine+
obs
obs-plugin-browser-bin
cutter
flatpak
"
apps=$(clean "$apps")

# Are you root?
if [ "$(id -u)" -ne 0 ]; then echo "Run as root!"; exit 1; fi

# Going into void-mklive
cd void-mklive/

# Headless
./mkiso.sh -a x86_64 \
    -r "https://repo-fastly.voidlinux.org/current" \
    -r "https://repo-fastly.voidlinux.org/current/nonfree" \
    -- -k "us" -T "Void Linux" -o ../build/headless-prime.iso \
    -p "void-repo-nonfree" \
    -p "$drivers $services $utilities $development" \
    -e /bin/bash \
    -I ../headless -I ../safe \
    -S "dhcpcd cronie tlp iwd" \
    -C "vconsole.keymap=us nowatchdog live.autologin live.shell=/bin/bash"

# Safe
./mkiso.sh -a x86_64 \
    -r "https://repo-fastly.voidlinux.org/current" \
    -r "https://repo-fastly.voidlinux.org/current/nonfree" \
    -- -k "us" -T "Void Linux" -o ../build/safe-xorg-prime.iso \
    -p "void-repo-nonfree" \
    -p "$drivers $services $utilities $development" \
    -p "$xorg $audio $bluetooth $fonts $apps" \
    -e /bin/bash \
    -I ../headless -I ../xorg -I ../safe \
    -S "dhcpcd cronie tlp iwd bluetoothd dbus polkitd" \
    -C "vconsole.keymap=us nowatchdog live.autologin live.shell=/bin/bash"

# Performance
./mkiso.sh -a x86_64 \
    -r "https://repo-fastly.voidlinux.org/current" \
    -r "https://repo-fastly.voidlinux.org/current/nonfree" \
    -- -k "us" -T "Void Linux" -o ../build/performance-xorg-prime.iso \
    -p "void-repo-nonfree" \
    -p "$drivers $services $utilities $development" \
    -p "$xorg $audio $bluetooth $fonts $apps" \
    -e /bin/bash \
    -I ../headless -I ../xorg -I ../perf \
    -S "dhcpcd cronie tlp iwd bluetoothd dbus polkitd" \
    -C "vconsole.keymap=us nowatchdog live.autologin live.shell=/bin/bash"

# Bloated
./mkiso.sh -a x86_64 \
    -r "https://repo-fastly.voidlinux.org/current" \
    -r "https://repo-fastly.voidlinux.org/current/nonfree" \
    -- -k "us" -T "Void Linux" -o ../build/performance-xorg-prime.iso \
    -p "void-repo-nonfree" \
    -p "$drivers $services $utilities $development" \
    -p "$xorg $audio $bluetooth $fonts $apps" \
    -e /bin/bash \
    -I ../headless -I ../xorg -I ../perf \
    -S "dhcpcd cronie tlp iwd bluetoothd dbus polkitd" \
    -C "vconsole.keymap=us nowatchdog live.autologin live.shell=/bin/bash"

# Done!
cd ..
