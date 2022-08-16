#!/bin/bash


[ ! -f $1 ] && echo "No es un archivo regular" && exit 1


for palabra in $(cat $1)
do

	PalabraDespejada=$(echo $palabra | tr -d ['.'','';''¿''´''?''!''¡'])
	[[ $PalabraDespejada =~ ^[A-Z] ]] && echo $PalabraDespejada

done
