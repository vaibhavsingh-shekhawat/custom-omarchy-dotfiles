# 🔥 Emberglow Dotfiles

A warm, amber-toned desktop configuration for **Omarchy** (Arch Linux + Hyprland).

> "Cozy sunset vibes, powerful workflow."

---

## ✨ Features

- **Custom Emberglow theme** — warm amber/gold palette across all apps
- **Polished Hyprland setup** — smooth animations, smart window rules, intuitive keybindings
- **Dynamic Waybar** — floating glass-morphism bar with weather, system stats, and media controls
- **Pre-configured apps** — Neovim, Tmux, Btop, Fastfetch, terminals, and more
- **One-command install** — clone and run `install.sh` to get started

---

## 📁 Structure

```
├── config/                     → symlinks to ~/.config/
│   ├── hypr/                   →   window manager & keybindings
│   ├── waybar/                 →   status bar layout & style
│   ├── alacritty/              →   terminal
│   ├── kitty/                  →   terminal
│   ├── ghostty/                →   terminal
│   ├── foot/                   →   terminal
│   ├── walker/                 →   app launcher
│   ├── mako/                   →   notifications
│   ├── btop/                   →   system monitor
│   ├── fastfetch/              →   system info
│   ├── nvim/                   →   neovim editor
│   ├── tmux/                   →   terminal multiplexer
│   ├── swayosd/                →   on-screen display
│   ├── starship.toml           →   shell prompt
│   ├── omarchy/                →   omarchy theme & hooks
│   ├── git/                    →   git config
│   ├── gtk-3.0/                →   GTK theme
│   ├── gtk-4.0/                →   GTK theme
│   ├── fontconfig/             →   font rendering
│   ├── lazygit/                →   git TUI
│   └── environment.d/          →   environment vars
├── themes/emberglow/           → color palette (colors.toml, btop, neovim, vscode)
├── wallpapers/                 → desktop wallpapers
├── scripts/                    → utility scripts (cava, net_speed, gpu)
├── install.sh                  → one-command installer
└── README.md
```

---

## 🎨 Theme: Emberglow

A custom warm palette designed for comfort and readability:

| Token      | Color       | Hex       |
|------------|-------------|-----------|
| Background | Deep Charcoal | `#1a1410` |
| Foreground | Warm Cream    | `#dbcab4` |
| Accent     | Amber Gold    | `#e8a84c` |
| Red        | Coral         | `#e85d4c` |
| Green      | Soft Sage     | `#7cb87a` |
| Blue       | Muted Sky     | `#6a9fb5` |

---

## 🚀 Quick Start

### Prerequisites

- [Omarchy](https://omarchy.org/) (or any Arch-based distro with Hyprland)
- Git

### Install

```bash
git clone git@github.com:vaibhavsingh-shekhawat/custom-omarchy-dotfiles.git
cd custom-omarchy-dotfiles
chmod +x install.sh
./install.sh
```

The installer will:
1. Back up your existing configs to `~/.dotfiles-backup-*`
2. Copy all configs to `~/.config/`
3. Copy wallpapers to `~/Pictures/Wallpapers/`
4. Apply the Emberglow theme

Restart Hyprland or reboot to see the changes.

### Manual

```bash
stow -t ~ config/
```

---

## ⌨️ Keybindings

| Key                          | Action                      |
|------------------------------|-----------------------------|
| `SUPER` + `Return`           | Open terminal               |
| `SUPER` + `Q`                | Close active window         |
| `SUPER` + `Shift` + `Return` | Open tmux session           |
| `SUPER` + `Shift` + `B`      | Open browser                |
| `SUPER` + `Shift` + `N`      | Open editor (Neovim)        |
| `SUPER` + `Shift` + `M`      | Open Spotify                |
| `SUPER` + `Shift` + `G`      | Open Signal                 |
| `SUPER` + `Shift` + `O`      | Open Obsidian               |
| `SUPER` + `1`-`9`            | Switch workspace            |
| `SUPER` + `Shift` + `1`-`9`  | Move window to workspace    |
| `SUPER` + `O`                | Toggle floating window      |
| `SUPER` + `Up/Down`          | Resize active window        |

Web app keybinds:
| Key                          | Action                      |
|------------------------------|-----------------------------|
| `SUPER` + `Shift` + `A`      | ChatGPT                     |
| `SUPER` + `Shift` + `C`      | Calendar (Hey)              |
| `SUPER` + `Shift` + `E`      | Email (Hey)                 |
| `SUPER` + `Shift` + `Y`      | YouTube                     |
| `SUPER` + `Shift` + `X`      | X/Twitter                   |

---

## 🖥️ Components

### Hyprland
- Smooth easeOutQuint animations
- Smart window gaps and borders
- Window rules for floating apps
- Gaming-optimized fullscreen opacity
- Night light toggle via `omarchy toggle nightlight`

### Waybar
- Floating centered bar with glass effect
- Left: Omarchy logo, clock, weather
- Center: workspace pips
- Right: system tray, audio, network, battery
- Expandable system info drawer (CPU/RAM/disk/temp)

### Neovim
- LazyVim-based config
- Auto-dark theme matching Omarchy
- Pre-configured plugins for Go, JS/TS, Markdown

### Tmux
- Catppuccin-inspired status bar
- Vi-style navigation
- Easy pane splitting

---

## 📦 Included Scripts

| Script              | Description                    |
|---------------------|--------------------------------|
| `cava.sh`           | Audio visualizer for Waybar    |
| `net_speed.sh`      | Network speed monitor          |
| `waybar-gpu.sh`     | GPU usage/temp for Waybar      |

---

## 🧰 Dependencies

These should already be present on Omarchy, but for other distros:

```
hyprland waybar walker mako btop fastfetch neovim tmux kitty ghostty
starship lazygit swayosd playerctl wttrbar
```

---

## 📸 Screenshots

> Add screenshots here — capture with `omarchy capture screenshot`

---

## 🤝 Contributing

Fork the repo, make your changes, and submit a pull request. Or [open an issue](https://github.com/vaibhavsingh-shekhawat/custom-omarchy-dotfiles/issues) for suggestions.

---

## 📄 License

MIT
