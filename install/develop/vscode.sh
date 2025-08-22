!#/bin/bash

echo "Installing Visual Studio Code..."

# Download and install the latest .deb package
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

echo "Visual Studio Code installation complete."

echo "Modifying code.desktop file for fractional scaling..."

# Define the flags to be added
FLAGS="--enable-ozone --ozone-platform=wayland"

# Path to the .desktop file
DESKTOP_FILE="/usr/share/applications/code.desktop"

# Use sed to append the flags to the Exec line
# The -i flag edits the file in place. The regex searches for a line starting with 'Exec='
# and appends the flags and the %U at the end of the line.
sudo sed -i "s|^Exec=\(.*\)%U|Exec=\\1$FLAGS %U|" "$DESKTOP_FILE"

echo "Creating custom wrapper script for vscode terminal use with fractional scaling..."

# Path for the wrapper script
WRAPPER_SCRIPT="$HOME/.local/bin/code"
# The parent directory needs to exist
mkdir -p "$(dirname "$WRAPPER_SCRIPT")"

# Create the wrapper script file with the required content
cat << EOF > "$WRAPPER_SCRIPT"
#!/bin/sh
exec /usr/bin/code $FLAGS "\$@"
EOF

# Make the wrapper script executable
chmod +x "$WRAPPER_SCRIPT"

# Check if the wrapper script's directory is in the user's PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  echo "Adding $HOME/.local/bin to PATH for future sessions."
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
fi

echo "Script modifications complete. You may need to restart your terminal or run 'source ~/.bashrc' for changes to take effect."