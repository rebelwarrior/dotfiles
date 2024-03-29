# Post Install

## Command Line Install

1. [Homebrew](https://brew.sh)
3. [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) `git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh`
4. [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) 
 - `brew install zsh-syntax-highlighting`
 - `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
 - add `plugins=(git zsh-syntax-highlighting)` to `~/.zshrc`
5. Command-line utilities
 - htop
 - awk
 - nnn
 - ncdu
 - ssh-copy-id
 - tree
 - bat

### RbEnv & Ruby Build

1. Ruby and RbEnv and [RbEnv Use](https://github.com/rkh/rbenv-use)
 - ~~`brew install ruby-build --HEAD`~~
 - ~~`brew install rbenv`~~ 
 - ~~`brew install rbenv-use`~~  
**requires extra steps now**  
`git clone https://github.com/rbenv/rbenv.git ~/.rbenv`  
`echo 'eval "$(~/.rbenv/bin/rbenv init - zsh)"' >> ~/.zshrc` (Should already be on zshrc.sh)  
`git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build`  
`git clone https://github.com/rkh/rbenv-whatis.git "$(rbenv root)"/plugins/rbenv-whatis`  
`git clone https://github.com/rkh/rbenv-use.git "$(rbenv root)"/plugins/rbenv-use`  
 
## Mac Applications 

1. [App Cleaner](https://freemacsoft.net/appcleaner/)
2. [iTerm2](https://iterm2.com)
3. FlyCut (copy manager) 
 - `brew cask install flycut`
4. Programming Resource: [Dash](https://kapeli.com/dash)
5. Text Editor: [TextMate](https://macromates.com/download) Bundles: [Crystal lang tmbundle](https://github.com/crystal-lang-tools/Crystal.tmbundle)[TypeScript tmbundle](https://github.com/stanger/TypeScript-TextMate)[Elm lang](https://github.com/siame/Elm.tmBundle)
6. Text Editor: [Visual Studio Code](https://code.visualstudio.com/Download)
  - Use Cmnd+Shft+P to open [shell pallet](https://code.visualstudio.com/docs/setup/mac) and then type `shell command`
  - To install extensions form the command line: `code --install-extension (|)` 
  - Extensions:
    1. `rust-lang.rust`
    2. `bungcip.better-toml`
    3. `sbrink.elm`
    4. `karunamurti.haml`
7. Text Editor: [Atom](https://atom.io)
8. Web Browser: [Google Chrome](https://www.google.com/chrome/) (if Desktop)
9. Web Browser: [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
10. Web Browser: [Opera](https://www.opera.com) (if Laptop)
11. Synching Files [Dropbox](https://www.dropbox.com/install)
12. Programming Resource: [Postgres App](https://postgresapp.com/downloads.html)
13. Programming Resource: [DBeaver](https://dbeaver.io/download/)
14. Programming Resource: [Postico](https://eggerapps.at/postico/) -thumbs up-
15. VPN Software
16. [Scapple](https://www.literatureandlatte.com/scapple/download) (M1 Compatible)
17. [Deckset](https://www.deckset.com) (Possibly M1?)
18. ~[LibreOffice](https://www.libreoffice.org) (if desktop)~ Use OnlyOffice below.
19. [CrossOver](https://www.codeweavers.com) (Rosetta2 compatible)
20. Readdle's [PDF Expert](https://pdfexpert.com) (M1 Optimized)
21. Amazon Apps: Amazon Music, Kindle App, Send to Kindle
22. [Slack](https://slack.com/downloads/osx)
23. [Steam App](https://store.steampowered.com/about/) (only Rosetta2...)
24. [QGis](https://qgis.org/en/site/forusers/download.html)
25. [SoundSource](https://www.rogueamoeba.com/soundsource/)
26. [OnlyOffice](https://www.onlyoffice.com/en/desktop.aspx) (Set font hinting to OS-X if on mac)


## Programming Languages Apps

1. Ruby and RbEnv and [RbEnv Use](https://github.com/rkh/rbenv-use)
2. [NodeJs]() (M1 Optimized in latest version)
3. [Elm Lang](https://elm-lang.org)
4. Python and Pyenv
  - `brew install pyenv`
  - `brew install pyenv-virtualenv`
  - Check output of `pyenv init --path` is in `.zprofile`
  - Install Pip packages `pip3 install youtube-dl` 
5. [Julia Lang](https://julialang.org/downloads/) for Data Science
7. [Microsoft R Open](https://mran.microsoft.com/open) & [RStudio](https://www.rstudio.com/products/rstudio/download/) or [Plain R](https://cran.microsoft.com) for Data Science
8. [Podman](https://podman-desktop.io) (podman installs in /opt/) Container Support (Docker) [~Docker Desktop App~](https://www.docker.com/products/docker-desktop) [~VirtualBox~](https://www.virtualbox.org/)
9. ~~[PlantUML](http://plantuml.com)~~
10. [Neo4J](https://neo4j.com/download-center/#community) (Requires OpenJDK@11) (Download .zip and place `/usr/local/neo4j`)
11. [JVisualVM](https://visualvm.github.io/download.html)
12. [Exercism](https://exercism.io/my/settings) `brew install exercism` & `exercism configure`
13. [Crystal-lang](https://github.com/crystal-lang/crystal/releases) now has a package installer. (Installs in `/opt`)
14. [Rust-lang](https://www.rust-lang.org/tools/install)

## Mac App Store Apps

1. [Affinity Designer](https://affinity.serif.com/en-gb/designer/) (M1 Optimized)
2. [Affinity Photo](https://affinity.serif.com/en-gb/photo/) (M1 Optimized)
3. [Magnet](https://magnet.crowdcafe.com/) (M1 Optimized, it's a universal binary)
4. [Spark](https://sparkmailapp.com/) (M1 Optimized)
6. iWork Suite (Pages, Numbers, Keynote) 
5. ~~[TouchDraw](https://apps.apple.com/us/app/touchdraw/id548887176?mt=12) (works a bit like Visio)~~
7. [WireGuard](https://apps.apple.com/us/app/wireguard/id1451685025?mt=12)
8. [Seashore](https://apps.apple.com/us/app/seashore/id1448648921?mt=12)

## Experimental 

1. [Intel Power Gadget](https://software.intel.com/en-us/articles/intel-power-gadget-20)
2. [Xee^3](https://theunarchiver.com/xee)
3. [Scrivner3](https://www.literatureandlatte.com/scrivener/overview) (M1 Optimized)
4. [Descript](https://www.descript.com)
5. [Aeon Timeline 2](https://www.aeontimeline.com)
7. [Microsoft Default Mail Setter App](https://support.microsoft.com/en-us/help/4483875/outlook-for-mac-support-utilities)
8. [Fire Alpaca](https://firealpaca.com/)
9. IDE: [PyCharm CE](https://www.jetbrains.com/pycharm/)
10. Streaming:[OBS](https://obsproject.com/)
11. [qBitTorrent](https://www.qbittorrent.org/)
12. [MalwarebytesMac](https://www.malwarebytes.com/mac/)
13. [Macs Fan Control](https://crystalidea.com/macs-fan-control/download)

## Video Conference

1. [Skype](https://www.skype.com/en/get-skype/)
2. [Zoom US](https://zoom.us) (M1 Optimized)
3. [~~Blue Jeans~~](https://www.bluejeans.com/downloads)

(I hate all the others so I'll only install them if I need them, then quickly uninstall them.)

## Considering 
1. [Paw API](https://paw.cloud/) vs. [Postman](https://www.postman.com/)
3. [Discord](https://discordapp.com/download)
4. ~~[Phiewer](https://phiewer.com)~~
5. [DBeaver](https://dbeaver.io/) or ~~[Navicat](https://customer.navicat.com/)~~ (expensive)
6. [Witch Switcher](https://manytricks.com/witch/)
7. [Microsoft Edge](https://www.microsoft.com/en-us/edge/) 
8. [Lossless-cut](https://github.com/mifi/lossless-cut)
9. [Pure Ref](https://www.pureref.com/)
10. [Element (Riot IM)](https://element.io/get-started)
11. [VLC Media Player](https://www.videolan.org/vlc/) (M1 Optimized)

## Drivers
1. [Marble Mouse Logictech](https://www.logitech.com/en-us/product/trackman-marble-business) Driver ([Logitech Control Center](https://support.logi.com/hc/en-us/articles/360025297833))
2. [xbox360 Controller Driver](https://github.com/360Controller/360Controller/releases)
3. [Wacom Driver](https://www.wacom.com/en-us/support/product-support/drivers)

## M1 compatible
Check this [website](https://isapplesiliconready.com/for/m1)

---

# Fonts
[Google Garamond](https://fonts.google.com/specimen/EB+Garamond)

---

#### Sonoma Screensaver location

`/Library/Application Support/com.apple.idleassetsd/Customer/4KSDR240FPS`

---

## Post Install Textmate Script 
```bash
mkdir -p ~/Library/Application\ Support/TextMate/Bundles
cd ~/Library/Application\ Support/TextMate/Bundles
git clone https://github.com/crystal-lang-tools/Crystal.tmbundle.git
```
