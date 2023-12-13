function lfext --description "List file extensions sorted by occurrence. Typical development paths are excluded."
  find . -type f ! -path './.git/*' ! -path './target/*' ! -path './.idea/*' | rev | cut -d. -f1 | rev  | tr '[:upper:]' '[:lower:]' | sort | uniq --count | sort -rn
end


function wtf --description "Print which and --version output for the given command"
    for arg in $argv
        echo $arg: (which $arg)
        echo $arg: (sh -c "$arg --version")
    end
end