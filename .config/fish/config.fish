set -gx EDITOR vim
# https://help.ubuntu.com/community/Locale#List_current_settings
set -gx LANG de_DE.UTF-8
# this sets Git lang to en
set -gx LC_MESSAGES en_US.UTF-8


# nice light cyan color instead of dark blue
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# Theme configuration
set -g theme_display_date no
set -g theme_date_format "+ %H:%M:%S"
set -g theme_show_exit_status yes
#set -g theme_color_scheme dark

# Plugin configuration
# change key sequence of sudope to ALT+s
set -g sudope_sequence \u201A

# Environment variables
set -gx JAVA_HOME (/usr/libexec/java_home -v 11)
# set -gx MAVEN_COLOR true

# add system bin to PATH
# set -gx PATH /usr/local/sbin $PATH

# Homebrew
set -gx HOMEBREW_NO_ANALYTICS 1
# do not cleanup after install
# set -gx HOMEBREW_NO_INSTALL_CLEANUP 1
# Tell homebrew to not autoupdate every single time I run it (just once a week).
# set -gx HOMEBREW_AUTO_UPDATE_SECS=604800

# pyenv
pyenv init - | source

# Python: Add user site bin directory to PATH
set -gx PATH "$(python3 -m site --user-base)/bin" $PATH

## gcloud
# Set gcloud Python version. gcloud actually supports Python 3.5-3.8
set -gx CLOUDSDK_PYTHON /usr/local/bin/python3.8

# nvm
set -gx NVM_DIR ~/.nvm
# change color
set -gx NVM_COLORS "cYMre" # alternative: rYGce

# vscode: add vscode to PATH to enable vscode cli
set -gx PATH $PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# enable shell command completion for gcloud
# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.fish.inc
# add the Google Cloud SDK command line tools to your $PATH.
# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
