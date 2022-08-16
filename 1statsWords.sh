#!/bin/bash
file=$1  # la variable file  contiene el archivo

palabra_mas_corta=189919
palabra_mas_larga=0
suma_acumulada=0
cantidad_palabras=0 
long_palabra_temp=0

while [ read file ]; #cuando termina el archivo se vuelve false
do
	for word in $line;
	do
 			echo "entre"
	      long_palabra_temp=echo -n word | wc -c
	      if [ $long_palabra_temp -lt  $palabra_mas_corta ]
	      then 
		  palabra_mas_corta=$long_palabra_temp
	      fi 
 	      if [ $long_palabra_temp -gt $palabra_mas_larga ]
	      then 
		 palabra_mas_larga=$long_palabra_temp
	      fi
              suma_acumulada=$suma_acumulada + $long_palabra_temp
              cantidad_palabras++
	done
done < $1

promedio = $suma_acumulada / $cantidad_palabras
echo "El promedio de la longitud de las palabras es $promedio"
echo  "La longitud de la palabra mas larga es $palabra_mas_larga"
echo "La longitud de la palabra mas corta es $palabra_mas_corta"
