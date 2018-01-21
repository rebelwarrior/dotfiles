#! /usr/bin/env bash

# Git tab completion from Homebrew installed Git
source /usr/local/etc/bash_completion.d/git-prompt.sh

# Show Git branch in status line
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

### Amazon S3 & Google API Settings:
source ~/.secret

### Aliases
source ~/.aliases

### rbenv (RUBY)
if (type rbenv >/dev/null 2>&1 || exit 1 ); then eval "$(rbenv init -)"; fi

### PyEnv
# if (type pyenv >/dev/null 2>&1 || exit 1 ); then eval "$(pyenv init -)"; fi
# if (type pyenv-virtualenv-init >/dev/null 2>&1 || exit 1 ); then
#   eval "$(pyenv virtualenv-init -)"
#   export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
#   export WORKON_HOME=$HOME/.virtualenvs
# fi

### Added for RVM
# if [ -e $HOME/.rvm/scripts/rvm ]; then
#   source ~/.profile
#   export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#   [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# fi