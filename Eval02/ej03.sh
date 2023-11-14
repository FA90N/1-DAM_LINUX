#!/bin/bash

cat datos.txt | tr -s "*" ":" >datosdef.txt
#cat datosdef.txt
esta=0
until [ $esta -gt 0 ]
do
	read -p "Dime una ciudad: " city
	esta=$(cat datosdef.txt | grep -i $city | wc -l)
done
cont=0
for linea in $(cat datosdef.txt | grep -i $city)
do
	nombre=$(echo $linea | cut -d":" -f2)
	edad=$(echo $linea | cut -d":" -f1)
	let cont++
	echo "$nombre tiene $edad años"
done

echo "Hay $cont personas de $city"
