#!/bin/bash

# This script installs essential desktop applications for a Sway desktop environment.

echo "Installing essential desktop applications..."

sudo apt install -y \
    nemo \              # File manager
    file-roller \       # Archive manager
    lximage-qt \        # Image viewer
    mpv \               # Media player
    evince              # Document viewer



echo "Essential desktop applications installation complete."