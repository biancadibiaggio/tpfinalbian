#!/bin/bash

function 2statsUsageWords {
[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1

for palabra in $(cat $1)
do

  if [[ $(($(echo $palabra | wc -m)-1)) -ge 4 ]]  #wc -m cuenta la cant de caracteres de la palabra
  then
    cont=0

    for word in $(cat $1)
    do
    if [[ $palabra = $word ]]
    then
      cont=$(($cont+1))
    fi
    done

    echo $cont $palabra >> temp.txt
   fi
done

#cuando salgo del for ya tengo el archivo temp que tiene dos columnas
#donde la primera tiene la cantidad de veces que aparece la palabra en el
#archivo que se le paso como argumento y en la segunda la palabra
#ahora necesito ordenarlo de mayor a menor

 sort -g temp.txt > orden.txt #lo ordena de menor a mayor según el número
 cat orden.txt | uniq > ordenlisto.txt #eliminan las líneas repetidas
 sort -r ordenlisto.txt > ordenalreves.txt #-r ordena al revés
 head ordenalreves.txt #muestra las 10 primeras lineas de un archivo
 rm temp.txt #eliminamos el temporal para que cuando lo volvamos a ejecutar este limpio
}
