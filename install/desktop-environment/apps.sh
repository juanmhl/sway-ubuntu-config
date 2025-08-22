#!/bin/bash

# This script installs essential desktop applications for a Sway desktop environment.

echo "Installing essential desktop applications..."

sudo apt install -y \
    nemo \
    file-roller \
    lximage-qt \
    mpv \
    evince \
    firefox \
    libreoffice

sudo apt update && sudo apt install extrepo -y
sudo extrepo enable librewolf
sudo apt update && sudo apt install librewolf -y



    # Set default applications

    # PDF files
    xdg-mime default evince.desktop application/pdf
    xdg-mime default evince.desktop application/x-pdf

    # Images
    xdg-mime default lximage-qt.desktop image/jpeg
    xdg-mime default lximage-qt.desktop image/png
    xdg-mime default lximage-qt.desktop image/gif
    xdg-mime default lximage-qt.desktop image/bmp
    xdg-mime default lximage-qt.desktop image/webp
    xdg-mime default lximage-qt.desktop image/tiff
    xdg-mime default lximage-qt.desktop image/x-xbitmap
    xdg-mime default lximage-qt.desktop image/x-portable-pixmap
    xdg-mime default lximage-qt.desktop image/x-portable-bitmap
    xdg-mime default lximage-qt.desktop image/x-portable-graymap
    xdg-mime default lximage-qt.desktop image/x-xpixmap
    xdg-mime default lximage-qt.desktop image/svg+xml

    # Video
    xdg-mime default mpv.desktop video/mp4
    xdg-mime default mpv.desktop video/x-matroska
    xdg-mime default mpv.desktop video/x-msvideo
    xdg-mime default mpv.desktop video/x-ms-wmv
    xdg-mime default mpv.desktop video/webm
    xdg-mime default mpv.desktop video/ogg
    xdg-mime default mpv.desktop video/mpeg
    xdg-mime default mpv.desktop video/3gpp
    xdg-mime default mpv.desktop video/quicktime

    # Audio
    xdg-mime default mpv.desktop audio/mpeg
    xdg-mime default mpv.desktop audio/mp3
    xdg-mime default mpv.desktop audio/x-wav
    xdg-mime default mpv.desktop audio/wav
    xdg-mime default mpv.desktop audio/ogg
    xdg-mime default mpv.desktop audio/flac
    xdg-mime default mpv.desktop audio/aac
    xdg-mime default mpv.desktop audio/mp4
    xdg-mime default mpv.desktop audio/x-ms-wma
    xdg-mime default mpv.desktop audio/x-matroska

    # Web browser
    xdg-mime default firefox.desktop x-scheme-handler/http
    xdg-mime default firefox.desktop x-scheme-handler/https
    xdg-mime default firefox.desktop text/html
    xdg-mime default firefox.desktop application/xhtml+xml

    # File manager
    xdg-mime default nemo.desktop inode/directory

echo "Essential desktop applications installation complete."