#!/bin/bash

# This script installs common CLI tools for a Sway desktop environment.

echo "Installing common CLI tools..."

sudo apt install -y \
    git \       # Version control system
    tmux \      # Terminal multiplexer
    curl \      # Command line tool for transferring data
    wget \      # Network downloader
    build-essential \  # Essential packages for building software
    neofetch \  # System information tool
    bat \       # Cat clone with syntax highlighting
    btop \      # Resource monitor
    ripgrep \   # Fast text search
    fd-find \   # Simple, fast and user-friendly alternative to 'find'
    ncdu \      # Disk usage analyzer
    tree \      # Directory listing command

echo "CLI tools installation complete."