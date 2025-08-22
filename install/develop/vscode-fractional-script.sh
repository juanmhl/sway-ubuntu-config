#!/bin/bash

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