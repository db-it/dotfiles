function npip --description 'Pip defining an extra index'
  pip install --extra-index-url "(cat ~/.secrets/nextus_pypi_extra_index_url)" "$argv"
end

