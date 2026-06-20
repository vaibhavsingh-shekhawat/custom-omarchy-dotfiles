# 🔥 Emberglow — Omarchy Dotfiles

Warm amber-toned desktop config for [Omarchy](https://omarchy.org/) (Arch Linux + Hyprland).

## Preview

![Wallpaper](wallpapers/emberglow-default.jpg)

## Structure

```
.
├── .config/          → ~/.config/  (Hyprland, Waybar, etc.)
├── wallpapers/       → ~/Pictures/Wallpapers/
├── themes/           → Theme palette files (colors, btop, neovim)
├── scripts/          → Utility scripts
├── install.sh        → One-command installer
└── README.md
```

## What's Included

| App | Config |
|-----|--------|
| Hyprland | window manager, keybindings, animations |
| Waybar | status bar with weather, system stats |
| Walker | app launcher |
| Alacritty / Kitty / Ghostty / Foot | terminals |
| Mako | notifications |
| Btop | system monitor |
| Fastfetch | system info |
| Neovim | editor config |
| Tmux | terminal multiplexer |
| SwayOSD | on-screen display |
| Starship | shell prompt |
| GTK | theme integration |

## Quick Install

```bash
git clone git@github.com:vaibhavsingh-shekhawat/custom-omarchy-dotfiles.git
cd custom-omarchy-dotfiles
chmod +x install.sh
./install.sh
```

Or manually symlink:

```bash
stow -t ~ .
```

## Theme: Emberglow

- **Background**: `#1a1410` (deep warm charcoal)
- **Foreground**: `#dbcab4` (warm cream)
- **Accent**: `#e8a84c` (amber gold)
- **Style**: warm, cozy, sunset-inspired
