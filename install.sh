#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles-backup-$(date +%s)"

echo "=============================="
echo "  Emberglow Dotfiles Installer"
echo "  for Omarchy / Arch + Hyprland"
echo "=============================="
echo ""

# Check if omarchy is present
if ! command -v omarchy &>/dev/null; then
  echo "⚠ Omarchy not detected. This dotfiles set is designed for Omarchy."
  echo "  Proceeding anyway..."
  echo ""
fi

# Link all config files
echo "Installing config files..."
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
  echo "  ✓ $dirname"
done

# Handle files in .config root
for file in "$REPO_DIR/.config"/*; do
  [ -f "$file" ] || continue
  filename="$(basename "$file")"
  target="$HOME/.config/$filename"

  if [ -e "$target" ]; then
    mkdir -p "$BACKUP_DIR/.config"
    mv "$target" "$BACKUP_DIR/.config/$filename"
  fi

  cp "$file" "$target"
  echo "  ✓ $filename"
done

echo ""

# Set the theme
if command -v omarchy &>/dev/null; then
  echo "Applying Emberglow theme..."
  omarchy theme set emberglow 2>/dev/null || echo "  → Run 'omarchy theme set emberglow' manually"
else
  echo "→ To apply theme: copy omarchy/themes/emberglow to ~/.config/omarchy/themes/"
  echo "  Then run: omarchy theme set emberglow"
fi

echo ""
echo "=============================="
echo "  ✅ Done!"
echo ""
echo "  Backup saved at: $BACKUP_DIR"
echo "  Reboot or restart Hyprland to see changes."
echo "=============================="
