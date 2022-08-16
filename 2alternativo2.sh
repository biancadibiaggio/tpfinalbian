[ ! -f $1 ] && echo "Archivo no encontrado" && exit 1

   cat $1 | grep -o [A-Za-z][A-Za-z][A-Za-z][A-Za-z]'[A-Za-z]'* | sort | uniq -ci | sort -r | head -n 10
