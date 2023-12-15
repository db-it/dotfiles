function d12r_theme_dark --description 'd12r custom theme'
    set --local color_green_light    5fd787 # alternative: 5fd700
    set --local color_blue           5fafff # previous 0087ff
    set --local color_grey           9e9e9e
    set --local color_cyan_light     afffff # 87d7ff
    set --local color_yellow_dark    d7af00

    set -U fish_color_normal normal
    set -U fish_color_command $color_blue
    set -U fish_color_quote $color_yellow_dark
    set -U fish_color_redirection $color_green_light --bold
    set -U fish_color_end ff0000
    set -U fish_color_error brred
    set -U fish_color_param $color_cyan_light
    set -U fish_color_comment $color_grey
    set -U fish_color_match --background=brblue
    set -U fish_color_selection white --bold --background=brblack
    set -U fish_color_search_match bryellow --background=brblack
    set -U fish_color_history_current --bold
    set -U fish_color_operator brcyan
    set -U fish_color_escape brcyan
    set -U fish_color_cwd green
    set -U fish_color_cwd_root red
    set -U fish_color_valid_path --underline
    set -U fish_color_autosuggestion $color_grey
    set -U fish_color_user brgreen
    set -U fish_color_host normal
    set -U fish_color_cancel --reverse

    set -U fish_pager_color_background
    set -U fish_pager_color_prefix normal --bold --underline
    set -U fish_pager_color_progress brwhite --background=cyan
    set -U fish_pager_color_completion normal
    set -U fish_pager_color_description B3A06D --italics
    set -U fish_pager_color_selected_background --reverse
    set -U fish_pager_color_selected_prefix
    set -U fish_pager_color_selected_completion
    set -U fish_pager_color_selected_description
    set -U fish_pager_color_secondary_prefix
    set -U fish_pager_color_secondary_background
    set -U fish_color_keyword
    set -U fish_pager_color_secondary_description
    set -U fish_pager_color_secondary_completion
    set -U fish_color_host_remote
    set -U fish_color_option
end