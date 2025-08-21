#!/bin/bash

echo "Installing Sway and its dependencies..."

# Install Sway and its dependencies
sudo apt install -y sway \
    xwayland \
    lightdm \
    alacritty \
    foot \
    wofi \
    waybar \
    swaylock \
    swaybg \
    swayidle \
    mako-notifier


# Copy the default config file to the user's config directory
mkdir -p ~/.config/sway
cp /etc/sway/config ~/.config/sway/

# Make the system start with lightdm
sudo systemctl enable lightdm

echo "Sway and its dependencies have been installed successfully."