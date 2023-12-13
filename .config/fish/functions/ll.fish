# Overrides: /usr/local/Cellar/fish/3.6.1/share/fish/functions/ll.fish
function ll --wraps ls --description "List all contents of directory using long format"
    ls -ohAF $argv
end