#!/bin/bash

echo "Installing Sway and its dependencies..."

# Install Sway and its dependencies
sudo apt install -y sway \
    xwayland \
    sddm \
    alacritty \
    foot \
    wofi \
    waybar \
    swaylock \
    swaybg \
    swayidle \
    mako-notifier \
    libnotify-bin \
    wlogout


# Copy the default config file to the user's config directory
mkdir -p ~/.config/sway
cp /etc/sway/config ~/.config/sway/

# Copy default waybar config to the user's config directory
mkdir -p ~/.config/waybar
cp /etc/xdg/waybar/config ~/.config/waybar/
cp /etc/xdg/waybar/style.css ~/.config/waybar/

echo "Sway and its dependencies have been installed successfully."