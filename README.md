# comm-hyprland-config

This repository contains specific Hyprland desktop environment configuration files for the Bigcommunity Linux distribution.

## Overview

The comm-hyprland-config package provides a customized Hyprland configuration setup aimed at enhancing the user experience on Bigcommunity Linux. It includes pre-configured settings for the Hyprland compositor and related components.

## Features

- Pre-configured Hyprland window manager settings
- Custom keybindings optimized for workflow efficiency
- Integrated notification and status bar configurations
- Theme and appearance settings
- Automatic application rules and workspace assignments

## Dependencies

- Hyprland (window manager)
- waybar (status bar)
- rofi-wayland (application launcher)
- dunst (notification daemon)
- swww (wallpaper utility)
- kitty (default terminal)

## Installation

The package is available in the Bigcommunity repositories and can be installed using:

```bash
sudo pacman -S comm-hyprland-config
```

## Configuration Files

The main configuration files are located in the following directories:

```
/etc/comm/hypr/
└── config/
    ├── hyprland.conf       # Main Hyprland configuration
    ├── keybindings.conf    # Custom keyboard shortcuts
    ├── windowrules.conf    # Window behavior rules
    ├── autostart.conf      # Startup applications
    └── environment.conf    # Environment variables
```

## Customization

Users can override default settings by copying configuration files to their home directory:

```bash
mkdir -p ~/.config/hypr
cp -r /etc/comm/hypr/config/* ~/.config/hypr/
```

## Default Keybindings

| Keybind | Action |
|---------|--------|
| SUPER + Return | Open terminal |
| SUPER + Q | Close active window |
| SUPER + Space | Open application launcher |
| SUPER + [1-9] | Switch to workspace 1-9 |
| SUPER + Shift + [1-9] | Move window to workspace 1-9 |
| SUPER + F | Toggle fullscreen |
| SUPER + V | Toggle floating window |

## Contributing

Contributions are welcome! Please submit issues and pull requests to our GitHub repository.

## License

This configuration package is released under the GPL-3.0 license.

## Support

For support and discussions:
- Open an issue on our GitHub repository
- Visit the Bigcommunity Linux forums
- Join our Discord community

## Acknowledgments

Special thanks to:
- The Hyprland development team
- Bigcommunity Linux community contributors
- All package maintainers and testers
