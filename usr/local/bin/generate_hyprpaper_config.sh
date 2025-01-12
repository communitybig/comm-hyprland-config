#!/usr/bin/env sh

# Path to the wallpaper
WALLPAPER="/usr/share/backgrounds/community/BigHypr001.jpg"

# Check if the wallpaper file exists
if [ ! -f "$WALLPAPER" ]; then
    echo "ERROR: Wallpaper \"$WALLPAPER\" not found."
    exit 1
fi

# Path to the hyprpaper configuration file
CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"

# Create the configuration directory if it doesn't exist
mkdir -p "$(dirname "$CONFIG_FILE")"

# Initialize the configuration file with preload
echo "preload = $WALLPAPER" > "$CONFIG_FILE"

# Detect active monitors and add wallpaper configuration for each one
hyprctl monitors | grep -E "^Monitor" | awk '{print $2}' | while read -r monitor; do
    echo "wallpaper = $monitor,$WALLPAPER" >> "$CONFIG_FILE"
done

echo "Hyprpaper config generated at $CONFIG_FILE"
