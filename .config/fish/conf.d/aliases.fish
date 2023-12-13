alias cd..="cd .."

# Restart logitech daemon
alias logirestart="launchctl stop com.logitech.manager.daemon"

# Bamboo Specs deployment
alias deployspecs="mvn test && mvn -Ppublish-specs -Dbamboo.url=(cat ~/.secrets/bamtwo_url) -Dbamboo.token='(cat ~/.secrets/bamtwo_pat)'"

# Firefox profile manager
alias firepm="/Applications/Firefox.app/Contents/MacOS/firefox-bin -ProfileManager"


# Git

# git delete branch force
abbr --add gbd --position command git branch -D

# git commit message
abbr --add gc --position command --set-cursor="%" git commit -m '"%"'

alias gst='git status'
alias gaa='git add -A'
alias gap='git add -p'
alias gco='git checkout'
alias gb='git branch'
alias gs='git stash'
alias gcf='git commit --fixup '
alias gira='git rebase -i --autosquash '
alias gd='git diff'
alias gdc='git diff --cached'


# docker
abbr --add dr --position command docker run --rm -it 
