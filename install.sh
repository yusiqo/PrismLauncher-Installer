#!/bin/bash

APP_URL="https://github.com/Octol1ttle/ElyPrismLauncher/releases/download/8.4/PrismLauncher-Linux-x86_64.AppImage"
ICON_URL="https://raw.githubusercontent.com/yusiqo/PrismLauncher-Installer/refs/heads/main/prism.png"
APP_NAME="Prism"
INSTALL_DIR="/opt/$APP_NAME"

# Create the necessary directory
sudo mkdir -p "$INSTALL_DIR"

# Download AppImage
echo "AppImage Downloading..."
sudo curl -L "$APP_URL" -o "$INSTALL_DIR/$APP_NAME.AppImage"

# Make it executable
sudo chmod +x "$INSTALL_DIR/$APP_NAME.AppImage"

# Download icon
echo "İcon Downloading..."
sudo curl -L "$ICON_URL" -o "$INSTALL_DIR/$APP_NAME.png"

# Create desktop entry
DESKTOP_FILE="/usr/share/applications/$APP_NAME.desktop"
echo "Desktop file creating..."
sudo bash -c "cat > $DESKTOP_FILE" <<EOL
[Desktop Entry]
Name=$APP_NAME
Exec=$INSTALL_DIR/$APP_NAME.AppImage
Icon=$INSTALL_DIR/$APP_NAME.png
Type=Application
Categories=Utility;
Terminal=false
EOL

echo "$APP_NAME Successfully installed with icon and added to app list."
