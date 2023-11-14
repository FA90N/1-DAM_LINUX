#!/bin/bash

source funciones.sh

if [ "$1" == "terminar" ]
then

	generar

	tar -czf /home/dam16/examendeleyan.tgz examendeleyan.txt
	
	enviar 
	
else

	echo "Nada"
fi
