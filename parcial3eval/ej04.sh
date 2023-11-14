#!/bin/bash

source funciones.sh

bien=0
mal=0
for linea in $(cat $1)
do

	ortografia $linea
	if [ "$opcion" == "si" ]
	then
		echo "La palabra $linea si es ortográticamente correcta"
		let bien++
	else
		echo "La palabra $linea no es ortográticamente correcta"
		let mal++
	fi

done
echo "Hay $bien palabras correctas y $mal palabras incorrectas"
