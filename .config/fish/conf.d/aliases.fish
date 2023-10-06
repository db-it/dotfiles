alias cd..="cd .."
# alias ..="cd .."
# alias ...="cd ../.."
# alias ....="cd ../../.."


# Restart logitech daemon
alias logirestart="launchctl stop com.logitech.manager.daemon"

# Bamboo Specs deployment
alias deployspecs="mvn test && mvn -Ppublish-specs -Dbamboo.url=(cat ~/.secrets/bamtwo_url) -Dbamboo.token='(cat ~/.secrets/bamtwo_pat)'"

# Firefox profile manager
alias firepm="/Applications/Firefox.app/Contents/MacOS/firefox-bin -ProfileManager"


# Git
alias gst='git status'
alias gc='git commit'
alias gaa='git add -A'
alias gap='git add -p'
alias gco='git checkout'
alias gb='git branch'
alias gs='git stash'
alias gcf='git commit --fixup '
alias gira='git rebase -i --autosquash '
alias gd='git diff'
alias gdc='git diff --cached'
