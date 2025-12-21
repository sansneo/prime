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
zip
unzip
7zip
unrar
openssl
openssh
wget
yt-dlp
curl
trurl
jq
git
git-lfs
github-cli
ncurses
tmux
tmate
skim
helix
xxd
ranger
android-tools
scrcpy
vpm
"
utilities=$(clean "$utilities")

# Development
development="
base-devel
gdb
clang-extra-tools
rizin
rz-ghidra
ltrace
strace
go
delve
gopls
protobuf
python3
python3-yapf
python3-lsp-server
gleam
sqlite
typst
typstyle
tinymist
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
firefox
qbittorrent
nicotine+
obs
obs-plugin-browser-bin
cutter
flatpak
"
apps=$(clean "$apps")

# Personal
personal="
nextdns
"
personal=$(clean "$personal")

# Are you root?
if [ "$(id -u)" -ne 0 ]; then echo "Run as root!"; exit 1; fi

# Marksman (not available in the repos)
wget https://github.com/artempyanykh/marksman/releases/latest/download/marksman-linux-x64
mv marksman-linux-x64 headless/etc/skel/.local/bin/marksman
chmod +x headless/etc/skel/.local/bin/marksman

# Markdown Oxide (not available in the repos)
curl -s https://api.github.com/repos/Feel-ix-343/markdown-oxide/releases/latest \
  | grep -oE '"browser_download_url":\s*"[^"]+"' \
  | grep -E 'markdown-oxide-v.*-x86_64-unknown-linux-gnu' \
  | head -n1 \
  | cut -d '"' -f 4 \
  | xargs -r wget -O markdown-oxide
mv markdown-oxide headless/etc/skel/.local/bin
chmod +x headless/etc/skel/.local/bin/markdown-oxide

# VSCode (proprietary version)
wget -O vscode.tar.gz "https://code.visualstudio.com/sha/download?build=stable&os=linux-x64"
tar -xzf ./vscode.tar.gz -C personal/etc/skel/.local/code --strip-components=1
rm ./vscode.tar.gz

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

# Personal
./mkiso.sh -a x86_64 \
    -r "https://repo-fastly.voidlinux.org/current" \
    -r "https://repo-fastly.voidlinux.org/current/nonfree" \
    -- -k "us" -T "Void Linux" -o ../build/personal-xorg-prime.iso \
    -p "void-repo-nonfree" \
    -p "$drivers $services $utilities $development" \
    -p "$xorg $audio $bluetooth $fonts $apps $personal" \
    -e /bin/bash \
    -I ../headless -I ../xorg -I ../perf -I ../personal \
    -S "dhcpcd cronie tlp iwd bluetoothd dbus polkitd" \
    -C "vconsole.keymap=us nowatchdog live.autologin live.shell=/bin/bash"

# Done!
cd ..
