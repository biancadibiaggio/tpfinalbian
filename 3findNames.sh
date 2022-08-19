#!/bin/bash

function 3findNames {
[ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1


for palabra in $(cat $1)
do

	PalabraDespejada=$(echo $palabra | tr -d ['.'','';''¿''´''?''!''¡']) #Elimina los caracteres de la palabra
	[[ $PalabraDespejada =~ ^[A-Z] ]] && echo $PalabraDespejada

done
}

#Analiza si la primera letra es una mayúscula de la A a la Z
#En ese caso se muestra la palabra
