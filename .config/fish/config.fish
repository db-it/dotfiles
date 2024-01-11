# ########## Notes ########## #
# $fisher_path is set in ~/.config/fish/conf.d/fisher_path.fish


set -gx EDITOR vim

# https://help.ubuntu.com/community/Locale#List_current_settings
set -gx LANG de_DE.UTF-8

# this sets Git lang to en
set -gx LC_MESSAGES en_US.UTF-8

# set colors for ls command, because default lists directory with a dark blue color
# run "man ls" for details
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# Theme configuration
fish_config theme choose d12r_dark
# set -g theme_display_date no
# set -g theme_date_format "+ %H:%M:%S"
# set -g theme_show_exit_status yes
#set -g theme_color_scheme dark

# Tide configuration
tide_config_light


# ########## Environment variables ########## #

# Python: Add user site bin directory to PATH
set -gx PATH "$(python3 -m site --user-base)/bin" $PATH


# ########## Plugin configuration ########## #
# Plugin sudope
# change key sequence of sudope to ALT+s
# set -g sudope_sequence \u201A


# nvm.fish 
# set default packages (unset: set -e nvm_default_packages)
set --universal nvm_default_packages npmrc ntl depcheck @forge/cli
# set default node version  (unset: set -e nvm_default_version)
set --universal nvm_default_version v20
