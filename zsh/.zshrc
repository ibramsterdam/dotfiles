export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export EDITOR="code"
eval "$(rbenv init -)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME=$HOME/.config

############################
###         THEME        ###
############################
# Themes https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
plugins=(git)

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

###########################
###         PNPM        ###
###########################
export PNPM_HOME="/home/bram/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"
export PATH="$PATH:$BREW_HOME"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

############################
###        Aliases       ###
############################
alias dive="docker exec -it -w /oerwrite oerwrite-app-1 zsh"
alias oer="cd ~/Docfield/oerwrite"
alias la='ls -A'
alias vim="nvim"
alias python="python3"
alias vi="nvim"
alias v="nvim"
alias stage="cd ~/Tltd/bordfolio"
alias t="tmux"
alias e='exit'
export PATH="/home/linuxbrew/.linuxbrew/opt/mysql@8.0/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/imagemagick@6/bin:$PATH"
