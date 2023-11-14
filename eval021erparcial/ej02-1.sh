#!/bin/bash
suma=0
multiplicar=1
for linea in $(cat numeros.txt)
do	
	let suma=$suma+$linea	
	let multiplicar=$multiplicar*$linea

done

echo "La suma es: $suma"
echo "La multipliacion es: $multiplicar"
cat numeros.txt | sort -nr
