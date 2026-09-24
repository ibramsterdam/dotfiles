# dotfiles

Personal config for zsh, tmux, git, Alacritty, and nvim.

## Quickstart (new machine)

```bash
git clone --recurse-submodules git@github.com:ibramsterdam/dotfiles.git ~/Developer/dotfiles
~/Developer/dotfiles/bin/install
```

`bin/install` symlinks each config into place (backing up anything already
there under `~/.dotfiles-backup/`) and then runs nvim's own `bin/setup` to
restore plugins.

## Layout

```
zsh/.zshrc                       -> ~/.zshrc
tmux/.tmux.conf                  -> ~/.tmux.conf
git/.gitconfig                   -> ~/.gitconfig
alacritty/alacritty.toml         -> ~/.config/alacritty/alacritty.toml
nvim/                            -> ~/.config/nvim   (submodule)
```

nvim is tracked as a git submodule pointing at
[ibramsterdam/nvim](https://github.com/ibramsterdam/nvim), which has its own
history and `bin/setup` / `bin/update` / `bin/health` scripts. Edit it in
place at `~/.config/nvim` (or `nvim/` here — same files) and push/pull that
repo directly; bump the pinned commit in this repo with
`git submodule update --remote nvim`.
