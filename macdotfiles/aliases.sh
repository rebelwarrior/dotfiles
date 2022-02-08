#!/usr/bin/env bash

################
### Aliases: ###
################

alias las='ls -lAhgo'
# alias zsh='zsh --login'
alias z='zsh --login'
alias cdd='pushd'
alias cdb='popd'
alias tree2="tree -L 2 ."

## Mac Only ##
alias eject-usb='diskutil unmount'
alias java_home='/usr/libexec/java_home'
# alias macjs='/System/Library/Frameworks/JavaScriptCore.framework/Resources/jsc'
alias delete='trash'         #see function below
alias hide-icons='hideIcons' #see function below
alias show-icons='showIcons' #see function below
alias list-cpu='sysctl -n machdep.cpu.brand_string' # lists CPU name
# Mac has extened attributes and permisions that aren't part of Linux spec
# `ls - l` shows `+` for extended permisions and `@` for extened attr.
# extended permision are seen by adding `-e` to `ls`.
alias extended_attributes='xattr -l' # to expand the `@` sign in `ls -l`
alias visualvm='jvisualvm'   #Java Visual VM

## Brew Related
alias sha1='openssl sha1'
alias sha256='openssl sha256'
# alias tmux-named='tmux new -s'

## Homebrew Specific
# Use `man brew` and `man brew-cask` for more info.
alias brew-uses='brew uses --installed'
alias brew-requires='brew uses --installed'
alias brewup="brew upgrade --ignore-pinned && brew cleanup"
alias bs="brew services"
alias brew-deps='brew-dependencies' #see function Below

## CoffeeScript
# alias test-coffee='jasmine-node --coffee'
# alias coffee-test='jasmine-node --coffee'

## Ruby Related
alias be='bundle exec'
alias updategems='gem update --system'
# For Rubocop
alias rubocop-auto='rubocop --auto-correct --display-cop-names' # -Da
alias rubocop-rails='rubocop --auto-correct --display-cop-names --rails'
alias rubocop-app='rubocop -Da app/'
# For Sinatra
# alias sg='shotgun -p 3000'
# alias sgp='shotgun -s puma -p 3000 config.ru'
# For Rails
alias rspec-init='bin/rails generate rspec:install'
# For RBENV
alias rbe='rbenv'
# For Pry
alias spry='pry --simple-prompt'
# For JRuby migration install jruby-lint
alias jruby-lint='jrlint'
## JRuby Opts
# export JRUBY_OPTS="-J-XX:+UseParallelGC" # Using different Garbage Collector
alias rake-tasks='rake -T'
# For Rails
alias rails6='rails new --skip-webpack-install --skip-test'
# For Jekyll
alias jekyll-dev='be jekyll serve --config _config.dev.yml'
# Gem Install version
# `gem install -v '~> 1.0'`

## Java Related
export JRE_HOME="/opt/homebrew/opt/openjdk@11"
alias java-arch="java -Xinternalversion"

## JavaScript / Node Related
alias safer-npm='npm config set ignore-scripts true'

## Python Related
alias pye='pyenv'
alias django-admin='django-admin.py'
alias django-manage='python3 manage.py'
# alias pcat='pygmentize -f terminal256 -O style=monokai -g'

## Rust Related
alias cargo-wasm='cargo build --release --target wasm32-unknown-unknown'
alias cargo-doc='cargo doc --open --package'

## Elm Related
alias elm-repl='elm repl'
alias elm-pipeline='elm install NoRedInk/elm-json-decode-pipeline'

## Elixir & Phoenix Related
function phoenix() {
  if pg_isready | grep -q 'accepting connections'; then
    mix phx.$1
  else
    echo "You must start PostgresQL or use 'mix phx.server'."
  fi
}

function ecto() {
  if pg_isready | grep -q 'accepting connections'; then
    mix ecto.$1 $2
  else
    echo "You must start PostgresQL or use 'mix ecto.something'."
  fi
}

## Kotlin Related
# alias kotlin-repl='kotlinc-jvm'

## Git Related
alias git-hotspot='git log --format=format: --name-only | egrep -v "^$" | sort | uniq -c | sort -r'

## Hugo Related
alias hugo-s='hugo server -D' #What does the -D do?
alias hugo-build='hugo --cleanDestinationDir' # Hugo build to public
alias hugo-build-minify='hugo --cleanDestinationDir --minify'
alias hugo-new='hugo new site'
alias hugo-new-theme='hugo new theme'

## Sublime Text
alias lime='subl'

## Deno Related
alias deno-fileserver='deno run --allow-net --allow-read https://deno.land/std/http/file_server.ts'

## Tailwind CSS
alias tailwind-build-css='npx tailwindcss-cli@latest build -o tailwind.css'

## Dart SDK
alias dart-pub="${HOME}/Developer/dart-sdk/bin/pub"

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

## Scala
# SBT seems to only work with Java 8
alias sbt8='sbt -java-home /usr/local/Cellar/openjdk@8/1.8.0+282/libexec/openjdk.jdk/Contents/Home'

## Kubernetes
alias kubectl='minikube kubectl --'


##############
### Paths: ###
##############

## Elixir Related
# Adds documentation for Erlang methods in Elixir.
export KERL_BUILD_DOCS="yes" # try with `h :calendar.gregorian_seconds_to_datetime`

## Rust Related
if [ -e $HOME/.cargo ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
  source $HOME/.cargo/env
  # Add Alias for pruning .cargo directory without delete bins.
fi

## GO Lang
# if [ -e /usr/local/opt/go ]; then; export PATH=$PATH:/usr/local/opt/go/libexec/bin; fi

## Sublime Text
alias lime='subl'
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"


#####################
### Applications: ###
#####################

## For PostgresQL App
if [ -e /Applications/Postgres.app ]; then
  alias psql="'/Applications/Postgres.app/Contents/Versions/latest/bin'/psql -p5432"
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
  # needed for building gems
fi

## Neo4j (Neo4j_Home to be set to where you put the tar export.)
export NEO4J_HOME="/usr/local/neo4j"
export NEO4J_CONF="/usr/local/neo4j/conf"
alias neo4j="/usr/local/neo4j/bin/neo4j"
alias neo4j-admin="/usr/local/neo4j/bin/neo4j-admin"
alias cypher-shell="/usr/local/neo4j/bin/cypher-shell"

## JOSM
# if [ -e ~/Applications/JOSM.app ]; then
#   alias josm='java -jar ~/Applications/JOSM.app/Contents/Java/*.jar'
# fi

## For other Mac Applications
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias safari='open -a Safari'
alias opera='/Applications/Opera.app/Contents/MacOS/Opera'

## Opera Driver Location (similar to chrome driver) get from GitHub
export OPERA_DRIVER_HOME="/usr/local/operadriver_mac64"


##################
### Functions: ###
##################

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

# function brew-dependencies2(){
#   brew list | while read cask; do
#     brew deps --tree $cask;
#   done
# }

## Dash
function dashq(){
  open dash://$1:$2
}

################
### Mac Only ###
################

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

## Reset RVM is not a function
# if [ -e ~/.rvm/scripts/rvm ]; then
#   function rvm-reset(){
#     source ~/.rvm/scripts/rvm; type rvm | head -n 1
#   }
# fi

## Java Home for Java Cryptographic Extensions
# /usr/libexec/java_home
# jre/lib/security
# /Library/Java/JavaVirtualMachines

## Codeweavers' CrossOver
alias cleanup-crossoover="rm ${HOME}/Library/Application\ Support/CrossOver/installers/*"

####################
### Experimental ###
####################

## Setting up alias for Julia
if [ -e ~/.julia ]; then
  alias julia="/Applications/\"$(ls /Applications | grep 'Julia' | head -1)\"/Contents/Resources/julia/bin/julia";
fi

## Setting up alias for Firefox
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


## PlantUML
# if test -d $HOME/.jars && (ls $HOME/.jars/ | grep -q 'plantuml'); then
if [ -e ~/.jars/plantuml.jar ]; then
  function plantuml(){
    ## Install the plantuml jar in a a folder called .jars on your home and call it plantuml.jar.
    # java -jar $HOME/.jars/$(ls $HOME/.jars/ | grep 'plantuml' | head -1) $1
    java -jar $HOME/.jars/plantuml.jar $1
  }
fi

## BFG
if test -d $HOME/.jars && (ls $HOME/.jars/ | grep -q 'bfg'); then
  function bigfg(){
    # Install the bfg jar in a a folder called .jars on your home.
    java -jar $HOME/.jars/$(ls $HOME/.jars/ | grep 'bfg' | head -1) $1
  }
fi

## Minify for Elm Only
function minify(){
  # Usage: minify input_file_name output_file_name
  # yuicompressor --disable-optimizations $1 -o $2
  if (command -v uglifyjs >/dev/null 2>&1 || exit 1 ); then
    uglifyjs $1 --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | uglifyjs --mangle --output $2
  else
    echo "uglify-js is a npm package that should be installed globally 'npm install uglify-js --global'"
  fi
}

# function port-uses() {
#   # mac only
#   sudo lsof -n -i4TCP:$1 | grep LISTEN
# }

## Inversts Display Colors note.
function invert-colors() {
  # mac only
  echo "Go to 'System Preferences>Keyboard>Keyboard shortcuts>Accessibility' and turn on the keyboard shortcut."
}

## Disable Swipe Navigation on Mac for Opera and Chrome (prevents going back by mistake)
function disable-swipe-naviation() {
  defaults write com.operasoftware.Opera AppleEnableSwipeNavigateWithScrolls -bool FALSE
  # defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE
  defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE
}

## Ruby Gemfile generate w/ first line.
function gemfile() {
  echo "Generating Gemfile"
  touch Gemfile
  echo "source 'https://rubygems.org'\n" >> Gemfile
}

## Tomcat
function tomcat() {
  # export CATALINA_OPTS=""
  export JRE_HOME="/opt/homebrew/opt/openjdk@11"
  echo('catalina run')
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

## Time Machine Exclusions
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

function install-functions() {
  source ~/.functions
}
