# Command Line options


### How can I use Terminal/defaults to set "Click wallpaper to reveal desktop" to "Only in Stage Manager"
[source](https://apple.stackexchange.com/questions/468633/how-can-i-use-terminal-defaults-to-set-click-wallpaper-to-reveal-desktop-to-o)

```bash
defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -bool false
```
kill WindowManger to get the effect to take effect right away
```bash
killall WindowManager
```


To view IP address

```bash
# IP address assigned by ISP
curl ifconfig.me
# IP address assigned internally by router
ifconfig -a | grep broadcast
```

Command to set up Natural scrolling from command line. 
```bash
defaults write -g com.apple.swipescrolldirection -bool false
```

Useful Commands: 
[source](https://www.igeeksblog.com/macos-terminal-commands/)
