#!/bin/bash

# This script installs common CLI tools for a Sway desktop environment.

echo "Installing common CLI tools..."

sudo apt install -y \
    git \
    tmux \
    curl \
    wget \
    build-essential \
    neofetch \
    bat \
    btop \
    ripgrep \
    fd-find \
    ncdu \
    tree

echo "CLI tools installation complete."