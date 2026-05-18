# hugodots

My hyprland dotfiles

### Skills used in this project
![Git](https://img.shields.io/badge/-Git-F14E32?style=flat-square&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/-GitHub-181717?style=flat-square&logo=github)
![Hyprland](https://img.shields.io/badge/-Hyprland-0093D0?style=flat-square&logo=wayland&logoColor=white)
![Wayland](https://img.shields.io/badge/-Wayland-FFEB3B?style=flat-square&logo=wayland&logoColor=black)
![Bash](https://img.shields.io/badge/-Bash-4EAA25?style=flat-square&logo=gnubash&logoColor=white)
![Zsh](https://img.shields.io/badge/-Zsh-F15A24?style=flat-square&logo=zsh&logoColor=white)
![CSS](https://img.shields.io/badge/-CSS-1572B6?style=flat-square&logo=css3&logoColor=white)
![JSON](https://img.shields.io/badge/-JSON-000000?style=flat-square&logo=json&logoColor=white)

## Overview

This repository contains my dotfiles for **Hyprland**, a Wayland compositor. It includes configurations for various applications and customizations.

## Components

### Window Manager & Desktop Environment

- **[Hyprland](https://hyprland.org/)** (`~/.config/hypr/`) - Modern Wayland compositor with tiling window manager capabilities
  - Modular configuration structure with separate files for different settings:
    - `autostart.conf` - Applications to launch at startup
    - `monitors.conf` - Display and monitor configuration
    - `myprograms.conf` - Custom program definitions
    - `env.conf` - Environment variables
    - `looks.conf` - Visual appearance and theming
    - `animations.conf` - Animation settings
    - `general.conf` - General behavior and settings
    - `input.conf` - Keyboard and mouse input configuration
    - `windowrule.conf` - Window-specific rules and properties
    - `keybinds.conf` - Custom keyboard shortcuts and bindings
  - `hyprlock.conf` - Lock screen configuration with custom styling

### Panel & Status Bar

- **[Waybar](https://github.com/Alexays/Waybar)** (`~/.config/waybar/`) - Modern status bar for Wayland
  - Displays clock, workspaces, system temperature, audio volume
  - Tray integration
  - Notification center integration via swaync
  - CSS-based styling with custom colors

### Application Launcher

- **[Wofi](https://hg.sr.ht/~scoopta/wofi)** (`~/.config/wofi/`) - Application launcher for Wayland
  - Fuzzy matching enabled
  - Customizable styling with CSS

### Notification Center

- **[SwayNC](https://github.com/ErikReider/SwayNC)** (`~/.config/swaync/`) - Notification center for Wayland
  - Configured position (top-right)
  - Custom control center dimensions
  - Widget configuration including buttons grid, media player info, and notifications
  - Custom color schemes and themes

### Power Menu

- **[wlogout](https://github.com/ArtsyMacaw/wlogout)** (`~/.config/wlogout/`) - Logout menu for Wayland
  - Custom icon set
  - Power-related actions (logout, shutdown, reboot, etc.)

### Shell Configuration

- **Zsh** (`.zshrc`) - Z shell configuration with:
  - Custom prompt styling with colors
  - zsh-autocomplete plugin integration
  - Completion system customization
  - Menu-based completion navigation
  - Customized color scheme for completions

### Wallpapers

- **Wallpaper Collection** (`~/.config/wallpapers/`) - Curated selection of wallpapers:
  - `a_view_of_the_ocean_from_a_balcony.jpg`
  - `china-mountains.jpg`
  - `my-neighbor-totoro-sunflowers.png`
  - `studio-ghibli-valley.jpg`
  - `train_anime.jpg`
- Custom scripts for wallpaper management:
  - `set-wallpaper.sh` - Set a specific wallpaper
  - `set-random.sh` - Set a random wallpaper from the collection

## Key Features

- **Wayland Native** - All components are designed for Wayland, ensuring modern display protocol support
- **Modular Configuration** - Hyprland config is split into logical files for easy maintenance
- **Custom Keybindings** - Super key (Windows key) based keybindings for efficient workflow
- **Visual Consistency** - Coordinated theming across all components
- **Status Monitoring** - Temperature, audio, and notification display on the status bar
- **Lock Screen** - Beautiful custom lock screen with blur effects
- **Application Launcher** - Quick access to applications with fuzzy search

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/hhhug000/hugodots.git ~/.config
   ```

2. Install dependencies for your distribution:

   **Arch Linux:**
   ```bash
   sudo pacman -S hyprland hyprlock waybar swaync wofi zsh
   ```

   **Fedora:**
   ```bash
   sudo dnf install hyprland hyprlock waybar swaync wofi zsh
   ```

   **Debian/Ubuntu and derivatives:**
   ```bash
   sudo apt install hyprland hyprlock waybar swaync wofi zsh
   ```

3. Apply the configurations:
   - Configs are automatically loaded from `~/.config/`
   - May need to restart Hyprland for all changes to take effect

4. Optional: Install zsh-autocomplete plugin:
   ```bash
   git clone https://github.com/marlonrichert/zsh-autocomplete.git ~/zsh-autocomplete
   ```

## Key Keybindings (from Hyprland config)

| Keybinding | Action |
|---|---|
| `Super + Q` | Open terminal |
| `Super + E` | Open file manager |
| `Super + R` | Open application launcher |
| `Super + M` | Exit |
| `Super + L` | Lock screen |
| `Ctrl + Alt + Delete` | Logout menu |
| `Super + O` | Set random wallpaper |
| `Super + W` | Change wallpaper |
| `Super + F` | Fullscreen |
| `Super + V` | Toggle floating |
| `Super + Shift + Arrow Keys` | Move focus |

## Dependencies

- `hyprland` - Window manager/compositor
- `hyprlock` - Lock screen
- `waybar` - Status bar
- `swaync` - Notification center
- `wofi` - Application launcher
- `wlogout` - Logout menu
- `zsh` - Shell
- `zsh-autocomplete` - Shell completion enhancement (optional)

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.

## Notes

- This is a personal dotfiles repository. Feel free to fork and adapt to your own setup
- Some paths and settings may be specific to this user's system and might need adjustment
- The Hyprland configuration includes scripts for wallpaper management which can be customized

