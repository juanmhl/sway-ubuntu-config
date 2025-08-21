#!/bin/bash

echo "Installing Sway and its dependencies..."

# Install Sway and its dependencies
sudo apt install -y sway \
    xwayland \                # XWayland for compatibility with X11 applications
    lightdm \                 # Display manager
    alacritty \               # Terminal emulator
    foot \                    # Terminal emulator
    wofi \                    # Application launcher
    waybar \                  # Status bar
    swaylock \                # Screen locker
    swaybg \                  # Background manager
    swayidle \                # Idle management
    mako-notifier \           # Notification daemon


# Copy the default config file to the user's config directory
mkdir -p ~/.config/sway
cp /etc/sway/config ~/.config/sway/

# Make the system start with lightdm
sudo systemctl enable lightdm

echo "Sway and its dependencies have been installed successfully."