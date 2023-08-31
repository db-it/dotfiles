
function cd --description "Change directory and run nvm use if a .nvmrc is present"
    set cd_args ~
    if count $argv > /dev/null
        set cd_args $argv
    end
    builtin cd $cd_args
    if test -e .nvmrc
        nvm use
    end
end


function wtf --description "Print which and --version output for the given command"
    for arg in $argv
        echo $arg: (which $arg)
        echo $arg: (sh -c "$arg --version")
    end
end


function cdff --description "cd's into the current front-most open Finder window's directory"
    cd (ff $argv)
end


function ff --description "prints the current path of the front-most open Finder window's directory"
    echo '
    tell application "Finder"
        if (1 <= (count Finder windows)) then
            get POSIX path of (target of window 1 as alias)
        else
            get POSIX path of (desktop as alias)
        end if
    end tell
    ' | osascript -
end
