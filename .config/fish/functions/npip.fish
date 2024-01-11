function npip --description 'pip defining an extra index'
  if test "$argv[1]" = "install"
    pip3 $argv[1] --extra-index-url "$(cat ~/.secrets/nextus_pypi_extra_index_url)" "$argv[2..-1]"
  else
    pip3 "$argv"
  end
end
