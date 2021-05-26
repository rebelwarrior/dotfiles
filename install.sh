if [ $(uname) = "Darwin" ]; then 
  touch $HOME/.secret
  touch $HOME/.bash_profile
  cat macdotfiles/append.bash_profile.sh >> $HOME/.bash_profile
  touch $HOME/.zshrc
  cat macdotfiles/append.zshrc.sh >> $HOME/.zshrc
  touch $HOME/.aliases
  cat macdotfiles/aliases.sh >> $HOME/.aliases
  touch $HOME/.vimrc
  cat macdotfiles/vimrc.vim >> $HOME/.vimrc
  touch $HOME/.gitconfig
  cat macdotfiles/gitconfig.toml >> $HOME/.gitconfig
  touch $HOME/.gitignore_global
  cat macdotfiles/gitignore_global >> $HOME/.gitignore_global
  touch $HOME/.profile
  cat macdotfiles/append.profile.sh >> $HOME/.profile
  touch $HOME/.zprofile
  cat macdotfiles/append.zprofile.sh >> $HOME/.zprofile
else
  touch $HOME/.secret
  touch $HOME/.zshrc
  cat macdotfiles/append.zshrc.sh >> $HOME/.zshrc
  touch $HOME/.aliases
  cat linuxdotfiles/aliases >> $HOME/.aliases
  touch $HOME/.vimrc
  cat macdotfiles/vimrc >> $HOME/.vimrc
  touch $HOME/.gitconfig
  cat macdotfiles/gitconfig.toml >> $HOME/.gitconfig
  touch $HOME/.gitignore_global
  cat linuxdotfiles/gitignore_global >> $HOME/.gitignore_global
  touch $HOME/.zprofile
  cat macdotfiles/append.zprofile.sh >> $HOME/.zprofile
fi