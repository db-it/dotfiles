function npip --description 'pip defining an extra index'
  echo "Using python: $(pyenv which python3)"
  echo ""
  if test "$argv[1]" = "install"
    python3 -m pip $argv[1] --extra-index-url "$(cat ~/.secrets/nextus_pypi_extra_index_url)" $argv[2..-1]
  else
    python3 -m pip $argv
  end
end
