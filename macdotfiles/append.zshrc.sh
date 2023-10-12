### Oh My Zsh
## Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
## Theme
# ZSH_THEME="robbyrussell"
ZSH_THEME=random
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "kolo" )
if [ -e $HOME/.oh-my-zsh ]; then 
  ## Plugin
  plugins=(git)
  ## Load "Oh My Zsh"
  source $ZSH/oh-my-zsh.sh
fi

### Aliases
source ~/.aliases

### API Settings for Amazon S3 & Google API
source ~/.secret

### zsh-syntax-highlighting
if [ -e /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then 
  # Homebrew Installed
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [ -e $HOME/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then 
  # Git cloned into .oh-my-zsh non-plugin place.
  source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi 

### rbenv (RUBY)
if test -d "$HOME/.rbenv"; then 
  export PATH="$HOME/.rbenv/shims:${PATH}"
  export RBENV_SHELL=zsh
  eval "$(~/.rbenv/bin/rbenv init - zsh)"
fi

### PyEnv
# If getting a missing zlib run `xcode-select --install`
if (type pyenv >/dev/null 2>&1 || exit 1 ); then eval "$(pyenv init -)"; fi
if (type pyenv-virtualenv-init >/dev/null 2>&1 || exit 1 ); then
  eval "$(pyenv virtualenv-init -)"
  export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
  export WORKON_HOME=$HOME/.virtualenvs
fi

### Deno
if test -d "$HOME/.deno"; then 
  export DENO_INSTALL="$HOME/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"
fi

### Flutter 
if test -d "$HOME/Developer/flutter"; then 
  export PATH="$PATH:$HOME/Developer/flutter/bin"
  # export JAVA_HOME="/Applications/Android\ Studio\ Preview.app/Contents/jre/Contents/Home"
fi

## Haskell 
if test -d "$HOME/.ghcup"; then 
  source "$HOME/.ghcup/env"
fi

## Node
# export PATH="/opt/homebrew/opt/node@16/bin:$PATH"

### Added for RVM
# if [ -e $HOME/.rvm/scripts/rvm ]; then
#   export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#   [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# fi

## Blueutil turn off power to Bluetooth
# blueutil --power 0
