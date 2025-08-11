function _homebrew_outdated
    set --function outdated_formulas_count $(brew outdated --quiet | count)
    set --function outdated_casks_count $(brew outdated --cask --greedy --quiet | count)

   printf "$outdated_formulas_count|Casks:$outdated_casks_count"
end
