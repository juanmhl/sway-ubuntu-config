#!/bin/bash

# This script installs drivers, services, and fonts for a Sway desktop environment.

echo "Installing drivers, services, and fonts..."

sudo apt install -y \
    bluez \                     # Bluetooth support
    blueman \                   # Bluetooth manager
    pipewire \                  # Audio and video server
    pulseaudio \                # Sound server
    wireplumber \               # Session manager for PipeWire
    pavucontrol \               # PulseAudio volume control
    alsa-utils \                # Advanced Linux Sound Architecture utilities
    network-manager \           # Network management
    network-manager-gnome \     # GNOME frontend for NetworkManager
    cups \                      # Common Unix Printing System
    system-config-printer \     # Printer configuration tool
    xdg-desktop-portal-wlr \    # Desktop portal for Wayland
    xdg-desktop-portal-gnome \  # GNOME desktop portal
    pipewire-bin \              # PipeWire utilities
    fonts-dejavu \              # DejaVu fonts
    fonts-ubuntu \              # Ubuntu fonts
    fonts-font-awesome

echo "Drivers, services, and fonts installation complete."