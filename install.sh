#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$1"
  local dest="$2"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "  → skipping $dest (file exists, not a symlink)"
    return
  fi
  rm -f "$dest"
  ln -s "$src" "$dest"
  echo "  ✓ $dest → $src"
}

echo "Installing dotfiles from $DOTFILES"

link "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"
link "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
link "$DOTFILES/git/.gitignore_global" "$HOME/.gitignore_global"
link "$DOTFILES/vim/.vimrc" "$HOME/.vimrc"
link "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

if [[ "$(uname)" == "Darwin" ]] && [ -f "$DOTFILES/macos/defaults.sh" ]; then
  echo "Applying macOS defaults..."
  bash "$DOTFILES/macos/defaults.sh"
fi

echo "Done. Restart your shell."
