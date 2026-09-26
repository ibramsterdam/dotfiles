export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

setopt histignorealldups

case "$(uname -s)" in
  Darwin) source "$HOME/.config/zsh/os/darwin.zsh" ;;
  Linux)  source "$HOME/.config/zsh/os/linux.zsh" ;;
esac

alias repos="cd ~/Developer/Repositories"
alias oer="cd ~/Developer/Repositories/oerwrite"
alias la='ls -A'
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias t="tmux"
alias e='exit'
alias python="python3"
alias lzd='lazydocker'
alias dbs='docker compose -f ~/Developer/Repositories/dotfiles/docker/compose.yml'

alias rc="rails console"
alias RET="RAILS_ENV=test"

eval "$(mise activate zsh)"
