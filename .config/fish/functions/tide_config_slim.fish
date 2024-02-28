# Tide configuration wiki: https://github.com/IlanCosman/tide/wiki/Configuration
# example config:
#   YouTube: https://www.youtube.com/watch?v=8FIc7nXyZUI
#   Github: https://github.com/Axlefublr/dotfiles/blob/c810106a6f64d5ef374f8fb4b37fb67f0bcc37ea/fish/config.fish
#
#
#
### Unicode icons ###
# Online font decoder: https://fontdrop.info/
# Used font: ~/Library/Fonts/mesloLGS_NF_regular.ttf
#
# Get code point of unicode character
# echo -n "😊" |              # -n ignore trailing newline                     \
# iconv -f utf8 -t utf32be |  # UTF-32 big-endian happens to be the code point \
# xxd -p |                    # -p just give me the plain hex                  \
# sed -r 's/^0+/0x/' |        # remove leading 0's, replace with 0x            \
# xargs printf 'U+%04X\n'
# oneliner:
# echo -n "😊" | iconv -f utf8 -t utf32be | xxd -p | sed -r 's/^0+/0x/' | xargs printf 'U+%04X\n'
#
#
# /                     \ue0ba
# negative /            \ue0bc
# \                     \ue0be
# negative \            \ue0b8
# >                     \ue0b0
# > slim                \ue0b1
# <                     \ue0b2
# < slim                \ue0b3
#
# apple                \uF179
# docker:               \ue650
# git (letters)        \uF1D3
# git (diamond)         \ue65d
# git branch            \ufb2b
# github                \ue65b
# directory            \uF07C
# directory home       \uF015
# hourglass            \uF252
#
#
## !!! These settings are made for tide v6
#
# tide configure --auto --style=Lean --prompt_colors='True color' --show_time=No --lean_prompt_height='Two lines' --prompt_connection=Disconnected --prompt_spacing=Compact --icons='Many icons' --transient=Yes


# ATTENTION:
# The status item only shows up, if the exit code is greater than 1


function tide_config_slim --description "Set variables for a slim fish tide config"

    set --global tide_character_icon '><> '

    # tide prompt configuration
    set --global tide_prompt_pad_items true
    set --global tide_prompt_add_newline_before false
    set --global tide_prompt_transient_enabled true

    set --global tide_left_prompt_separator_diff_color # no value means vertical separator
    set --global tide_left_prompt_prefix
    set --global tide_left_prompt_suffix
    # set --global tide_left_prompt_items os private_mode pwd context shlvl git status newline character
    set --global tide_left_prompt_items private_mode pwd context shlvl git status character

    set --global tide_right_prompt_separator_diff_color # no value means vertical separator
    set --global tide_right_prompt_prefix
    set --global tide_right_prompt_suffix
    set --global tide_right_prompt_items

    # tide item configuration
    set --global tide_git_icon \ufb2b
    set --global tide_os_icon \uF179
    set --global tide_pwd_icon \uF07C
    set --global tide_pwd_icon_home \uF015
    set --global tide_cmd_duration_icon \uF252
    set --global tide_homebrew_icon \UF1116
    set --global tide_homebrew_color FF8324
    set --global tide_homebrew_bg_color normal

    # remove time
    set --global tide_time_format
end
