#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles-backup-$(date +%s)"

echo "=============================="
echo "  Emberglow Dotfiles Installer"
echo "  for Omarchy / Arch + Hyprland"
echo "=============================="
echo ""

if ! command -v omarchy &>/dev/null; then
  echo "⚠ Omarchy not detected — designed for Omarchy but proceeding..."
  echo ""
fi

# Install config files
echo "Installing configs..."
for dir in "$REPO_DIR/.config/"*/; do
  dirname="$(basename "$dir")"
  target="$HOME/.config/$dirname"
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "  Backing up $target → $BACKUP_DIR/.config/$dirname"
    mkdir -p "$BACKUP_DIR/.config"
    mv "$target" "$BACKUP_DIR/.config/$dirname"
  fi
  mkdir -p "$HOME/.config"
  cp -r "$dir" "$target"
  echo "  ✓ .config/$dirname"
done

for file in "$REPO_DIR/.config"/*; do
  [ -f "$file" ] || continue
  filename="$(basename "$file")"
  target="$HOME/.config/$filename"
  if [ -e "$target" ]; then
    mkdir -p "$BACKUP_DIR/.config"
    mv "$target" "$BACKUP_DIR/.config/$filename"
  fi
  cp "$file" "$target"
  echo "  ✓ .config/$filename"
done

# Copy wallpapers
echo ""
echo "Installing wallpapers..."
mkdir -p "$HOME/Pictures/Wallpapers"
cp -r "$REPO_DIR/wallpapers/"* "$HOME/Pictures/Wallpapers/" 2>/dev/null && echo "  ✓ wallpapers"

# Apply theme
echo ""
if command -v omarchy &>/dev/null; then
  echo "Applying Emberglow theme..."
  omarchy theme set emberglow 2>/dev/null || echo "  → Run: omarchy theme set emberglow"
else
  echo "→ Apply theme: omarchy theme set emberglow"
fi

echo ""
echo "=============================="
echo "  Done!"
echo "  Backup: $BACKUP_DIR"
echo "  Restart Hyprland or reboot."
echo "=============================="
