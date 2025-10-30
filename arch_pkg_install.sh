#!/bin/bash

set -e # Exit on any error

echo "Starting Arch Linux package installation..."

echo "Updating system..."
sudo pacman -Syu --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~

yay -S --noconfirm \
    neovim \
    ripgrep \
    base-devel \
    wofi \
    hyprland \
    hyprlock \
    hypridle \
    hyprpaper \
    hyprpicker \
    mako \
    waybar \
    starship \
    fastfetch \
    btop \
    bat \
    eza \
    zoxide \
    zsh \
    tmux \
    wl-clipboard \
    unzip \
    glib2 \
    fzf \
    bluez \
    bluez-utils \
    pipewire \
    pipewire-pulse \
    pipewire-alsa \
    pipewire-jack \
    wireplumber \
    iwd \
    gum \
    pamixer \
    lazygit \
    dconf-editor \
    libnotify \
    tree \
    vim \
    wget \
    git \
    alacritty \
    kitty \
    nautilus \
    imv \
    mpd \
    yazi \
    ttf-jetbrains-mono-nerd \
    docker \
    vlc \
    file-roller \
    zathura \
    obs-studio \
    hyprshot \
    hyprsunset \
    swayosd \
    pyprland \
    warp-terminal \
    cliphist \
    bluetui \
    wiremix \
    lazydocker \
    impala \
    mise \
    yaru-theme \
    spotify \
    vesktop \
    obsidian \
    vial \
    typora \
    google-chrome

echo "All packages have been installed successfully!"

git clone https://github.com/LazyVim/starter ~/.config/nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git ~/Tokyo-Night-GTK-Theme
cd Tokyo-Night-GTK-Theme/themes
./install.sh -c dark -t default --tweaks storm -l

gsettings set org.gnome.desktop.interface gtk-theme 'Tokyonight-Dark-Storm'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'

sudo reboot now
