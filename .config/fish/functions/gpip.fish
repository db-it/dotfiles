function gpip --wraps pip --description 'pip defining an extra index'
  echo "Using python: $(pyenv which python3)"
  echo ""
  if not set --query PYENV_GLOBAL_PACKAGES
    echo "No global package directory defined. Create a directory for global pip packages and define the path to the directory in PYENV_GLOBAL_PACKAGES"
    return 1
  end
  if test "$argv[1]" = "install"
    python3 -m pip $argv[1] --target=$PYENV_GLOBAL_PACKAGES $argv[2..-1]
  else
    python3 -m pip $argv
  end
end
