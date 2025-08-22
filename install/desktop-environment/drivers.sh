#!/bin/bash

# This script installs drivers, services, and fonts for a Sway desktop environment.

echo "Installing drivers, services, and fonts..."

# Bluetooth support
sudo apt install -y bluez blueman

# Audio support
sudo apt install -y pipewire pulseaudio wireplumber pavucontrol

# Network support
sudo apt install -y alsa-utils network-manager network-manager-gnome

# Printing support
sudo apt install -y cups system-config-printer

# Desktop portal support, for screen sharing and other features
sudo apt install -y xdg-desktop-portal-wlr xdg-desktop-portal-gnome pipewire-bin

# Install fonts
sudo apt install -y fonts-dejavu fonts-ubuntu fonts-font-awesome

# Install nerd fonts on ubuntu
# Create a directory for Nerd Fonts
mkdir -p ~/.local/share/fonts/NerdFonts

# Download and install JetBrainsMono Nerd Font (as an example)
echo "Downloading and installing JetBrainsMono Nerd Font..."
wget -q --show-progress https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
unzip -q JetBrainsMono.zip -d ~/.local/share/fonts/NerdFonts/JetBrainsMono
rm JetBrainsMono.zip

# Update font cache
fc-cache -fv

echo "Nerd Fonts installed successfully"


echo "Drivers, services, and fonts installation complete."