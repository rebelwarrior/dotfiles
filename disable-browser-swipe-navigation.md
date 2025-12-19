# Disabling Browser Swipe Navigation

## Chrome

```bash
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
```
[source](https://apple.stackexchange.com/questions/21236/how-do-i-disable-chromes-two-finger-back-forward-navigation)

```bash
defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
```

## Safari & Others

```
# Disable back gesture in specific apps

# Chrome
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE
# FireFox
defaults write org.mozilla.firefox AppleEnableSwipeNavigateWithScrolls -bool FALSE
# Brave
defaults write com.brave.Browser AppleEnableSwipeNavigateWithScrolls -bool FALSE
# Safari
defaults write com.apple.Safari AppleEnableSwipeNavigateWithScrolls -bool FALSE
```
[source](https://gist.github.com/babakness/839ee2fb307816a77dbf8feeb3f57d00)
