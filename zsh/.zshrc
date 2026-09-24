# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR="nvim"
# mise: use shims (added at the very end of this file) instead of `mise activate`.
# `activate`'s precmd hook rebuilds PATH from a stale, exported __MISE_ORIG_PATH,
# which was dropping us back to system Ruby 2.6. Shims are stateless and robust.
# Node is also managed by mise now (migrated off nvm — nvm.sh alone cost ~365ms
# on every shell startup).


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

############################
###         THEME        ###
############################
# Themes https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# zstyle ':omz:update' frequency 13
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
source $ZSH/oh-my-zsh.sh

export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"
export PATH="$PATH:$BREW_HOME"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

############################
###        Aliases       ###
############################
alias oer="cd ~/Developer/oerwrite"
alias la='ls -A'
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias t="tmux"
alias e='exit'
alias RET="RAILS_ENV=test"
alias rc="rails console"
alias lzd='lazydocker'

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/opt/homebrew/Cellar/poppler/24.04.0_1/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/bram/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.local/bin:$PATH"

# Clear any stale mise activation state inherited across `exec zsh` / subshells,
# then put mise shims at the front so `ruby`, `bundle`, etc. always resolve to the
# version pinned by .ruby-version / .tool-versions in the current directory.
unset __MISE_ORIG_PATH __MISE_DIFF __MISE_SESSION __MISE_ZSH_PRECMD_RUN MISE_SHELL
export PATH="$HOME/.local/share/mise/shims:$PATH"
