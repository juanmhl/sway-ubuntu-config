#!/bin/bash

# This script installs drivers, services, and fonts for a Sway desktop environment.

echo "Installing drivers, services, and fonts..."

sudo apt install -y \
    bluez \
    blueman \
    pipewire \
    pipewire-pulse \
    wireplumber \
    pavucontrol \
    alsa-utils \
    network-manager \
    network-manager-gnome \
    cups \
    system-config-printer \
    xdg-desktop-portal-wlr \
    xdg-desktop-portal-gnome \
    pipewire-bin \
    fonts-dejavu \
    fonts-ubuntu \
    fonts-font-awesome

echo "Drivers, services, and fonts installation complete."