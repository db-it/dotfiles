function ave --argument-names envname --description 'Activate a Python virtual environment. Default envname is "venv"'
    if test -z "$envname"
        set envname "venv"
    end

    source $envname/bin/activate.fish
    if [ "$status" -eq 0 ]
        echo "Activated $envname"
    end
end
