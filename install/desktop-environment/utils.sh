#!/bin/bash

# This script installs utilities for a Sway desktop environment.

echo "Installing Sway utilities..."

sudo apt install -y \
    wl-clipboard \      # Clipboard management for Wayland
    grim \              # Screenshot utility for Wayland
    slurp \             # Screen selection tool for Wayland
    brightnessctl \     # Monitor and control brightness
    gnome-keyring \     # GNOME keyring daemon
    lxpolkit            # PolicyKit authentication agent

echo "Sway utilities installation complete."