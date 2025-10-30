#!/bin/sh
if [ $# -ne 1 ]; then
    echo "Usage: $0 {Arch|arch|Void|void|Alpine|alpine}"
    exit 1
fi

# Packages
if [ "$1" = "Arch" ] || [ "$1" = "arch" ]; then
    sudo pacman -Sy --noconfirm \
        man-db man-pages \
        ncurses \
        curl openssl\
        alacritty tmux \
        fd ripgrep skim jq \
        sxhkd dmenu scrot \
        neovim code firefox \
        nsxiv xwallpaper ffmpeg mpv \
        zathura zathura-pdf-mupdf zathura-cb
    # Cloning and compiling dk from source
    sudo pacman -Sy --no-confirm git base-devel
    sudo pacman -Sy --noconfirm xcb-proto xcb-util xcb-util-wm xcb-util-cursor xcb-util-keysyms
    git clone https://github.com/natemaia/dk.git src
    cd src ; sudo make install ; cd ..

fi
if [ "$1" = "Void" ] || [ "$1" = "void" ]; then
    sudo xbps-install -Sy
        man-db man-pages \
        bash ncurses \
        curl openssl \
        alacritty tmux \
        fd ripgrep skim jq \
        dk sxhkd dmenu scrot \
        neovim vscode firefox \
        nsxiv xwallpaper ffmpeg mpv \
        zathura zathura-pdf-mupdf zathura-cb
    # Switching to bash
    if [ "$SHELL" != "/bin/bash" ]; then
    chsh -s /bin/bash
    fi
fi
if [ "$1" = "Alpine" ] || [ "$1" = "alpine" ]; then
    sudo apk add \
        man-db man-pages \
        bash bash-doc ncurses-doc \
        curl curl-doc openssl openssl-doc \
        alacritty alacritty-doc tmux tmux-doc \
        fd fd-doc ripgrep ripgrep-doc skim skim-doc jq jq-doc \
        dk dk-doc sxhkd sxhkd-doc dmenu dmenu-doc scrot scrot-doc \
        neovim neovim-doc firefox code-oss \
        nsxiv nsxiv-doc xwallpaper xwallpaper-doc ffmpeg ffmpeg-doc mpv mpv-doc \
        zathura zathura-doc zathura-pdf-mupdf zathura-cb
    # Switching to bash
    sudo apk add shadow
    chsh -s /bin/bash
fi

# Creating directories
mkdir -p ~/git/forks ~/notes ~/.path && echo -e "# Sessionizer\n> Put all your repositories here!" > ~/git/README.md
mkdir -p ~/audios ~/documents ~/pictures/screenshots ~/videos ~/downloads ~/.xdg 2>/dev/null

# Installing dotfiles
mkdir -p ~/.config
cp -i user-dirs.dirs ~/.config
cp -i .profile ~
cp -i .bashrc .tmux.conf .xinitrc ~
cp -rf alacritty dk scripts nvim zathura ~/.config

# Renaming possibily already existing directories
mv -f ~/Git ~/git 2>/dev/null
mv -f ~/Notes ~/notes 2>/dev/null
mv -f ~/Music ~/audios 2>/dev/null
mv -f ~/Documents ~/documents 2>/dev/null
mv -f ~/Pictures ~/pictures 2>/dev/null
mv -f ~/Videos ~/videos 2>/dev/null
mv -f ~/Downloads ~/downloads 2>/dev/null
mv -f ~/Desktop ~/.xdg/desktop 2>/dev/null

echo "Installation successful!"
echo "Now go tweak:"
echo -e "~/.bashrc\n~/.tmux.conf\n~/.xinitrc\n~/.config/alacritty\n!/.config/dk\n~/.config/scripts"
echo "Don't forget about Firefox and VSCode."
echo "Please re-login to your user and thanks for using prime!"
