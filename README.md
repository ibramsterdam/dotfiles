# dotfiles

Personal config for zsh, tmux, git, Alacritty, and nvim. Supports macOS and Linux.

## Quickstart (new machine)

```bash
git clone git@github.com:ibramsterdam/dotfiles.git ~/Developer/dotfiles
~/Developer/dotfiles/bin/install
```

`bin/install` symlinks each config into place (backing up anything already
there under `~/.dotfiles-backup/`) and then runs nvim's own `bin/setup` to
restore plugins.

## Layout

```
zsh/.zshrc                       -> ~/.zshrc
zsh/os/                          -> ~/.config/zsh/os   (darwin.zsh / linux.zsh, picked by uname)
tmux/.tmux.conf                  -> ~/.tmux.conf
git/.gitconfig                   -> ~/.gitconfig
git/ignore                       -> ~/.config/git/ignore
alacritty/alacritty.toml         -> ~/.config/alacritty/alacritty.toml
nvim/                            -> ~/.config/nvim
```

nvim config lives directly in this repo (the old standalone `ibramsterdam/nvim`
repo is archived). It keeps its own `bin/setup` / `bin/update` / `bin/health`
scripts — edit it in place at `~/.config/nvim` (or `nvim/` here — same files
via symlink) and commit through the main dotfiles repo like everything else.
