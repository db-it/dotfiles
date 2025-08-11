alias cd..="cd .."

# Restart logitech daemon
alias logirestart="launchctl stop com.logitech.manager.daemon"

# Bamboo Specs deployment
alias deployspecs="mvn test && mvn -Ppublish-specs -Dbamboo.url=(cat ~/.secrets/bamtwo_url) -Dbamboo.token=(cat ~/.secrets/bamtwo_pat)"

# Firefox profile manager
alias firepm="/Applications/Firefox.app/Contents/MacOS/firefox -ProfileManager"


# Git

# git delete branch force
abbr --add gbd --position command git branch -D

# git commit message
abbr --add gc --position command --set-cursor="%" git commit -m '"%"'
abbr --add gcf --position command --set-cursor="%" git commit --fixup '%'
abbr --add gira --position command --set-cursor="%" git rebase -i --autosquash '%'

alias gst='git status'
alias gaa='git add -A'
alias gap='git add -p'
alias gco='git checkout'
alias gb='git branch'
alias gs='git stash'
# alias gcf='git commit --fixup '
# alias gira='git rebase -i --autosquash '
alias gd='git diff'
alias gdc='git diff --cached'

# JDK

abbr --add setjdk17 --position command set -gx JAVA_HOME (/usr/libexec/java_home -v 17)


# docker
abbr --add drun --position command docker run --rm -it
abbr --add dlog --position command docker logs -f -n 1000
abbr --add drune --position command docker run --rm -it --entrypoint bash
abbr --add dex --position command --set-cursor="%" docker exec -it
abbr --add dexb --position command --set-cursor="%" docker exec -it '%' bash

# homebrew

abbr --add brucommon --position command brew upgrade --cask --greedy --no-quarantine 1password 1password-cli banking-4 bettertouchtool burp-suite chatgpt dbeaver-community dropbox enpass gimp google-cloud-sdk google-chrome istat-menus loop maccy nextcloud raspberry-pi-imager syntax-highlight temurin@11 temurin@17 temurin@21 threema@beta viscosity
abbr --add brubrowser --position command brew upgrade --cask --greedy --no-quarantine arc firefox
abbr --add brudev --position command brew upgrade --cask --greedy --no-quarantine intellij-idea pycharm-ce
