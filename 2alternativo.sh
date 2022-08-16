#!/bin/bash
[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1
for palabra in $(cat $1)
do
  palabraDespejada=$(echo $palabra | tr -d ['.'','';''¿''´''?''!''¡'])
  if [[ $(($(echo $palabraDespejada | wc -m)-1)) -ge 4 ]]
  then
    cont=0
    for word in $(cat $1)
    do
    wordDespejada=$(echo $word | tr -d ['.'','';''¿''´''?''!''¡'])
    if [[ $palabraDespejada = $wordDespejada ]]
    then
      cont=$(($cont+1))
    fi
    done
    echo $cont $palabraDespejada >> temp.txt
   fi
done
#cuando salimos del for ya tenemos el archivo temp  que tiene dos columnas
#donde la primera tiene la cantidad de veces que aparece la palabra en el
#archivo que se le paso como argumento y en la segunda la palabra
#ahora necesitamos ordenarlo de mayor a menor
 sort -g temp.txt > orden.txt
 cat orden.txt | uniq > ordenlisto.txt
 tail -10 ordenlisto.txt
 rm temp.txt
