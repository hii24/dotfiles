#!/usr/bin/env bash
# macOS defaults — opinionated but sane
set -e

# Faster key repeat
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show file extensions
defaults write -g AppleShowAllExtensions -bool true

# Disable annoying window animations
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

# Save screenshots to ~/Pictures/Screenshots
mkdir -p "$HOME/Pictures/Screenshots"
defaults write com.apple.screencapture location "$HOME/Pictures/Screenshots"

# Don't write .DS_Store on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Restart Finder so changes take effect
killall Finder 2>/dev/null || true
echo "macOS defaults applied."
