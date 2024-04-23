function d12r_git_init --description 'Init Git directory and set author information'
    git init
    echo "git config --local user.name 'Dominik Büttner'"
    git config --local user.name "Dominik Büttner"
    echo "git config --local user.email 'mail@db-it.de'"
    git config --local user.email "mail@db-it.de"
end
