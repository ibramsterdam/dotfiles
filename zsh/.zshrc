export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR="nvim"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

case "$(uname -s)" in
  Darwin) source "$HOME/.config/zsh/os/darwin.zsh" ;;
  Linux)  source "$HOME/.config/zsh/os/linux.zsh" ;;
esac

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

export PATH="$HOME/.local/bin:$PATH"
unset __MISE_ORIG_PATH __MISE_DIFF __MISE_SESSION __MISE_ZSH_PRECMD_RUN MISE_SHELL
export PATH="$HOME/.local/share/mise/shims:$PATH"
