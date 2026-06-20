#!/bin/bash
set -e

echo "Installing dotfiles..."

# Clone the repo as a bare repo
git clone --bare https://github.com/YOUR_USER/dotfiles.git $HOME/dotfiles

# Checkout configs to home directory
git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout

# Handle conflicts by backing up
if [ $? -ne 0 ]; then
  echo "Backing up conflicting files..."
  mkdir -p $HOME/.dotfiles-backup
  git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout 2>&1 | \
    grep -oP '(?<=^\s+)..*' | while read file; do
    mkdir -p "$HOME/.dotfiles-backup/$(dirname "$file")"
    mv "$HOME/$file" "$HOME/.dotfiles-backup/$file"
  done
  git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout
fi

# Set up alias
echo 'alias dotfiles="git --git-dir=$HOME/dotfiles --work-tree=$HOME"' >> $HOME/.zshrc
echo 'alias dotfiles="git --git-dir=$HOME/dotfiles --work-tree=$HOME"' >> $HOME/.bashrc

git --git-dir=$HOME/dotfiles --work-tree=$HOME config status.showUntrackedFiles no

echo "Done! Restart your shell or source ~/.zshrc for the 'dotfiles' command."
echo "Usage: dotfiles status, dotfiles add <file>, dotfiles commit -m 'msg', dotfiles push"
