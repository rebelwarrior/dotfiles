if [ $(uname) = "Darwin" ]; then 
  touch $HOME/.secret
  touch $HOME/.bash_profile
  cat macdotfiles/append.bash_profile.sh >> $HOME/.bash_profile
  touch $HOME/.zshrc
  cat macdotfiles/append.zshrc.sh >> $HOME/.zshrc
  touch $HOME/.aliases
  cat macdotfiles/aliases >> $HOME/.aliases
  touch $HOME/.vimrc
  cat macdotfiles/vimrc >> $HOME/.vimrc
  touch $HOME/.gitignore_global
  cat macdotfiles/gitignore_global >> $HOME/.gitignore_global
else
  touch $HOME/.secret
  touch $HOME/.zshrc
  cat macdotfiles/append.zshrc.sh >> $HOME/.zshrc
  touch $HOME/.aliases
  cat linuxdotfiles/aliases >> $HOME/.aliases
  touch $HOME/.vimrc
  cat macdotfiles/vimrc >> $HOME/.vimrc
  touch $HOME/.gitignore_global
  cat linuxdotfiles/gitignore_global >> $HOME/.gitignore_global
fi