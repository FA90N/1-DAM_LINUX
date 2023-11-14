#!/bin/bash

read -p "Dime un nombre:" nom
hora=$(date +"%Hh:%Mm:%Ss")
leer=$(cat datos.txt | grep -i $nom)
dia=$(date +"%d")
mes=$(date +"%B")
anio=$(date +"%Y")

if [ -z $leer ]
then
	read -p "Dime edad:" edad
	read -p "Dime su ciudad:" ciudad
	echo "$nom,$edad,$ciudad" >> datos.txt
else
	cortar=$(echo $leer | cut -d"," -f1)

	echo "Hola $cortar son las $hora y estamos a $dia de $mes de $anio"	
	
fi
