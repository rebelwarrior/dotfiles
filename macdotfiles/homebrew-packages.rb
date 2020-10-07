## Linux Utilities
linux_utils = %w[
bat
tree
htop
ncdu
wget
]
## Essential Apps
essential_apps = %w[
git
gh
node
ssh-copy-id
youtube-dl
]
## Optional Apps
optional_apps = %w[
openjdk
bfg
hugo
guetzli
exercism 
tomcat
yarn
]
## DB Apps
db_apps = %w[
redis
]
## Programming Languages
prog = %w[
mruby
rbenv
ruby-build
pyenv
pyenv-virtualenv
]
## Optional Programming Languages
opt_prog = %w[
elixir
wasmer
wapm 
wabt
]
## Very Optional Programming Languages
very_opt_prog = %w[
scala
]
## Testing Components
web_testing = %w[
geckodriver
]
# Chrome Driver thru cask or https://chromedriver.chromium.org/downloads
## Taps
# Heroku
# Dart

minimal_install = linux_utils + essential_apps + db_apps + prog + web_testing
