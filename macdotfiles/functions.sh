#!/usr/bin/env bash

#######################
## Install Functions ##
#######################

## Install Rbenv Use Plugins
function install-rbenv-use() {
  mkdir -p $RBENV_ROOT/plugins
  git clone https://github.com/rkh/rbenv-whatis.git $RBENV_ROOT/plugins/rbenv-whatis
  git clone https://github.com/rkh/rbenv-use.git $RBENV_ROOT/plugins/rbenv-use
}

## Install oh-my-zsh
function install-omz() {
  #if git is a function ---
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
  cp ~/.zshrc ~/.zshrc.orig
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  #chsh -s $(which zsh)
}

########################
### Set Up Functions ###
########################

## Initialize Docker
function docker-init() {
  touch .dockerignore
  touch Dockerfile
  echo "# Git\n.git\n.gitignore\n\n# Logs\nlog/*\n\n# Temp files\ntmp/*\n\n# Editor temp files\n*.swp\n*.swo\n" >> .dockerignore
}

## Set up Time Machine Exclusions
function time-machine-exclusions() {
  echo "requires sudo";
  ## https://www.macworld.com/article/2033804/control-time-machine-from-the-command-line.html
  sudo tmutil addexclusion -p ~/.rbenv/versions;
  sudo tmutil addexclusion -p ~/.pyenv/versions;
  sudo tmutil addexclusion -p ~/.rustup/toolchains;
  sudo tmutil addexclusion -p /opt/homebrew; # Apple M1 Location Homebrew
  sudo tmutil addexclusion -p ~/Library/Application\ Support/CrossOver/Bottles/Dynamic\ Painter;
  sudo tmutil addexclusion -p ~/Library/Application\ Support/CrossOver/Bottles/Steam; # CX Steam
  sudo tmutil addexclusion -p ~/Library/Containers/com.docker.docker/Data; # Docker
  sudo tmutil addexclusion -p ~/Library/Application\ Support/Steam/steamapps/common; # Mac Steam
}


## Vim Packages
function setup_vim(){
  # Needs Dart plugin and better documentation!
  # Nerd tree
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
  # echo "autocmd vimenter * NERDTree" >> .vimrc
  git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
}

## Atom Packages
# function setup_atom(){
#   apm install language-mjml;
#   apm install language-elm;
#   apm install language-elixir;
#   apm install elm-format;
#   #elm beautify
#   apm install file-icons;
#   apm install mini-map;
#   apm install minimap-highlight-selected;
#   apm install dart
# }

##################################
### Trouble shooting functions ###
##################################

## BlueTooth
alias list-bluetooth="system_profiler SPBluetoothDataType"
