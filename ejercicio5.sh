#!/bin/bash

#El objetivo de este archivo es, a partir de recibir como argumento un archivo, contar la cantidad de líneas en blanco.

#ESta primera linea analiza que lo que se le pase como argumento sea un archivo
# de texto

  [ ! -f $1 ] && echo "Archivo inexistente, intente nuevamente" && exit 1


   total_lineas=$(cat $1 | wc -l)
   lineas_con_contenido=$(cat  $1 | grep . | wc -l)

   total_lineas_blanco=$((total_lineas-lineas_con_contenido))

   echo La cantidad de líneas en blanco es $total_lineas_blanco
