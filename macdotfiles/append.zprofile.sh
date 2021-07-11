export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if (type pyenv >/dev/null 2>&1 || exit 1 ); then eval "$(pyenv init --path)"; fi

# export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
