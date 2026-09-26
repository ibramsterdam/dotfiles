# dotfiles

Personal config for zsh, tmux, git, Alacritty, nvim, and Claude Code.

## Quickstart

```bash
git clone git@github.com:ibramsterdam/dotfiles.git ~/Developer/Repositories/dotfiles
~/Developer/Repositories/dotfiles/bin/install
```

Files that already exist are moved to `~/.dotfiles-backup/<timestamp>/` before they get replaced.

## What gets installed

1. Packages. macOS uses Homebrew and `Brewfile`. Ubuntu uses apt and snap, see `bin/os/linux`.
2. node, pnpm, yarn and the tree-sitter CLI through mise
3. Claude Code CLI
4. Alacritty. Ubuntu gets it from apt, macOS from the GitHub release.
5. oh-my-zsh with the autosuggestions and syntax-highlighting plugins
6. CaskaydiaMono and UbuntuMono Nerd Fonts
7. All the config files, symlinked into place
8. nvim plugins
9. Docker on Ubuntu, then the `my_db` (postgres 16) and `my_redis` (redis 8) containers from `docker/compose.yml`

Manage the containers from anywhere with the `dbs` alias:

```bash
dbs up -d
dbs down
dbs logs -f
```

On macOS, Alacritty needs a quarantine flag cleared on first launch, since its Homebrew cask is disabled:

```bash
xattr -dr com.apple.quarantine /Applications/Alacritty.app
```
