# dotfiles

Personal config for zsh, tmux, git, Alacritty, nvim, and Claude Code skills. Supports macOS and Linux.

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
claude/skills/<name>/            -> ~/.claude/skills/<name>   (one symlink per skill)
```

nvim config lives directly in this repo (the old standalone `ibramsterdam/nvim`
repo is archived). It keeps its own `bin/setup` / `bin/update` / `bin/health`
scripts. Edit it in place at `~/.config/nvim` (or `nvim/` here, same files
via symlink) and commit through the main dotfiles repo like everything else.

## Claude Code skills

`claude/skills/` holds personal, tool-agnostic skills. They are portable
across Claude Code, Codex, Cursor, etc. since they all share the same
`SKILL.md` format. Everything here is prefixed `bram-` so it can never
silently shadow a work repo's own project-level skill: Claude Code resolves a
same-named **skill** in favor of the global one, so an unprefixed personal
skill could override a repo's skill without anyone noticing. Custom
**subagents** resolve the other way (project-level wins over global), so the
same risk does not apply there, but the `bram-` prefix is used for those too
for consistency.

`claude/AGENTS.md` holds general, always-on writing rules (not task-specific,
so not a skill). It is symlinked to `~/.claude/CLAUDE.md`.

`bin/install` symlinks each subdirectory of `claude/skills/` individually into
`~/.claude/skills/`, never the whole `skills/` folder, since that directory
also holds a `synced/` subfolder managed by Claude Code itself.
