#!/bin/bash

# This script installs utilities for a Sway desktop environment.

echo "Installing Sway utilities..."

sudo apt install -y \
    wl-clipboard \
    clipman \
    grim \
    slurp \
    brightnessctl \
    gnome-keyring \
    lxpolkit

# Create a directory for screenshots
sudo mkdir -p /home/$USER/Pictures/screenshots

# To be able to change brightness without sudo, we need to set permissions
# Set the udev rule file name
UDEV_RULE_FILE="/etc/udev/rules.d/90-backlight.rules"

# Udev rule content to be written
UDEV_RULE_CONTENT='ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", RUN+="/usr/bin/chgrp video /sys/class/backlight/%k/brightness", RUN+="/usr/bin/chmod g+w /sys/class/backlight/%k/brightness"'

# Check if the user is root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root. Please use 'sudo'."
  exit 1
fi

# Create the udev rule file and add the content
echo "Creating udev rule file for backlight permissions..."
echo "$UDEV_RULE_CONTENT" > "$UDEV_RULE_FILE"

# Add the user to the video group
echo "Adding user '$SUDO_USER' to the 'video' group..."
usermod -a -G video "$SUDO_USER"

echo "Permissions for brightness control have been set."
echo "Please reboot or log out and log back in for the changes to take effect."

# Create Sway config directory if it doesn't exist
mkdir -p /home/$USER/.config/sway/scripts

# Create the keyring script
KEYRING_SCRIPT="/home/$USER/.config/sway/scripts/keyring.sh"
echo "Creating gnome-keyring startup script..."

cat > "$KEYRING_SCRIPT" << 'EOF'
#!/bin/bash
eval $(gnome-keyring-daemon --start --components=secrets,ssh,pkcs11)
export GNOME_KEYRING_CONTROL
export SSH_AUTH_SOCK  
export GNOME_KEYRING_PID
EOF

# Make the keyring script executable
chmod +x "$KEYRING_SCRIPT"

echo "Keyring script created at: $KEYRING_SCRIPT"
echo "Add this line to your Sway config to enable gnome-keyring:"
echo "exec ~/.config/sway/scripts/keyring.sh"

echo "Sway utilities installation complete."