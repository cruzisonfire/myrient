#!/bin/bash
# Simple installation script for myrient

# Check for root privileges if installing system-wide
if [ "$1" == "--system" ] && [ "$EUID" -ne 0 ]; then
  echo "System-wide installation requires root privileges."
  echo "Please run with sudo: sudo ./install.sh --system"
  exit 1
fi

# Default to local installation
INSTALL_DIR="$HOME/.local/bin"
INSTALL_TYPE="local"

# Check for system-wide installation flag
if [ "$1" == "--system" ]; then
  INSTALL_DIR="/usr/local/bin"
  INSTALL_TYPE="system-wide"
fi

# Create installation directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Copy the script to the installation directory
cp myrient "$INSTALL_DIR/myrient"

# Make the script executable
chmod +x "$INSTALL_DIR/myrient"

# Success message
echo "Myrient has been installed ($INSTALL_TYPE installation)."
echo "- Location: $INSTALL_DIR/myrient"

# Check if installation directory is in PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo "Warning: Installation directory is not in your PATH."
  
  if [ "$INSTALL_TYPE" == "local" ]; then
    echo "Add the following line to your ~/.bashrc or ~/.zshrc:"
    echo "  export PATH=\"\$PATH:$INSTALL_DIR\""
  fi
fi

echo "Installation complete. You can now use myrient by running: myrient <URL> [Download_Directory]"
