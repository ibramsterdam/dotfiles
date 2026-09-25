if [ -d /opt/homebrew/bin ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -d /usr/local/bin ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi
