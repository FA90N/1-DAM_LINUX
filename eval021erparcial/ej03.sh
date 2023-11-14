#!/bin/bash

read -p "Dime un usuario: " usuario

linea=$(cat /etc/passwd | cut -d":" -f1 | grep -i $usuario)
carpeta=$(ls /home/ | grep -i $usuario)

if [ -z $linea ]
then
	if [ -z $carpeta ]
	then
		echo "El usuario $usuario no esta de alta y tiene no carpeta"
		read -p "Quieres crearlo si o no: " respuesta
		opcion=$(echo $respuesta | tr [A-Z] [a-z])
		if [ $opcion == "si" ]
		then
			sudo useradd -m $usuario
		fi

	else
		echo "El usuario $usuario no esta de alta y tiene carpeta"
		read -p "Quieres crearlo si o no: " respuesta
		opcion=$(echo $respuesta | tr [A-Z] [a-z])
		if [ $opcion == "si" ]
		then
			sudo useradd $usuario
		fi
	fi

else
	if [ -z $carpeta ]
	then
		echo "El $usuario esta dado de alta y no tiene carpeta"
	else
		echo "El $usuario esta dado de alta y tiene carpeta"
	fi
fi
	


