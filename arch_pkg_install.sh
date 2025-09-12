#!/bin/bash

set -e  # Exit on any error

echo "Starting Arch Linux package installation..."

# Update system first
echo "Updating system..."
sudo pacman -Syu --noconfirm

# Install packages from official repositories
echo "Installing packages from official repositories..."
sudo pacman -S --noconfirm \
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
    obs-studio

echo "Official packages installed successfully!"

# Install yay AUR helper if not already installed
if ! command -v yay &> /dev/null; then
    echo "Installing yay AUR helper..."
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ~
else
    echo "yay is already installed, skipping..."
fi

# Install tmux plugin manager
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "Installing tmux plugin manager..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "tmux plugin manager already installed, skipping..."
fi

# Install tmuxifier
if [ ! -d "$HOME/.tmuxifier" ]; then
    echo "Installing tmuxifier..."
    git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
else
    echo "tmuxifier already installed, skipping..."
fi

# Install AUR packages
echo "Installing packages from AUR..."
yay -S --noconfirm \
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

echo "AUR packages installed successfully!"
echo "All packages have been installed successfully!"
