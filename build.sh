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
gallery-dl
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
android-tools
scrcpy
xtools
vpm
"
utilities=$(clean "$utilities")

# Development
development="
base-devel
glibc-devel
libsanitizer-devel
gdb
ccls
rizin
rz-ghidra
ltrace
strace
go
delve
gopls
protobuf
python3
python3-pip
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
gstreamer-vaapi
gstreamer1
xpadneo
xdg-user-dirs
setxkbmap
xclip
xinput
xprop
xrandr
xset
dbus
elogind
polkit
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
ranger
nsxiv
mpv
ffmpeg
zathura
zathura-cb
zathura-pdf-mupdf
qutebrowser
python3-adblock
qbittorrent
obs
obs-plugin-browser-bin
v4l2loopback
cutter
"
apps=$(clean "$apps")

# Personal
personal="
nextdns
firefox
"
personal=$(clean "$personal")

# Are you root?
if [ "$(id -u)" -ne 0 ]; then echo "Run as root!"; exit 1; fi

# Pulling Markdown Oxide
curl -s https://api.github.com/repos/Feel-ix-343/markdown-oxide/releases/latest \
  | grep -oE '"browser_download_url":\s*"[^"]+"' \
  | grep -E 'markdown-oxide-v.*-x86_64-unknown-linux-gnu' \
  | head -n1 \
  | cut -d '"' -f 4 \
  | xargs -r wget -O markdown-oxide
mv markdown-oxide headless/etc/skel/.local/bin
chmod +x headless/etc/skel/.local/bin/markdown-oxide

# Pulling VSCode
wget -O vscode.tar.gz "https://code.visualstudio.com/sha/download?build=stable&os=linux-x64"
tar -xzf ./vscode.tar.gz -C personal/etc/skel/.local/code --strip-components=1
rm ./vscode.tar.gz

# Pulling Heroic
curl -s https://api.github.com/repos/Heroic-Games-Launcher/HeroicGamesLauncher/releases/latest \
  | grep -oE '"browser_download_url":\s*"[^"]+"' \
  | grep -E 'Heroic-.*-linux-x86_64\.AppImage' \
  | head -n1 \
  | cut -d '"' -f 4 \
  | xargs -r wget -O heroic
chmod +x heroic
mv heroic gaming/etc/skel/.local/bin

# Pulling mGBA
curl -s https://api.github.com/repos/mgba-emu/mgba/releases/latest \
  | grep -oE '"browser_download_url":\s*"[^"]+"' \
  | grep -E 'mGBA-.*-appimage-x64\.AppImage' \
  | head -n1 \
  | cut -d '"' -f 4 \
  | xargs -r wget -O mgba
chmod +x mgba
mv mgba gaming/etc/skel/.local/bin

# Pulling MelonDS
curl -s https://api.github.com/repos/melonDS-emu/melonDS/releases/latest \
  | grep -oE '"browser_download_url":\s*"[^"]+"' \
  | grep -E 'melonDS-.*-appimage-x86_64\.zip' \
  | head -n1 \
  | cut -d '"' -f 4 \
  | xargs -r wget -O melonDS.zip
unzip melonDS.zip && rm melonDS.zip
mv melonDS-x86_64.AppImage melonds
chmod +x melonds
mv melonds gaming/etc/skel/.local/bin

# Pulling Dolphin
curl -s -L "https://api.github.com/repos/pkgforge-dev/Dolphin-emu-AppImage/releases/latest" \
  | grep -oE '"browser_download_url":\s*"[^"]+"' \
  | grep -E 'Dolphin_Emulator-.*-anylinux\.squashfs-x86_64\.AppImage' \
  | head -n1 \
  | cut -d '"' -f 4 \
  | xargs -r wget -O dolphin
chmod +x dolphin
mv dolphin gaming/etc/skel/.local/bin

# Pulling Cemu
curl -s https://api.github.com/repos/cemu-project/Cemu/releases/latest \
  | grep -oE '"browser_download_url":\s*"[^"]+\.AppImage"' \
  | head -n1 \
  | cut -d '"' -f 4 \
  | xargs -r wget -O cemu
chmod +x cemu
mv cemu gaming/etc/skel/.local/bin

# Pulling Ryujinx (I am not familiar with GitLab's API)
# AppImages can auto-update, but I'll manually make sure we are on the latest release every time
wget https://git.ryujinx.app/api/v4/projects/1/packages/generic/Ryubing/1.3.3/ryujinx-1.3.3-x64.AppImage -O ryujinx
chmod +x ryujinx
mv ryujinx gaming/etc/skel/.local/bin

# Copy design images (to use as wallpapers)
cp design/light.png design/dark.png xorg/etc/skel/image/

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

# Xorg
./mkiso.sh -a x86_64 \
    -r "https://repo-fastly.voidlinux.org/current" \
    -r "https://repo-fastly.voidlinux.org/current/nonfree" \
    -- -k "us" -T "Void Linux" -o ../build/xorg-prime.iso \
    -p "void-repo-nonfree" \
    -p "$drivers $services $utilities $development" \
    -p "$xorg $audio $bluetooth $fonts $apps" \
    -e /bin/bash \
    -I ../headless -I ../xorg -I ../safe \
    -S "dhcpcd cronie tlp iwd bluetoothd dbus polkitd" \
    -C "vconsole.keymap=us nowatchdog live.autologin live.shell=/bin/bash"

# Gaming
./mkiso.sh -a x86_64 \
    -r "https://repo-fastly.voidlinux.org/current" \
    -r "https://repo-fastly.voidlinux.org/current/nonfree" \
    -- -k "us" -T "Void Linux" -o ../build/performance-xorg-prime.iso \
    -p "void-repo-nonfree" \
    -p "$drivers $services $utilities $development" \
    -p "$xorg $audio $bluetooth $fonts $apps" \
    -e /bin/bash \
    -I ../headless -I ../xorg -I ../perf -I ../gaming \
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
    -I ../headless -I ../xorg -I ../safe -I ../personal \
    -S "dhcpcd cronie tlp iwd bluetoothd dbus polkitd" \
    -C "vconsole.keymap=us nowatchdog live.autologin live.shell=/bin/bash"

# Done!
cd ..
