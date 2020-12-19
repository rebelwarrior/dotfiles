### ZSH Theme suggestion:
# kolo

### Aliases
source ~/.aliases

### API Settings for Amazon S3 & Google API
source ~/.secret

### zsh-syntax-highlighting
if [ -e $HOME/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then 
  source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi 

### rbenv (RUBY)
if (type rbenv >/dev/null 2>&1 || exit 1 ); then 
  eval "$(rbenv init -)"; 
  if (type brew >/dev/null 2>&1 || exit 1 ); then 
    export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
  fi
fi

### PyEnv
# If getting a missing zlib run `xcode-select --install`
if (type pyenv >/dev/null 2>&1 || exit 1 ); then eval "$(pyenv init -)"; fi
if (type pyenv-virtualenv-init >/dev/null 2>&1 || exit 1 ); then
  eval "$(pyenv virtualenv-init -)"
  export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
  export WORKON_HOME=$HOME/.virtualenvs
fi

## Deno
if test -d "/Users/davidacevedo/.deno"; then 
  export DENO_INSTALL="/Users/davidacevedo/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"
fi

### Added for RVM
# if [ -e $HOME/.rvm/scripts/rvm ]; then
#   export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#   [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# fi

## Blueutil turn off power to Bluetooth
# blueutil --power 0

