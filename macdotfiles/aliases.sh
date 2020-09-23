#!/usr/bin/env bash

### Aliases: ###

alias las='ls -lAhgo'
alias zsh='zsh --login'
alias z='zsh --login'
alias cdd='pushd'
alias cdb='popd'

## Mac Only ##
alias eject-usb='diskutil unmount'
alias java_home='/usr/libexec/java_home'
alias macjs='/System/Library/Frameworks/JavaScriptCore.framework/Resources/jsc'
alias delete='trash'         #see function below
alias hide-icons='hideIcons' #see function below
alias show-icons='showIcons' #see function below
alias visualvm='jvisualvm'
alias list-cpu='sysctl -n machdep.cpu.brand_string' # lists CPU name
# Mac has extened attributes and permisions that aren't part of Linux spec
# `ls - l` shows `+` for extended permisions and `@` for extened attr. 
# extended permision are seen by adding `-e` to `ls`. 
alias extended_attributes='xattr -l' # to expand the `@` sign in `ls -l` 

## Brew Related
alias sha1='openssl sha1'
alias sha256='openssl sha256'
alias tmux-named='tmux new -s'

## Homebrew Specific
alias brew-uses='brew uses --installed'
alias brew-requires='brew uses --installed'
alias brew-deps='brew-dependencies' #see function Below
alias brewup="brew upgrade && brew cleanup"
alias bs="brew services"

## CoffeeScript
alias coffee6='coffee --nodejs --harmony'
alias test-coffee='jasmine-node --coffee'
alias coffee-test='jasmine-node --coffee'


## Ruby Related
alias be='bundle exec'
alias binstubs='bundle install --binstubs'
# For Rubocop
alias rubocop-auto='rubocop --auto-correct --display-cop-names'
alias rubocop-rails='rubocop --auto-correct --display-cop-names --rails'
# For Sinatra
alias sg='shotgun -p 3000'
alias sgp='shotgun -s puma -p 3000 config.ru'
# For Rails
alias rspec-init='bin/rails generate rspec:install'
# For RBENV 
alias rbe='rbenv'
# When using rbenv instead of rvm I like below alias
alias rvm='rbenv'
# For Jekyll
alias jks='bundle exec jekyll s'
alias jkb='bundle exec jekyll build'
# For Pry
alias prys='pry --simple-prompt'
alias spry='pry --simple-prompt'

## JRuby Related 
alias jvm-visual='jvisualvm'
alias jvm-console='jconsole'

## Python Related
alias django-admin='django-admin.py'
alias django-manage='python3 manage.py'
alias pye='pyenv'
alias p3='python3'
alias pyevi='pyenv virtualenv'

## Rust Related 
alias cargo-wasm='cargo build --release --target wasm32-unknown-unknown'
alias rustdoc='rustup doc --std'	

## Elm Related 
alias elm-repl='elm repl'

## Kotlin Related 
alias kotlin-repl='kotlinc-jvm'

## Hugo Related
alias hugo-server='hugo server -D'
alias hugo-build='hugo --cleanDestinationDir' # Hugo build to public
alias hugo-build-minify='hugo --cleanDestinationDir --minify'
alias hugo-new='hugo new site'
alias hugo-new-theme='hugo new theme'

## ElasticSearch
# alias els='elasticsearch'
# alias els_nodes="curl 'localhost:9200/_cat/nodes?v' "
# alias els_health="curl 'localhost:9200/_cat/health?v' "
# alias els_indices="curl 'localhost:9200/_cat/indices?v' "

## Docker Related
# alias docker-remove-image='docker rmi'
# drun() { # start container with the specified entrypoint and colour terminal
#     if [[ $# -lt 2 ]]; then
#         echo "drun needs 2+ arguments: image entrypoint" >&2
#         return
#     fi
#     docker run -ti -e "TERM=xterm-256color" "$@"
# }

### Paths: ###

## Rust Related
if [ -e $HOME/.cargo ]; then
  source $HOME/.cargo/env
fi 


## GO Lang
# if [ -e /usr/local/opt/go ]; then
#   export PATH=$PATH:/usr/local/opt/go/libexec/bin
# fi

### Applications: ###

## For PostgresQL App
if [ -e /Applications/Postgres.app ]; then
  alias psql="'/Applications/Postgres.app/Contents/Versions/latest/bin'/psql -p5432"
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin # needed for building gems
fi

## JOSM
if [ -e ~/Applications/JOSM.app ]; then
  alias josm='java -jar ~/Applications/JOSM.app/Contents/Java/*.jar'
fi

## For other Mac Applications
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias safari='open -a Safari'
alias opera='/Applications/Opera.app/Contents/MacOS/Opera'


### Functions: ###

## PostgresQL
function pg(){
  # export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin;
  '/Applications/Postgres.app/Contents/Versions/latest/bin'/$*
}

## Brew Dependencies script
function brew-dependencies(){
   brew list | while read cask; do
     echo -n $fg[red] $cask $fg[white];
     brew deps $cask | awk '{printf(" %s ", $0)}'; echo "";
   done
 }
 
 function brew-dependencies2(){
    brew list | while read cask; do
      brew deps --tree $cask;
    done
  }

## Dash
function dashq(){
  open dash://$1:$2
}

## ElasticSearch
# if [ -e /usr/local/etc/elasticsearch/elasticsearch.yml ]; then
# echo {{ brew services list | grep "elasticsearch" }}
# function els_create_index(){
#   curl -XPUT "localhost:9200/$1?pretty"
# }
# fi

## Atom Packages
#function setup_atom(){
#  # apm install language-mjml;
#  apm install language-elm;
#  apm install language-elixir;
#  apm install elm-format;
#  #elm beautify
#  apm install file-icons;
#  apm install mini-map;
#  apm install minimap-highlight-selected;
#}

### Mac Only ###

## Trash files
function trash(){
  mv -f $1 ~/.Trash/
}

## Hide Icons
function hideIcons(){
  defaults write com.apple.finder CreateDesktop -bool false && killall Finder
}
function showIcons(){
  defaults write com.apple.finder CreateDesktop -bool true && killall Finder
}

## Nescesary Mac Defaults
function stopChromeSwipe(){
  defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE
}

## Reset RVM is not a function
if [ -e ~/.rvm/scripts/rvm ]; then
  function rvm-reset(){
    source ~/.rvm/scripts/rvm; type rvm | head -n 1
  }
fi

## Java Home for Java Cryptographic Extensions
# /usr/libexec/java_home
# jre/lib/security


### Experimental ###
if (ls /Applications | grep -q 'Julia'); then
  # mac only (location)
  # alias julia="/Applications/\"${$(ls /Applications | grep 'Julia')}\"/Contents/Resources/julia/bin/julia";
  alias julia="/Applications/\"$(ls /Applications | grep 'Julia' | head -1)\"/Contents/Resources/julia/bin/julia";
fi

if (ls /Applications | grep -q 'Firefox'); then
  # For Firefox Development Edition (mac only)
  # alias firefox="/Applications/\"${$(ls /Applications | grep 'Firefox')}\"/Contents/MacOS/firefox";
  alias firefox="/Applications/\"$(ls /Applications | grep 'Firefox' | head -1)\"/Contents/MacOS/firefox";
fi

# if (command -v pygmentize >/dev/null 2>&1 || exit 1 ); then
#   ## command -v <command>, type and hash are cheaper and quiter than `which'
#   ## command -v foo >/dev/null 2>&1 || { echo >&2 "aborting"; exit 1; }
#   ## type foo >/dev/null 2>&1 || exit 1
#   ## hash foo 2>/dev/null || exit 1
#   ## pip3 install Pygments
#   ## Make alias anyway as pyenv has trouble w/ pip
# fi

alias pcat='pygmentize -f terminal256 -O style=monokai -g'

if test -d $HOME/.jars && (ls $HOME/.jars/ | grep -q 'plantuml'); then
  function plantuml(){
    # Install the plantuml jar in a a folder called .jars on your home.
    java -jar $HOME/.jars/$(ls $HOME/.jars/ | grep 'plantuml' | head -1) $1
  }
fi

function minify(){
  # yuicompressor --disable-optimizations $1 -o $2
  # uglify-js is a npm package that should be installed globally `npm install uglify-js --global`
  if (command -v uglifyjs >/dev/null 2>&1 || exit 1 ); then
    uglifyjs $1 --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | uglifyjs --mangle --output $2
  else 
    echo "uglify-js is a npm package that should be installed globally 'npm install uglify-js --global'"
  fi
}

# if (type closure-compiler >/dev/null 2>&1 || exit 1); then
#   function minifyjs(){
#     closure-compiler --js $1 --js_output_file $2
#   }
# fi

function elm-heroku(){
  # maybe add an h2o server start on this.
  elm-make $1 --output index.html && mv index.html index.php
}

function port-uses() {
  # mac only
  sudo lsof -n -i4TCP:$1 | grep LISTEN
}

function invert-colors() {
  # mac only
  echo "Go to 'System Preferences>Keyboard>Keyboard shortcuts>Accessibility' and turn on the keyboard shortcut."
}

function disable-swipe-naviation() {
  defaults write com.operasoftware.Opera AppleEnableSwipeNavigateWithScrolls -bool FALSE
  defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE
}

function generate-gemfile() {
  touch Gemfile
  echo "source 'https://rubygems.org'\n" >> Gemfile
}

function docker-init() {
  touch .dockerignore 
  touch Dockerfile 
  echo "# Git\n.git\n.gitignore\n\n# Logs\nlog/*\n\n# Temp files\ntmp/*\n\n# Editor temp files\n*.swp\n*.swo\n" >> .dockerignore 
}

function time-machine-exclusions() {
  echo "requires sudo"; 
  # https://www.macworld.com/article/2033804/control-time-machine-from-the-command-line.html
  sudo tmutil addexclusion -p ~/.rbenv/versions;
  sudo tmutil addexclusion -p ~/.pyenv/versions;
  sudo tmutil addexclusion -p ~/.rustup/toolchains;
}
