# Tide configuration wiki: https://github.com/IlanCosman/tide/wiki/Configuration
# example config:
#   YouTube: https://www.youtube.com/watch?v=8FIc7nXyZUI
#   Github: https://github.com/Axlefublr/dotfiles/blob/c810106a6f64d5ef374f8fb4b37fb67f0bcc37ea/fish/config.fish


### Unicode icons ###
# Online font decoder: https://fontdrop.info/
# Used font: ~/Library/Fonts/mesloLGS_NF_regular.ttf

# /:            \ue0ba
# negative /:   \ue0bc
# \:            \ue0be
# negative \:   \ue0b8
# >:            \ue0b0
# > slim:       \ue0b1
# <:            \ue0b2
# < slim:       \ue0b3
# docker:       \ue650
# github        \ue65b
# git           \ue65d
# branch        \ufb2b

set --global tide_character_icon '><>'

# tide prompt configuration
set --global tide_prompt_pad_items true
set --global tide_prompt_add_newline_before false

set --global tide_left_prompt_separator_diff_color # no value means vertical separator
set --global tide_left_prompt_prefix \ue0ba
set --global tide_left_prompt_suffix \ue0b0
set --global tide_left_prompt_items private_mode pwd context shlvl git newline character

set --global tide_right_prompt_separator_diff_color # no value means vertical separator
set --global tide_right_prompt_prefix \ue0ba
set --global tide_right_prompt_suffix #\ue0bc
set --global tide_right_prompt_items status cmd_duration context jobs direnv node virtual_env java gcloud aws docker distrobox toolbox nix_shell
# set --global tide_right_prompt_items status cmd_duration context jobs direnv node virtual_env rustc java php pulumi chruby go gcloud kubectl distrobox toolbox terraform aws nix_shell crystal elixir

# tide item configuration
set --global tide_git_icon \ufb2b