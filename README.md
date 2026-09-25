# dotfiles

Personal config for zsh, tmux, git, Alacritty, nvim, and Claude Code.

## Quickstart

```bash
git clone git@github.com:ibramsterdam/dotfiles.git ~/Developer/dotfiles
~/Developer/dotfiles/bin/install
```

## What gets installed

1. Homebrew, or Linuxbrew on Linux
2. Packages from `Brewfile` or `Brewfile.linux`: neovim, tmux, ripgrep, tree-sitter, mise, ruby-build, gh, libpq, postgresql@16, poppler, pnpm, lazydocker
3. Claude Code CLI
4. Alacritty, macOS only for now
5. UbuntuMono Nerd Font
6. All the config files, symlinked into place
7. nvim plugins

Alacritty needs a quarantine flag cleared on first launch, since its Homebrew cask is disabled:

```bash
xattr -dr com.apple.quarantine /Applications/Alacritty.app
```
