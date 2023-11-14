#!/bin/bash

source funciones.sh
rm res.txt 2>/dev/null
case $2 in

 	"sumar")
		sumar $1
		echo "El resultado de sumar es: $suma"
	;;

	"multiplicar")
		multiplicar $1
		echo "El resultado de multiplicar es: $mul"
	;;

	"factorial")
		factorial $1
		cat res.txt
		
	;;

	*)
		echo "No existe"
	;;
esac
