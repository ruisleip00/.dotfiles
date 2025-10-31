#!/bin/bash
# Fedora setup script

echo "============================="
echo "🚀 Starting Fedora setup..."
echo "============================="

# ---- Update system ----
sudo dnf upgrade --refresh -y

# ---- Install common apps ----
echo "📦 Installing packages..."

# From DNF
sudo dnf install -y \
  git \
  neovim \
  fastfetch \
  vlc \
  gparted \
  btop \
  zsh \
  stow \
  gh \
  alacritty \
  fcitx5 \
  fcitx5-mozc \
  fcitx5-configtool \
  zsh

# ---- Optional: set default shell ----
chsh -s $(which zsh)

# ---- Cleanup ----
sudo dnf autoremove -y

echo "============================="
echo "✅ Fedora setup complete!"
echo "============================="

