# !/bin/sh

# Directories
mkdir ~/git # Repositories
echo -e "# Sessionizer\nPut all your repositories here!" > ~/git/README.md
mkdir ~/.path # Included in $PATH

## Installing packages
sudo xbps-install -Syu stow \
  alacritty \
  tmux fd ripgrep q skim \
  dk sxhkd \
  dmenu scrot \
  vim-x11 \
  zathura zathura-pdf-mupdf zathura-cb \
  nsxiv xwallpaper \
  mpv obs obs-plugin-browser-bin v4l2loopback \
  qbittorrent pavucontrol blueman

## Installing Thorium
wget -O thorium.zip $(curl -sL https://api.github.com/repos/Alex313031/thorium/releases/latest | \
  jq -r '.assets[] | select(.name | test("thorium-browser_.*AVX2\\.zip$")) | .browser_download_url')
atool -x thorium.zip
mv thorium ~/.path
rm thorium.zip

## Installing Codium
wget -O codium.zip $(curl -sL https://api.github.com/repos/Alex313031/codium/releases/latest | \
  jq -r '.assets[] | select(.name | test("Codium_linux_x64.*\\.zip$")) | .browser_download_url')
atool -x codium.zip
mv Cod* codium
mv codium ~/.path
rm codium.zip

## Installing Codium extensions
codium --install-extension github.github-vscode-theme
codium --install-extension vscodevim.vim

## Installing dotfiles
stow --adopt .

## Removing unrequired vim colorschemes
VIM_VERSION=$(vim --version | grep -oP 'Vi IMproved \K[0-9.]+' | tr -d '.')
COLORS_PATH="/usr/share/vim/vim${VIM_VERSION}/colors"
sudo rm \
    "$COLORS_PATH/darkblue.vim" \
    "$COLORS_PATH/desert.vim" \
    "$COLORS_PATH/elflord.vim" \
    "$COLORS_PATH/evening.vim" \
    "$COLORS_PATH/koehler.vim" \
    "$COLORS_PATH/morning.vim" \
    "$COLORS_PATH/pablo.vim" \
    "$COLORS_PATH/retrobox.vim" \
    "$COLORS_PATH/slate.vim" \
    "$COLORS_PATH/torte.vim" \
    "$COLORS_PATH/zellner.vim" \
    "$COLORS_PATH/peachpuff.vim" \
    "$COLORS_PATH/unokai.vim"
