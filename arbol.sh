arbol() {
  local dir=${1:-.} nombre=$2 archivo
  for archivo in "$dir"/*; do
    [ -e "$archivo" ] || [ -L "$archivo" ] || continue
    if [ -d "$archivo" ]; then
      printf '%s├── %q\n' "$nombre" "${archivo##*/}"
      arbol "$archivo" "${nom}    "
    else
      printf '%s├── %q\n' "$nombre" "${archivo##*/}"
      
    fi
      
  done


}

arbol