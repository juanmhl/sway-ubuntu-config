#!/bin/bash

# This script installs utilities for a Sway desktop environment.

echo "Installing Sway utilities..."

sudo apt install -y \
    wl-clipboard \
    grim \
    slurp \
    brightnessctl \
    gnome-keyring \
    lxpolkit

echo "Sway utilities installation complete."