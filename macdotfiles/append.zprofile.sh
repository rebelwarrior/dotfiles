export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)" This returns the below line and executing it. 
export PATH="$HOME/.pyenv/shims:${PATH}"

# export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
