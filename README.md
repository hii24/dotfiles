# 🖥️ dotfiles

My personal terminal, editor, and shell configs. Battle-tested across macOS work machines since 2022.

## What's in here

```
.
├── zsh/        # zshrc, aliases, prompt
├── vim/        # vimrc with ~30 plugins via vim-plug
├── git/        # gitconfig, gitignore_global, useful aliases
├── tmux/       # tmux.conf with vim-like navigation
├── macos/      # defaults write commands for macOS
└── install.sh  # one-shot setup script
```

## Install

```bash
git clone https://github.com/hii24/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

`install.sh` symlinks each config into your home directory and skips anything that already exists.

## Highlights

- 🚀 zsh prompt shows current node version + git status without slowing the shell
- 🎨 vim colorscheme that respects terminal theme (light/dark auto-switch)
- 🔧 git aliases I actually use: `git lg`, `git wip`, `git unstage`, `git fixup`
- 🍎 macOS defaults — disable annoying animations, faster key repeat, finder showing hidden files

## Note

This is *my* setup. Take what's useful. The whole point is that dotfiles are personal.
