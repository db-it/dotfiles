function lfext --description 'List file extensions sorted by occurrence. Typical development paths are excluded.'
  find . -type f ! -path './.git/*' ! -path './target/*' ! -path './.idea/*' | rev | cut -d. -f1 | rev  | tr '[:upper:]' '[:lower:]' | sort | uniq --count | sort -rn
end
