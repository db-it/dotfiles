function _tide_item_homebrew
    set --function outdated_formulas_count $(brew outdated --quiet | count)
    set --function outdated_casks_count $(brew outdated --cask --greedy --quiet | count)

   _tide_print_item "homebrew" $tide_homebrew_icon' ' "$outdated_formulas_count|$outdated_casks_count"
end
